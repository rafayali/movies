import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:movies_flutter/domain/detail/entities/movie_detail.dart';
import 'package:movies_flutter/domain/search/entities/search_movies_entities.dart';
import 'package:movies_flutter/l10n/app_localizations.dart';
import 'package:movies_flutter/ui/landing/search/models/search_models.dart';
import 'package:movies_flutter/ui/landing/search/viewmodel/search_viewmodel.dart';
import 'package:movies_flutter/ui/movie_detail/view/movie_detail_page.dart';
import 'package:movies_flutter/utils/constants.dart';
import 'package:provider/provider.dart';

part 'widgets/search_item_widget.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage>
    with AutomaticKeepAliveClientMixin<SearchPage> {
  late final SearchViewModel viewModel;

  final _textEditingController = TextEditingController();

  bool _showClearButton = false;

  @override
  void initState() {
    super.initState();

    viewModel = context.read();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
              child: TextField(
                controller: _textEditingController,
                onChanged: (value) {
                  value.isEmpty
                      ? setState(() => _showClearButton = false)
                      : setState(() => _showClearButton = true);
                  viewModel.search(value);
                },
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search, size: 16),
                  suffixIcon: _showClearButton
                      ? IconButton(
                          onPressed: () {
                            _textEditingController.clear();
                            setState(() => _showClearButton = false);
                            viewModel.clear();
                          },
                          icon: const Icon(Icons.close_rounded),
                          iconSize: 16,
                          splashRadius: 16,
                        )
                      : null,
                  isDense: true,
                  hintText: AppLocalizations.of(context)!
                      .searchPageSearchTextFieldHint,
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
              child: Selector<SearchViewModel, SearchUiState>(
            builder: (context, value, child) => value.map(
              loading: (value) => const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [CircularProgressIndicator()],
              ),
              success: (value) => ListView.separated(
                itemBuilder: (context, index) => SearchItemWidget(
                  searchItem: value.items[index],
                  onPressed: () {
                    final args = value.items[index].maybeMap(
                      movie: (movie) => MovieDetailParams(
                        id: movie.id,
                        title: movie.name,
                        backdropUrl: movie.backdrop,
                        type: Type.movie,
                      ),
                      tvShow: (tvShow) => MovieDetailParams(
                        id: tvShow.id,
                        title: tvShow.name,
                        backdropUrl: tvShow.backdrop,
                        type: Type.tvShow,
                      ),
                      orElse: () {},
                    );
                    Navigator.of(context).pushNamed(
                      MovieDetailPage.routeName,
                      arguments: args,
                    );
                  },
                ),
                separatorBuilder: (context, index) => const SizedBox(height: 4),
                itemCount: value.items.length,
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              ),
              noResults: (value) =>
                  Center(child: Text(AppLocalizations.of(context)!.noResults)),
              searchForMovies: (value) => Center(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.search,
                        size: 64,
                        color: Colors.grey,
                      ),
                      Text(
                        AppLocalizations.of(context)!.searchPagePlaceholder,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            selector: (context, value) => value.state,
          )),
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
