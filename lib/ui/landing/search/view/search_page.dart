import 'package:flutter/material.dart';
import 'package:movies_flutter/ui/landing/search/models/search_models.dart';
import 'package:movies_flutter/ui/landing/search/viewmodel/search_viewmodel.dart';
import 'package:provider/provider.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage>
    with AutomaticKeepAliveClientMixin<SearchPage> {
  late final SearchViewModel viewModel;

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
              padding: const EdgeInsets.all(16),
              child: TextField(
                onChanged: (value) {
                  debugPrint(value);
                  viewModel.search(value);
                },
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  isDense: true,
                  hintText: 'Search Movies, TvShows and People',
                  border: OutlineInputBorder(
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
              loading: (value) => Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [CircularProgressIndicator()],
              ),
              success: (value) => ListView(
                padding: EdgeInsets.zero,
                children: value.items
                    .map((item) => Padding(
                          padding: const EdgeInsets.all(16),
                          child: Text(item.name),
                        ))
                    .toList(),
              ),
              noResults: (value) => const Center(child: Text('No Results')),
              searchForMovies: (value) => Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.search,
                      size: 64,
                      color: Colors.grey,
                    ),
                    Text('Search for your favorite movies'),
                  ],
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
