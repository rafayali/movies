import 'package:flutter/material.dart';

class DialogPage<T> extends Page<T> {
  final bool barrierDismissible;
  final String? barrierLabel;
  final bool useSafeArea;
  final WidgetBuilder builder;

  const DialogPage({
    required this.builder,
    this.barrierDismissible = true,
    this.barrierLabel,
    this.useSafeArea = true,
    super.key,
    super.name,
    super.arguments,
    super.restorationId,
  });

  @override
  Route<T> createRoute(BuildContext context) => DialogRoute<T>(
        context: context,
        settings: this,
        builder: (context) => Dialog(
          child: builder(context),
        ),
        barrierDismissible: barrierDismissible,
        barrierLabel: barrierLabel,
        useSafeArea: useSafeArea,
      );
}
