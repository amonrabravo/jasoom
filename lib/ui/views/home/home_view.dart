import 'package:flutter/material.dart';
import 'package:jasoom/ui/views/account/account_view.dart';
import 'package:stacked/stacked.dart';

import './home_view_model.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () => HomeViewModel(),
      onModelReady: (HomeViewModel model) async {
        await model.init();
      },
      builder: (
        BuildContext context,
        HomeViewModel model,
        Widget? child,
      ) {
        return Scaffold(
          appBar: AppBar(),
          bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                  label: "Ana Sayfa", icon: Icon(Icons.home)),
              BottomNavigationBarItem(
                  label: "Hesabım", icon: Icon(Icons.person)),
              BottomNavigationBarItem(
                  label: "Diğer", icon: Icon(Icons.more_horiz)),
            ],
            onTap: (item) async {
              await model.navigationService.navigateToView(AccountView());
            },
          ),
          body: Center(
            child: Text(
              'HomeView',
            ),
          ),
        );
      },
    );
  }
}
