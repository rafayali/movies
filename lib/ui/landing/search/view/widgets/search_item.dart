part of '../search_page.dart';

class SearchItemWidget extends StatelessWidget {
  const SearchItemWidget({
    Key? key,
    required this.onPressed,
    required this.searchItem,
  }) : super(key: key);

  final SearchItem searchItem;

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final photo = searchItem.map(
      movie: (movie) => movie.poster,
      person: (person) => person.profilePicture,
      tvShow: (tvShow) => tvShow.poster,
    );

    final type = searchItem.map(
      movie: (movie) => 'Movie',
      tvShow: (tvShow) => 'Tv Show',
      person: (person) => 'Person',
    );

    final icon = searchItem.map(
      movie: (movie) => Icons.movie_outlined,
      tvShow: (tvShow) => Icons.tv_outlined,
      person: (person) => Icons.person_outline,
    );

    return RawMaterialButton(
      onPressed: onPressed,
      highlightElevation: 0,
      padding: const EdgeInsets.all(8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Card(
            margin: EdgeInsets.zero,
            elevation: 0,
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: CachedNetworkImage(
              imageUrl: photo ?? emptyString,
              width: 72,
              height: 96,
              fit: BoxFit.cover,
              placeholder: (_, __) => Container(color: Colors.grey),
              errorWidget: (_, __, ___) => Container(color: Colors.grey),
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: SizedBox(
              height: 96,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    searchItem.name,
                    style: Theme.of(context).textTheme.titleLarge,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Row(
                    children: [
                      Icon(icon),
                      const SizedBox(width: 4),
                      Text(type),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
