import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:movies_flutter/ui/movie_detail/models/movie_detail_ui_model.dart';
import 'package:movies_flutter/ui/movie_detail/movie_detail_viewmodel.dart';
import 'package:provider/provider.dart';

import 'models/cast.dart';

class MovieDetailPage extends StatefulWidget {
  const MovieDetailPage({Key? key}) : super(key: key);

  static const routeName = '/detail';

  @override
  _MovieDetailPageState createState() => _MovieDetailPageState();
}

class _MovieDetailPageState extends State<MovieDetailPage> {
  late final MovieDetailViewModel _viewModel;

  @override
  void initState() {
    super.initState();
    _viewModel = context.read();

    _viewModel.events.listen((event) {});
  }

  @override
  Widget build(BuildContext context) {
    return Selector<MovieDetailViewModel, MovieDetailUiModel>(
      builder: (context, value, child) => MovieDetailContent(value),
      selector: (context, viewModel) => viewModel.state,
    );
  }
}

class MovieDetailContent extends StatelessWidget {
  final MovieDetailUiModel _movieDetailUiModel;

  const MovieDetailContent(this._movieDetailUiModel, {Key? key})
      : super(key: key);

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
                                  .headline5!
                                  .copyWith(fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Builder(builder: (context) {
                            if (_movieDetailUiModel.runtime == null ||
                                _movieDetailUiModel.releaseDate == null ||
                                _movieDetailUiModel.genre == null) {
                              return const Text('');
                            } else {
                              final year =
                                  _movieDetailUiModel.releaseDate!.year;
                              final genre = _movieDetailUiModel.genre!.first;
                              final minutes = _movieDetailUiModel.runtime! % 60;
                              final hours = _movieDetailUiModel.runtime! ~/ 60;
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
                    icon: const Icon(Icons.arrow_back),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
              ],
            ),
            Builder(builder: (context) {
              if (_movieDetailUiModel.rating == null) {
                return const SizedBox();
              } else {
                return _RatingWidget(_movieDetailUiModel.rating!);
              }
            }),
            Builder(builder: (context) {
              if (_movieDetailUiModel.description == null) {
                return const SizedBox();
              } else {
                return Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16, top: 8),
                  child: Text(
                    _movieDetailUiModel.description!,
                    style: Theme.of(context).textTheme.bodyText1,
                    textAlign: TextAlign.center,
                  ),
                );
              }
            }),
            Builder(builder: (context) {
              if (_movieDetailUiModel.cast == null) {
                return const SizedBox();
              } else {
                return _CastWidget(_movieDetailUiModel.cast!);
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

  const _CastWidget(this._cast);

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
          padding: const EdgeInsets.only(top: 8),
          child: SizedBox(
            height: 86,
            child: ListView.separated(
              padding: const EdgeInsets.only(left: 16, right: 16),
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
                      borderRadius: const BorderRadius.all(Radius.circular(56)),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    _cast[index].name,
                  ),
                ],
              ),
              separatorBuilder: (context, index) => const SizedBox(width: 16),
            ),
          ),
        ),
      ],
    );
  }
}

class _RatingWidget extends StatelessWidget {
  final double _rating;

  const _RatingWidget(this._rating);

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
                  .bodyText1!
                  .copyWith(color: const Color(0xfffdc432)),
            ),
            const SizedBox(
              width: 4,
            ),
            const Icon(
              Icons.star_rate_sharp,
              size: 16,
              color: Color(0xfffdc432),
            ),
            const Icon(
              Icons.star_rate_sharp,
              size: 16,
              color: Color(0xfffdc432),
            ),
            const Icon(
              Icons.star_rate_sharp,
              size: 16,
              color: Color(0xfffdc432),
            ),
            const Icon(
              Icons.star_rate_sharp,
              size: 16,
              color: Color(0xfffdc432),
            ),
            const Icon(
              Icons.star_rate_sharp,
              size: 16,
              color: Color(0xffa3a2a6),
            ),
          ],
        ),
      );
}
