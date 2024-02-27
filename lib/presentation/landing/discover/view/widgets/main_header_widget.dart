import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:movies_flutter/resources/resources.dart' as res;

class MainHeaderWidget extends StatelessWidget {
  const MainHeaderWidget({
    super.key,
    required String? name,
    required String? imageUrl,
    required VoidCallback onTapImage,
  })  : _name = name,
        _imageUrl = imageUrl,
        _onTapImage = onTapImage;

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
        imageUrl: _imageUrl,
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
