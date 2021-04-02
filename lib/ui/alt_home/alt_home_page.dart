import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:movies_flutter/ui/home/models/movie_item.dart';
import 'package:movies_flutter/ui/movie_detail/movie_detail_page.dart';
import 'package:movies_flutter/ui/state.dart';
import 'package:movies_flutter/widgets/movie_widget.dart';
import 'package:provider/provider.dart';

import 'alt_home_bloc.dart';

class AltHomePage extends StatelessWidget {
  static const String routeName = '/home';

  @override
  Widget build(BuildContext context) {
    final _bloc = Provider.of<AltHomeBloc>(context, listen: false);

    return Scaffold(
      body: StreamBuilder(
        initialData: Loading(),
        stream: _bloc.newState,
        builder: (context, snapshot) {
          if (snapshot.data is Loading) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }

          if (snapshot.data is Error) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Error loading movies. Please try again.'),
                  ElevatedButton(
                    onPressed: () => _bloc.retry(),
                    child: Text('Retry'),
                  )
                ],
              ),
            );
          }

          final _movies =
              (snapshot.data as Success<List<MovieItemUiModel>>).result!;

          return CustomScrollView(
            slivers: [
              SliverSafeArea(
                sliver: SliverToBoxAdapter(child: SizedBox()),
                bottom: false,
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 56,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset(
                        'assets/logo.svg',
                        width: 156,
                      ),
                      IconButton(
                        icon: Icon(Icons.nightlight_round),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
              SliverPadding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                sliver: SliverGrid(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      return MovieWidget(
                        _movies[index].id,
                        _movies[index].name,
                        _movies[index].poster,
                        DateFormat.yMMMMd('en_US').format(_movies[index].date),
                        onClickListener: (movieId) {
                          final _movie = _movies
                              .firstWhere((element) => element.id == movieId);
                          Navigator.pushNamed(
                            context,
                            MovieDetailPage.routeName,
                            arguments: MovieDetailParams(
                              _movie.id,
                              _movie.name,
                              _movie.backdrop,
                            ),
                          );
                        },
                      );
                    },
                    childCount: _movies.length,
                  ),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 0.58,
                    crossAxisSpacing: 2,
                    crossAxisCount: 2,
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
