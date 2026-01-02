import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:movies_flutter/domain/detail/entities/movie_detail.dart';
import 'package:movies_flutter/ui/landing/discover/models/movie_item.dart';
import 'package:movies_flutter/ui/movie_detail/view/movie_detail_page.dart';
import 'package:movies_flutter/utils/constants.dart';

class PopularMovieWidget extends StatelessWidget {
  const PopularMovieWidget({super.key, required this.movie});

  final MovieItem movie;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 348,
      child: Material(
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        clipBehavior: Clip.antiAlias,
        child: Stack(
          children: [
            Positioned.fill(
              child: Ink.image(
                image: CachedNetworkImageProvider(movie.backdropThumb),
                fit: BoxFit.cover,
                child: InkWell(
                  onTap: () => Navigator.of(context).pushNamed(
                    MovieDetailPage.routeName,
                    arguments: MovieDetailParams(
                      id: movie.id,
                      title: movie.name,
                      backdropUrl: movie.backdrop,
                      type: Type.movie,
                    ),
                  ),
                ),
              ),
            ),
            IgnorePointer(
              child: Positioned.fill(
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.transparent, Colors.black],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                ),
              ),
            ),
            IgnorePointer(
              child: Positioned.fill(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        movie.name,
                        style: Theme.of(
                          context,
                        ).textTheme.titleLarge!.copyWith(color: Colors.white),
                      ),
                      Text(
                        movie.genres ?? emptyString,
                        style: const TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned.fill(
              child: Material(
                type: MaterialType.transparency,
                child: InkWell(
                  onTap: () => Navigator.of(context).pushNamed(
                    MovieDetailPage.routeName,
                    arguments: MovieDetailParams(
                      id: movie.id,
                      title: movie.name,
                      backdropUrl: movie.backdrop,
                      type: Type.movie,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
