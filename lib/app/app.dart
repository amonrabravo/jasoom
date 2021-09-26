import 'package:flutter/material.dart';
import 'package:jasoom/app/locator/locator.dart';
import 'package:jasoom/app/services/router_service.dart';

class JasoomApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final RouterService _routerService = locator<RouterService>();

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: "Jasoom",
      routeInformationParser: _routerService.router.defaultRouteParser(),
      routerDelegate: _routerService.router.delegate(),
      theme: ThemeData(
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
    );
  }
}
