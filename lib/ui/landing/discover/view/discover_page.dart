import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:movies_flutter/core/ui_state.dart';
import 'package:movies_flutter/domain/detail/entities/movie_detail.dart';
import 'package:movies_flutter/ui/movie_detail/view/movie_detail_page.dart';
import 'package:movies_flutter/widgets/movie_widget.dart';
import 'package:provider/provider.dart';

import '../viewmodel/home_viewmodel.dart';
import '../models/home_ui_model.dart';
import '../models/movie_item.dart';

part 'widgets.dart';
part 'content.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with AutomaticKeepAliveClientMixin<HomePage> {
  late final HomeViewModel viewModel;

  @override
  void initState() {
    super.initState();

    viewModel = context.read();
    viewModel.load();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return Scaffold(
      body: Selector<HomeViewModel, UiState<HomeModel>>(
        builder: (_, value, child) => value.when(
          success: (data) => Center(
            child: _HomePageContent(homeUiModel: data!),
          ),
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (message) => Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Error loading movies. Please try again.'),
                ElevatedButton(
                  onPressed: () => context.read<HomeViewModel>().retry(),
                  child: const Text('Retry'),
                )
              ],
            ),
          ),
        ),
        selector: (context, viewModel) => viewModel.state,
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
