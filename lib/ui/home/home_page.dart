import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:intl/intl.dart';
import 'package:movies_flutter/ui/home/home_bloc.dart';
import 'package:movies_flutter/ui/home/models/home_ui_model.dart';
import 'package:movies_flutter/ui/home/models/movie_item.dart';
import 'package:movies_flutter/ui/movie_detail/movie_detail_page.dart';
import 'package:movies_flutter/ui/state.dart';
import 'package:movies_flutter/widgets/movie_widget.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  static const String routeName = '/home';

  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of<HomeBloc>(context, listen: false);

    return Scaffold(
      body: StreamBuilder<UiState<HomeUiModel>>(
        initialData: Loading(),
        stream: bloc.newState,
        builder: (context, snapshot) {
          return snapshot.data!.when(
            success: (data) {
              return Center(
                child: _HomePageContent(homeUiModel: data!),
              );
            },
            loading: () {
              return Center(child: CircularProgressIndicator());
            },
            error: (message) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Error loading movies. Please try again.'),
                    ElevatedButton(
                      onPressed: () => bloc.retry(),
                      child: Text('Retry'),
                    )
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class _HomePageContent extends StatelessWidget {
  const _HomePageContent({
    Key? key,
    required this.homeUiModel,
  }) : super(key: key);

  final HomeUiModel homeUiModel;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SafeArea(
            bottom: false,
            child: SizedBox(
              height: 16,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: _MainHeader(
              name: homeUiModel.name,
              imageUrl: homeUiModel.imageUrl,
            ),
          ),
          SizedBox(height: 16),
          _SectionHeader(
            headerTitle: 'Popular Movies',
            onPress: () {},
          ),
          SizedBox(
              height: 196,
              child: ListView.separated(
                shrinkWrap: true,
                padding: EdgeInsets.symmetric(horizontal: 8),
                scrollDirection: Axis.horizontal,
                itemCount: homeUiModel.popularMovies.length,
                separatorBuilder: (context, index) => SizedBox(
                  width: 8,
                ),
                itemBuilder: (context, index) {
                  return _PopularMoviesCarouselItem(
                    movie: homeUiModel.popularMovies[index],
                  );
                },
              )),
          /* SizedBox(height: 8),
          _SectionHeader(
            headerTitle: 'Tv Shows',
            onPress: () {},
          ),
          SizedBox(
            height: 284,
            child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 8),
              scrollDirection: Axis.horizontal,
              itemCount: homeUiModel.popularTvShows.length,
              itemBuilder: (context, index) {
                return MovieWidget(
                  homeUiModel.popularTvShows[index].id,
                  homeUiModel.popularTvShows[index].name,
                  homeUiModel.popularTvShows[index].poster,
                  DateFormat.yMMMMd('en_US')
                      .format(homeUiModel.popularTvShows[index].date),
                  onClickListener: (movieId) => Navigator.of(context).pushNamed(
                    MovieDetailPage.routeName,
                    arguments: MovieDetailParams(
                      homeUiModel.popularTvShows[index].id,
                      homeUiModel.popularTvShows[index].name,
                      homeUiModel.popularTvShows[index].backdrop,
                    ),
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) =>
                  SizedBox(width: 8),
            ),
          ), */
          _SectionHeader(
            headerTitle: 'Discover',
            onPress: () {},
          ),
          SizedBox(
              height: 284,
              child: ListView.separated(
                padding: EdgeInsets.symmetric(horizontal: 8),
                scrollDirection: Axis.horizontal,
                itemCount: homeUiModel.discoverMovies.length,
                itemBuilder: (context, index) {
                  return MovieWidget(
                    homeUiModel.discoverMovies[index].id,
                    homeUiModel.discoverMovies[index].name,
                    homeUiModel.discoverMovies[index].poster,
                    DateFormat.yMMMMd('en_US')
                        .format(homeUiModel.discoverMovies[index].date),
                    onClickListener: (movieId) =>
                        Navigator.of(context).pushNamed(
                      MovieDetailPage.routeName,
                      arguments: MovieDetailParams(
                        homeUiModel.discoverMovies[index].id,
                        homeUiModel.discoverMovies[index].name,
                        homeUiModel.discoverMovies[index].backdrop,
                      ),
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) =>
                    SizedBox(width: 8),
              )),
          SafeArea(
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
              SizedBox(height: 4),
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

  final MovieItemUiModel movie;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 348,
      child: GestureDetector(
        onTap: () => Navigator.of(context).pushNamed(
          MovieDetailPage.routeName,
          arguments: MovieDetailParams(
            movie.id,
            movie.name,
            movie.backdrop,
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
                  imageUrl: '${movie.backdropThumb}',
                  fit: BoxFit.cover,
                ),
              ),
              Positioned.fill(
                child: Container(
                  decoration: BoxDecoration(
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
                        style: TextStyle(
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
      padding: EdgeInsets.symmetric(horizontal: 16),
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
            child: Text('See More'),
          )
        ],
      ),
    );
  }
}
