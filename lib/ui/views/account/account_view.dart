import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import './account_view_model.dart';

class AccountView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AccountViewModel>.reactive(
      viewModelBuilder: () => AccountViewModel(),
      onModelReady: (AccountViewModel model) async {
        await model.init();
      },
      builder: (
        BuildContext context,
        AccountViewModel model,
        Widget? child,
      ) {
        return Scaffold(
          body: Center(
            child: Text(
              'AccountView',
            ),
          ),
        );
      },
    );
  }
}
