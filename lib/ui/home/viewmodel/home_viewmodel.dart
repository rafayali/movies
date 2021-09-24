import 'package:movies_flutter/core/usecase.dart';
import 'package:movies_flutter/core/viewmodel.dart';
import 'package:movies_flutter/domain/home/load_home_usecase.dart';

import '../../../core/ui_state.dart';
import '../models/home_ui_model.dart';

class HomeViewModel extends ViewModel<UiState<HomeModel>> {
  HomeViewModel({
    required this.loadHomeUsecase,
  }) : super(const UiState.loading());

  final LoadHomeUsecase loadHomeUsecase;

  Future<void> load() async {
    final homeModel = await loadHomeUsecase.invoke(Nothing());
    if (homeModel.isValue) {
      setState(UiState.success(homeModel.asValue!.value));
    } else {
      setState(const UiState.error('Error loading movies data'));
    }
  }

  void retry() {
    setState(const UiState.loading());
    load();
  }
}
