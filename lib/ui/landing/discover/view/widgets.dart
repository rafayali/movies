import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:movies_flutter/resources/resources.dart' as res;
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:movies_flutter/utils/constants.dart';

import '../../../../domain/detail/entities/movie_detail.dart';
import '../../../movie_detail/view/movie_detail_page.dart';
import '../models/movie_item.dart';

class SectionHeader extends StatelessWidget {
  const SectionHeader({
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
      child: SizedBox(
        height: 48,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              _headerTitle,
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            Visibility(
              visible: false,
              child: TextButton(
                onPressed: _onPress,
                child: Text(AppLocalizations.of(context)!.seeMoreButtonText),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class PopularMoviesCarouselItem extends StatelessWidget {
  const PopularMoviesCarouselItem({
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
                            .titleLarge!
                            .copyWith(color: Colors.white),
                      ),
                      Text(
                        movie.genres ?? emptyString,
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

class MainHeader extends StatelessWidget {
  const MainHeader({
    Key? key,
    required String? name,
    required String? imageUrl,
    required VoidCallback onTapImage,
  })  : _name = name,
        _imageUrl = imageUrl,
        _onTapImage = onTapImage,
        super(key: key);

  final String? _name;
  final String? _imageUrl;
  final VoidCallback _onTapImage;

  @override
  Widget build(BuildContext context) {
    final Widget avatar;

    if (_imageUrl == null) {
      avatar = CircleAvatar(
        radius: 24,
        child: Image.asset(res.Icons.icPngUser),
      );
    } else {
      avatar = CachedNetworkImage(
        imageUrl: _imageUrl!,
        imageBuilder: (context, imageProvider) => CircleAvatar(
          radius: 24,
          backgroundImage: imageProvider,
        ),
      );
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                AppLocalizations.of(context)!.discoverPageTitle(
                  _name ?? AppLocalizations.of(context)!.guestUser,
                ),
                textAlign: TextAlign.start,
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 4),
              Text(
                _name == null
                    ? AppLocalizations.of(context)!.discoverGuestUserDesc
                    : AppLocalizations.of(context)!.discoverLoggedInUserDesc,
                textAlign: TextAlign.start,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ],
          ),
        ),
        const SizedBox.square(dimension: 8),
        GestureDetector(
          onTap: _onTapImage,
          child: avatar,
        )
      ],
    );
  }
}
