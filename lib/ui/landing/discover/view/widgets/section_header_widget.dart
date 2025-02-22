import 'package:flutter/material.dart';
import 'package:movies_flutter/l10n/app_localizations.dart';

class SectionHeaderWidget extends StatelessWidget {
  const SectionHeaderWidget({
    super.key,
    required String headerTitle,
    VoidCallback? onPress,
  })  : _headerTitle = headerTitle,
        _onPress = onPress;

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
