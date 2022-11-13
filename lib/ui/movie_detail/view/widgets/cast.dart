import 'package:flutter/material.dart';
import 'package:movies_flutter/domain/detail/entities/movie_detail.dart';

class CastWidget extends StatelessWidget {
  final List<Cast> _cast;

  const CastWidget(this._cast, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16, top: 16, right: 16),
          child: Text(
            'Cast',
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: SizedBox(
            height: 86,
            child: ListView.separated(
              padding: const EdgeInsets.only(left: 16, right: 16),
              scrollDirection: Axis.horizontal,
              itemCount: _cast.length,
              itemBuilder: (context, index) => Column(
                children: [
                  Container(
                    width: 56,
                    height: 56,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          _cast[index].avatarUrl,
                        ),
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(56)),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    _cast[index].name,
                  ),
                ],
              ),
              separatorBuilder: (context, index) => const SizedBox(width: 16),
            ),
          ),
        ),
      ],
    );
  }
}
