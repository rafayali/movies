part of 'discover_page.dart';

class _HomePageContent extends StatelessWidget {
  const _HomePageContent({
    Key? key,
    required this.homeUiModel,
  }) : super(key: key);

  final HomeModel homeUiModel;

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
            child: _MainHeader(
              name: homeUiModel.name,
              imageUrl: homeUiModel.imageUrl,
            ),
          ),
          const SizedBox(height: 16),
          _SectionHeader(
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
                  return _PopularMoviesCarouselItem(
                    movie: homeUiModel.popularMovies[index],
                  );
                },
              )),
          const SizedBox(height: 8),
          _SectionHeader(
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
          _SectionHeader(
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
