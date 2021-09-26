import 'package:jasoom/app/core/custom_base_view_model.dart';
import 'package:jasoom/app/locator/locator.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends BaseViewModel {
  final NavigationService navigationService = locator<NavigationService>();

  Future<void> init() async {}

  Future showDialog() async {}
}
