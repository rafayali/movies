part of '../movie_detail_page.dart';

class _MovieContent extends StatelessWidget {
  final MovieDetail _movieDetailUiModel;

  const _MovieContent(this._movieDetailUiModel, {Key? key}) : super(key: key);

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
                  imageUrl: _movieDetailUiModel.backdrop ?? emptyString,
                  height: 372,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  errorWidget: (_, __, ___) => Container(color: Colors.grey),
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
                          Builder(
                            builder: (context) {
                              if (_movieDetailUiModel.runtime == null ||
                                  _movieDetailUiModel.releaseDate == null ||
                                  _movieDetailUiModel.genre == null) {
                                return const Text('');
                              } else {
                                final year =
                                    _movieDetailUiModel.releaseDate!.year;
                                final genre = _movieDetailUiModel.genre!.first;
                                final minutes =
                                    _movieDetailUiModel.runtime! % 60;
                                final hours =
                                    _movieDetailUiModel.runtime! ~/ 60;
                                return Text(
                                  '$year • $genre • ${hours}h ${minutes}m',
                                  style: Theme.of(context).textTheme.bodyText1,
                                  textAlign: TextAlign.center,
                                );
                              }
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SafeArea(
                  child: ElevatedButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: const Icon(Icons.arrow_back),
                    style: ElevatedButton.styleFrom(
                      shape: const CircleBorder(),
                      primary: Colors.white,
                      onPrimary: Colors.black,
                      elevation: 4,
                    ),
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
