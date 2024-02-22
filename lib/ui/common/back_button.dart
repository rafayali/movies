import 'package:flutter/material.dart';

class MoviesBackButton extends StatelessWidget {
  const MoviesBackButton({
    super.key,
    required this.onPressed,
  });

  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton.filledTonal(
      onPressed: onPressed,
      icon: const Icon(Icons.arrow_back),
    );
  }
}
