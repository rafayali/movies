import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:movies_flutter/domain/detail/entities/movie_detail.dart';
import 'package:movies_flutter/ui/movie_detail/viewmodel/movie_detail_viewmodel.dart';
import 'package:movies_flutter/utils/constants.dart';
import 'package:provider/provider.dart';

part 'widgets/rating.dart';
part 'widgets/cast.dart';
part 'widgets/movie_content.dart';
part 'widgets/person_content.dart';

class MovieDetailPage extends StatefulWidget {
  const MovieDetailPage({Key? key}) : super(key: key);

  static const routeName = '/detail';

  @override
  _MovieDetailPageState createState() => _MovieDetailPageState();
}

class _MovieDetailPageState extends State<MovieDetailPage> {
  late final MovieDetailViewModel _viewModel;

  @override
  void initState() {
    super.initState();
    _viewModel = context.read();

    _viewModel.load();
  }

  @override
  Widget build(BuildContext context) {
    return Selector<MovieDetailViewModel, MovieDetail>(
      builder: (context, value, child) => _MovieContent(value),
      selector: (context, viewModel) => viewModel.state,
    );
  }
}
