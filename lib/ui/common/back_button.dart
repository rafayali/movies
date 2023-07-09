import 'package:flutter/material.dart';

class MoviesBackButton extends StatelessWidget {
  const MoviesBackButton({
    super.key,
    required this.onPressed,
  });

  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        elevation: 4,
      ),
      child: const Icon(Icons.arrow_back),
    );
  }
}
