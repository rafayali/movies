import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:movies_flutter/domain/detail/entities/movie_detail.dart';
import 'package:movies_flutter/ui/common/common.dart';
import 'package:movies_flutter/ui/movie_detail/viewmodel/movie_detail_viewmodel.dart';
import 'package:movies_flutter/utils/constants.dart';
import 'package:provider/provider.dart';

import 'widgets/cast.dart';
import 'widgets/rating.dart';

class MovieDetailPage extends StatefulWidget {
  const MovieDetailPage({super.key});

  static const routeName = '/detail';

  @override
  State<MovieDetailPage> createState() => _MovieDetailPageState();
}

class _MovieDetailPageState extends State<MovieDetailPage> {
  late final MovieDetailViewModel _viewModel = context.read();

  @override
  void initState() {
    super.initState();
    _viewModel.load();
  }

  @override
  Widget build(BuildContext context) {
    return Selector<MovieDetailViewModel, MovieDetail>(
      builder: (context, value, child) => MovieContent(value),
      selector: (context, viewModel) => viewModel.state,
    );
  }
}

class MovieContent extends StatelessWidget {
  final MovieDetail _movieDetailUiModel;

  const MovieContent(this._movieDetailUiModel, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ThemedAnnotatedRegion(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              AspectRatio(
                aspectRatio: 1,
                child: Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    Positioned.fill(
                      child: CachedNetworkImage(
                        imageUrl: _movieDetailUiModel.backdrop ?? emptyString,
                        fit: BoxFit.fitHeight,
                        errorWidget: (_, __, ___) =>
                            Container(color: Colors.grey),
                      ),
                    ),
                    Positioned.fill(
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Colors.transparent,
                                Theme.of(context).colorScheme.surface,
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
                                padding:
                                    const EdgeInsets.only(left: 16, right: 16),
                                child: Text(
                                  _movieDetailUiModel.title,
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineSmall!
                                      .copyWith(fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              const SizedBox(height: 8),
                              SizedBox(
                                height: 24,
                                child: Center(
                                  child: Builder(
                                    builder: (context) {
                                      if (_movieDetailUiModel.runtime == null ||
                                          _movieDetailUiModel.releaseDate ==
                                              null ||
                                          _movieDetailUiModel.genre == null) {
                                        return const Text(emptyString);
                                      } else {
                                        final year = _movieDetailUiModel
                                            .releaseDate!.year;
                                        final genre =
                                            _movieDetailUiModel.genre!.first;
                                        final minutes =
                                            _movieDetailUiModel.runtime! % 60;
                                        final hours =
                                            _movieDetailUiModel.runtime! ~/ 60;
                                        return Text(
                                          '$year • $genre • ${hours}h ${minutes}m',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyLarge,
                                          textAlign: TextAlign.center,
                                        );
                                      }
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SafeArea(
                      minimum: const EdgeInsets.only(top: 32),
                      child: MoviesBackButton(
                        onPressed: () => Navigator.pop(context),
                      ),
                    ),
                  ],
                ),
              ),
              Builder(builder: (context) {
                if (_movieDetailUiModel.rating == null) {
                  return const SizedBox();
                } else {
                  return RatingWidget(_movieDetailUiModel.rating!);
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
                      style: Theme.of(context).textTheme.bodyMedium,
                      textAlign: TextAlign.center,
                    ),
                  );
                }
              }),
              Builder(
                builder: (context) {
                  if (_movieDetailUiModel.cast == null) {
                    return const SizedBox();
                  } else {
                    return CastWidget(_movieDetailUiModel.cast!);
                  }
                },
              ),
              const SafeArea(
                top: false,
                child: SizedBox(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
