import 'package:flutter/material.dart';

class MoviesBackButton extends StatelessWidget {
  const MoviesBackButton({super.key, required this.onPressed});

  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return FilledButton.tonal(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(shape: const CircleBorder()),
      child: const Icon(Icons.arrow_back),
    );
  }
}
