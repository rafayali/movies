import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class MovieWidget extends StatelessWidget {
  final int movieId;
  final String coverArt;
  final String title;
  final String date;
  final Function(int movieId)? onClickListener;

  const MovieWidget(
    this.movieId,
    this.title,
    this.coverArt,
    this.date, {
    super.key,
    this.onClickListener,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (onClickListener != null) {
          onClickListener?.call(movieId);
        }
      },
      child: SizedBox(
        width: 156,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Card(
              elevation: 4,
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: CachedNetworkImage(
                width: 148,
                height: 210,
                imageUrl: coverArt,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 4),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8),
              child: Text(
                title,
                style: const TextStyle(fontWeight: FontWeight.bold),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 4, left: 8, right: 8),
              child: Text(
                date,
                textAlign: TextAlign.start,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
