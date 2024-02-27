import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RatingWidget extends StatelessWidget {
  final double _rating;

  const RatingWidget(this._rating, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, left: 16, right: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            _rating.toStringAsPrecision(2),
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(color: const Color(0xfffdc432)),
          ),
          const SizedBox(
            width: 4,
          ),
          RatingBar.builder(
            initialRating: (_rating - 1) / 2,
            minRating: 1,
            maxRating: 10,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5,
            ignoreGestures: true,
            itemSize: 16,
            itemBuilder: (context, _) => const Icon(
              Icons.star,
              color: Colors.amber,
            ),
            onRatingUpdate: (value) {},
          )
        ],
      ),
    );
  }
}
