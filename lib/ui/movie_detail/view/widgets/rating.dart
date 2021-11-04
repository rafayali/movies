part of '../movie_detail_page.dart';

class _RatingWidget extends StatelessWidget {
  final double _rating;

  const _RatingWidget(this._rating);

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.only(top: 8.0, left: 16, right: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _rating.toString(),
              style: Theme.of(context)
                  .textTheme
                  .bodyText1!
                  .copyWith(color: const Color(0xfffdc432)),
            ),
            const SizedBox(
              width: 4,
            ),
            const Icon(
              Icons.star_rate_sharp,
              size: 16,
              color: Color(0xfffdc432),
            ),
            const Icon(
              Icons.star_rate_sharp,
              size: 16,
              color: Color(0xfffdc432),
            ),
            const Icon(
              Icons.star_rate_sharp,
              size: 16,
              color: Color(0xfffdc432),
            ),
            const Icon(
              Icons.star_rate_sharp,
              size: 16,
              color: Color(0xfffdc432),
            ),
            const Icon(
              Icons.star_rate_sharp,
              size: 16,
              color: Color(0xffa3a2a6),
            ),
          ],
        ),
      );
}
