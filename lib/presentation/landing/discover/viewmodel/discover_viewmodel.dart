import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:movies_flutter/core/ui_state.dart';
import 'package:movies_flutter/core/usecase.dart';
import 'package:movies_flutter/domain/home/check_login_usecase.dart';
import 'package:movies_flutter/domain/home/load_home_usecase.dart';

import '../models/home_ui_model.dart';

class HomeViewModel extends ValueNotifier<UiState<HomeModel>> {
  HomeViewModel({
    required this.loadHomeUsecase,
    required this.checkLoginUsecase,
  }) : super(const UiState.loading());

  final LoadHomeUsecase loadHomeUsecase;
  final CheckLoginUsecase checkLoginUsecase;

  Future<void> load() async {
    final homeModel = await loadHomeUsecase.invoke(nothing);
    if (homeModel.isValue) {
      value = UiState.success(homeModel.asValue!.value);
    } else {
      value = const UiState.error('Error loading movies data');
    }
  }

  Future<void> refresh() async {
    final homeModel = await loadHomeUsecase.invoke(nothing);
    if (!homeModel.isValue) return;
    value = UiState.success(homeModel.asValue!.value);
  }

  void retry() {
    value = (const UiState.loading());
    load();
  }

  Future<bool> openProfile() async {
    final check = await checkLoginUsecase.invoke(nothing);
    if (check.isValue) {
      return check.asValue!.value;
    } else {
      return false;
    }
  }
}
