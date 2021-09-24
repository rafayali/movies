import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:movies_flutter/domain/detail/entities/movie_detail.dart';
import 'package:movies_flutter/ui/movie_detail/view/movie_detail_page.dart';
import 'package:movies_flutter/widgets/movie_widget.dart';
import 'package:provider/provider.dart';

import '../../../core/ui_state.dart';
import '../viewmodel/home_viewmodel.dart';
import '../models/home_ui_model.dart';
import '../models/movie_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  static const String routeName = '/';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final HomeViewModel viewModel;
  @override
  void initState() {
    super.initState();

    viewModel = context.read();
    viewModel.load();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Selector<HomeViewModel, UiState<HomeModel>>(
        builder: (_, value, child) => value.when(
          success: (data) => Center(
            child: _HomePageContent(homeUiModel: data!),
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
}

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

class _MainHeader extends StatelessWidget {
  const _MainHeader({
    Key? key,
    required String name,
    required String imageUrl,
  })  : _name = name,
        _imageUrl = imageUrl,
        super(key: key);

  final String _name;

  final String _imageUrl;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Hello $_name',
                textAlign: TextAlign.start,
                style: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 4),
              Text(
                'Lets explore your favorite movies',
                textAlign: TextAlign.start,
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ],
          ),
        ),
        CachedNetworkImage(
          imageUrl: _imageUrl,
          imageBuilder: (context, imageProvider) => CircleAvatar(
            radius: 24,
            backgroundImage: imageProvider,
          ),
        ),
      ],
    );
  }
}

class _PopularMoviesCarouselItem extends StatelessWidget {
  const _PopularMoviesCarouselItem({
    Key? key,
    required this.movie,
  }) : super(key: key);

  final MovieItem movie;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 348,
      child: GestureDetector(
        onTap: () => Navigator.of(context).pushNamed(
          MovieDetailPage.routeName,
          arguments: MovieDetailParams(
            id: movie.id,
            title: movie.name,
            backdropUrl: movie.backdrop,
            type: Type.movie,
          ),
        ),
        child: Card(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          clipBehavior: Clip.antiAlias,
          child: Stack(
            children: [
              Positioned.fill(
                child: CachedNetworkImage(
                  imageUrl: movie.backdropThumb,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned.fill(
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.transparent, Colors.black54],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                ),
              ),
              Positioned.fill(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        movie.name,
                        style: Theme.of(context)
                            .textTheme
                            .headline6!
                            .copyWith(color: Colors.white),
                      ),
                      Text(
                        movie.genres ?? '',
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _SectionHeader extends StatelessWidget {
  const _SectionHeader({
    Key? key,
    required String headerTitle,
    VoidCallback? onPress,
  })  : _headerTitle = headerTitle,
        _onPress = onPress,
        super(key: key);

  final String _headerTitle;
  final VoidCallback? _onPress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            _headerTitle,
            style: Theme.of(context)
                .textTheme
                .headline6!
                .copyWith(fontWeight: FontWeight.bold),
          ),
          TextButton(
            onPressed: _onPress,
            child: const Text('See More'),
          )
        ],
      ),
    );
  }
}
