import 'package:flutter/material.dart';
import 'package:jasoom/app/locator/locator.dart';
import 'package:jasoom/app/router/router.dart';
import 'package:jasoom/app/services/router_service.dart';
import 'package:stacked/stacked.dart';

class StartupViewModel extends BaseViewModel {
  final RouterService _routerService = locator<RouterService>();

  Future<void> init() async {
    WidgetsBinding.instance!.addPostFrameCallback((Duration duration) async {
      await navigateToHomeView();
    });
  }

  Future navigateToHomeView() async {
    await _routerService.router.push(
      HomeRoute(),
    );
  }
}
