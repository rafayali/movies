import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:movies_flutter/app/router/router/movie_detail_route.dart';
import 'package:movies_flutter/core/ui_state.dart';
import 'package:movies_flutter/domain/detail/entities/movie_detail.dart';
import 'package:movies_flutter/presentation/landing/discover/models/home_ui_model.dart';
import 'package:movies_flutter/presentation/landing/discover/view/widgets/main_header_widget.dart';
import 'package:movies_flutter/presentation/landing/discover/view/widgets/popular_movie_widget.dart';
import 'package:movies_flutter/presentation/landing/discover/view/widgets/section_header_widget.dart';
import 'package:movies_flutter/presentation/landing/discover/viewmodel/discover_viewmodel.dart';
import 'package:movies_flutter/presentation/login/view/dialogs/login_dialog.dart';
import 'package:movies_flutter/presentation/landing/discover/view/widgets/movie_widget.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

const _sectionHeight = 292.0;

class DiscoverPage extends StatefulWidget {
  const DiscoverPage({super.key});

  @override
  State<DiscoverPage> createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage>
    with AutomaticKeepAliveClientMixin<DiscoverPage> {
  late final HomeViewModel viewModel = context.read();

  @override
  void initState() {
    super.initState();
    viewModel.load();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return Scaffold(
      body: Selector<HomeViewModel, UiState<HomeModel>>(
        builder: (_, value, child) => value.when(
          success: (data) => _HomePageContent(
            homeUiModel: data!,
            onTapHeader: () async {
              final canOpen = await viewModel.openProfile();

              if (context.mounted && !canOpen) {
                final loggedIn = await showLoginDialog(context);
                if (loggedIn) {
                  viewModel.refresh();
                }
              }
            },
          ),
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (message) => Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(AppLocalizations.of(context)!.errorLoadingMovies),
                ElevatedButton(
                  onPressed: () => context.read<HomeViewModel>().retry(),
                  child: Text(AppLocalizations.of(context)!.retryButtonText),
                )
              ],
            ),
          ),
        ),
        selector: (context, viewModel) => viewModel.state,
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}

class _HomePageContent extends StatelessWidget {
  const _HomePageContent({
    required this.homeUiModel,
    required this.onTapHeader,
  });

  final HomeModel homeUiModel;
  final VoidCallback onTapHeader;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SafeArea(
            bottom: false,
            child: SizedBox(height: 16),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: MainHeaderWidget(
              name: homeUiModel.name,
              imageUrl: homeUiModel.imageUrl,
              onTapImage: onTapHeader,
            ),
          ),
          const SizedBox(height: 16),
          SectionHeaderWidget(
            headerTitle: AppLocalizations.of(context)!.popularMoviesTitle,
            onPress: () {},
          ),
          SizedBox(
              height: 196,
              child: ListView.separated(
                shrinkWrap: true,
                padding: const EdgeInsets.symmetric(horizontal: 8),
                scrollDirection: Axis.horizontal,
                itemCount: homeUiModel.popularMovies.length,
                separatorBuilder: (context, index) => const SizedBox(width: 8),
                itemBuilder: (context, index) {
                  return PopularMovieWidget(
                    movie: homeUiModel.popularMovies[index],
                  );
                },
              )),
          const SizedBox(height: 8),
          SectionHeaderWidget(
            headerTitle: AppLocalizations.of(context)!.tvShowsTitle,
            onPress: () {},
          ),
          SizedBox(
            height: _sectionHeight,
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              scrollDirection: Axis.horizontal,
              itemCount: homeUiModel.popularTvShows.length,
              itemBuilder: (context, index) {
                final date = homeUiModel.popularTvShows[index].date;
                return MovieWidget(
                  homeUiModel.popularTvShows[index].id,
                  homeUiModel.popularTvShows[index].name,
                  homeUiModel.popularTvShows[index].poster,
                  date != null
                      ? DateFormat.yMMMMd().format(date)
                      : 'Not Available',
                  onClickListener: (movieId) => context.goNamed(
                    MovieDetailRoute.routeName,
                    pathParameters: {
                      'movieId': '${homeUiModel.popularTvShows[index].id}',
                    },
                    queryParameters: {
                      'title': homeUiModel.popularTvShows[index].name,
                      'backdropUrl': homeUiModel.popularTvShows[index].backdrop,
                      'type': Type.tvShow.value,
                    },
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) =>
                  const SizedBox(width: 8),
            ),
          ),
          SectionHeaderWidget(
            headerTitle: AppLocalizations.of(context)!.discoverTitle,
            onPress: () {},
          ),
          SizedBox(
            height: _sectionHeight,
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              scrollDirection: Axis.horizontal,
              itemCount: homeUiModel.discoverMovies.length,
              itemBuilder: (context, index) {
                return MovieWidget(
                  homeUiModel.discoverMovies[index].id,
                  homeUiModel.discoverMovies[index].name,
                  homeUiModel.discoverMovies[index].poster,
                  homeUiModel.discoverMovies[index].date == null
                      ? 'Not Available'
                      : DateFormat.yMMMMd()
                          .format(homeUiModel.discoverMovies[index].date!),
                  onClickListener: (movieId) => context.goNamed(
                    MovieDetailRoute.routeName,
                    pathParameters: {
                      'movieId': '${homeUiModel.discoverMovies[index].id}',
                    },
                    queryParameters: {
                      'title': homeUiModel.discoverMovies[index].name,
                      'backdropUrl': homeUiModel.discoverMovies[index].backdrop,
                      'type': Type.movie.value,
                    },
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) =>
                  const SizedBox(width: 8),
            ),
          ),
          const SizedBox(height: 16),
          const SafeArea(
            top: false,
            child: SizedBox(),
          ),
        ],
      ),
    );
  }
}
