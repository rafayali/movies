import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:movies_flutter/core/ui_state.dart';
import 'package:movies_flutter/domain/detail/entities/movie_detail.dart';
import 'package:movies_flutter/ui/login/view/login_page.dart';
import 'package:movies_flutter/ui/movie_detail/view/movie_detail_page.dart';
import 'package:movies_flutter/widgets/movie_widget.dart';
import 'package:provider/provider.dart';

import '../viewmodel/discover_viewmodel.dart';
import '../models/home_ui_model.dart';
import 'widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with AutomaticKeepAliveClientMixin<HomePage> {
  late final HomeViewModel viewModel = context.read();

  @override
  void initState() {
    super.initState();

    viewModel.load();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    final navigator = Navigator.of(context);

    return Scaffold(
      body: Selector<HomeViewModel, UiState<HomeModel>>(
        builder: (_, value, child) => value.when(
          success: (data) => Center(
            child: _HomePageContent(
              homeUiModel: data!,
              onTapHeader: () async {
                final canOpen = await viewModel.openProfile();
                if (!canOpen) {
                  await navigator.pushNamed(LoginPage.routeName);
                }
              },
            ),
          ),
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (message) => Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Error loading movies. Please try again.'),
                ElevatedButton(
                  onPressed: () => context.read<HomeViewModel>().retry(),
                  child: const Text('Retry'),
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
    Key? key,
    required this.homeUiModel,
    required this.onTapHeader,
  }) : super(key: key);

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
            child: MainHeader(
              name: homeUiModel.name,
              imageUrl: homeUiModel.imageUrl,
              onTapImage: onTapHeader,
            ),
          ),
          const SizedBox(height: 16),
          SectionHeader(
            headerTitle: 'Popular Movies',
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
                  return PopularMoviesCarouselItem(
                    movie: homeUiModel.popularMovies[index],
                  );
                },
              )),
          const SizedBox(height: 8),
          SectionHeader(
            headerTitle: 'Tv Shows',
            onPress: () {},
          ),
          SizedBox(
            height: 284,
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
                  onClickListener: (movieId) => Navigator.of(context).pushNamed(
                    MovieDetailPage.routeName,
                    arguments: MovieDetailParams(
                      id: homeUiModel.popularTvShows[index].id,
                      title: homeUiModel.popularTvShows[index].name,
                      backdropUrl: homeUiModel.popularTvShows[index].backdrop,
                      type: Type.tvShow,
                    ),
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) =>
                  const SizedBox(width: 8),
            ),
          ),
          SectionHeader(
            headerTitle: 'Discover',
            onPress: () {},
          ),
          SizedBox(
              height: 284,
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
                    onClickListener: (movieId) =>
                        Navigator.of(context).pushNamed(
                      MovieDetailPage.routeName,
                      arguments: MovieDetailParams(
                        id: homeUiModel.discoverMovies[index].id,
                        title: homeUiModel.discoverMovies[index].name,
                        backdropUrl: homeUiModel.discoverMovies[index].backdrop,
                        type: Type.movie,
                      ),
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) =>
                    const SizedBox(width: 8),
              )),
          const SafeArea(
            top: false,
            child: SizedBox(),
          ),
        ],
      ),
    );
  }
}
