import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:movies_flutter/ui/movie_detail/models/movie_detail.dart';
import 'package:movies_flutter/ui/movie_detail/movie_detail_bloc.dart';
import 'package:movies_flutter/ui/state.dart';

import 'models/cast.dart';

class MovieDetailPage extends StatefulWidget {
  static const routeName = '/detail';

  final MovieDetailBloc _bloc;

  MovieDetailPage(this._bloc);

  @override
  _MovieDetailPageState createState() => _MovieDetailPageState();
}

class _MovieDetailPageState extends State<MovieDetailPage> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      initialData: widget._bloc.initialState,
      stream: widget._bloc.state,
      builder: (context, snapshot) {
        return MovieDetailContent(
          (snapshot.data as Success<MovieDetailUiModel>).result,
        );
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    widget._bloc.dispose();
  }
}

class MovieDetailContent extends StatelessWidget {
  final MovieDetailUiModel _movieDetailUiModel;

  MovieDetailContent(this._movieDetailUiModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              alignment: Alignment.topLeft,
              children: [
                CachedNetworkImage(
                  imageUrl: _movieDetailUiModel.backdrop,
                  height: 372,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.transparent,
                            Theme.of(context).backgroundColor,
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 16, right: 16),
                            child: Text(
                              _movieDetailUiModel.title,
                              style: Theme.of(context)
                                  .textTheme
                                  .headline5
                                  .copyWith(fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(height: 8),
                          Builder(builder: (context) {
                            if (_movieDetailUiModel.runtime == null ||
                                _movieDetailUiModel.releaseDate == null ||
                                _movieDetailUiModel.genre == null) {
                              return Text('');
                            } else {
                              final year = _movieDetailUiModel.releaseDate.year;
                              final genre = _movieDetailUiModel.genre.first;
                              final minutes = _movieDetailUiModel.runtime % 60;
                              final hours = _movieDetailUiModel.runtime ~/ 60;
                              return Text(
                                '$year • $genre • ${hours}h ${minutes}m',
                                style: Theme.of(context).textTheme.bodyText1,
                                textAlign: TextAlign.center,
                              );
                            }
                          }),
                        ],
                      ),
                    ),
                  ),
                ),
                SafeArea(
                  child: IconButton(
                    icon: Icon(Icons.arrow_back),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
              ],
            ),
            Builder(builder: (context) {
              if (_movieDetailUiModel.rating == null) {
                return SizedBox();
              } else {
                return _RatingWidget(_movieDetailUiModel.rating);
              }
            }),
            Builder(builder: (context) {
              if (_movieDetailUiModel.description == null) {
                return SizedBox();
              } else {
                return Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16, top: 8),
                  child: Text(
                    _movieDetailUiModel.description,
                    style: Theme.of(context).textTheme.bodyText1,
                    textAlign: TextAlign.center,
                  ),
                );
              }
            }),
            Builder(builder: (context) {
              if (_movieDetailUiModel.cast == null) {
                return SizedBox();
              } else {
                return _CastWidget(_movieDetailUiModel.cast);
              }
            }),
          ],
        ),
      ),
    );
  }
}

class _CastWidget extends StatelessWidget {
  final List<Cast> _cast;

  _CastWidget(this._cast);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16, top: 8, right: 16),
          child: Text(
            'Cast',
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 8),
          child: SizedBox(
            height: 86,
            child: ListView.separated(
              padding: EdgeInsets.only(left: 16, right: 16),
              scrollDirection: Axis.horizontal,
              itemCount: _cast.length,
              itemBuilder: (context, index) => Column(
                children: [
                  Container(
                    width: 56,
                    height: 56,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          _cast[index].avatarUrl,
                        ),
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(56)),
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(_cast[index].name, ),
                ],
              ),
              separatorBuilder: (context, index) => SizedBox(width: 16),
            ),
          ),
        ),
      ],
    );
  }
}

class _RatingWidget extends StatelessWidget {
  final double _rating;

  _RatingWidget(this._rating);

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.only(top: 8.0, left: 16, right: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _rating.toString(),
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  .copyWith(color: Color(0xfffdc432)),
            ),
            SizedBox(
              width: 4,
            ),
            Icon(
              Icons.star_rate_sharp,
              size: 16,
              color: Color(0xfffdc432),
            ),
            Icon(
              Icons.star_rate_sharp,
              size: 16,
              color: Color(0xfffdc432),
            ),
            Icon(
              Icons.star_rate_sharp,
              size: 16,
              color: Color(0xfffdc432),
            ),
            Icon(
              Icons.star_rate_sharp,
              size: 16,
              color: Color(0xfffdc432),
            ),
            Icon(
              Icons.star_rate_sharp,
              size: 16,
              color: Color(0xffa3a2a6),
            ),
          ],
        ),
      );
}

class MovieDetailParams {
  final int id;
  final String title;
  final String backdropUrl;

  MovieDetailParams(this.id, this.title, this.backdropUrl);
}
