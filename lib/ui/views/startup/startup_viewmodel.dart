import 'package:myapp/app/locator.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:myapp/app/router.gr.dart';

class StartUpViewModel extends BaseViewModel {

  final NavigationService _navigationService = locator<NavigationService>();

  Future navigateToHome() async {
    await _navigationService.navigateTo(Routes.homeView);
  }


}