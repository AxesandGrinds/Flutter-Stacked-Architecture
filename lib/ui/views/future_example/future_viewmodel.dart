import 'package:stacked/stacked.dart';

class FutureExampleViewModel extends FutureViewModel<String> {

  Future<String> getDataFromServer() async {
    await Future.delayed(const Duration(seconds: 3));
    return 'this is fetched from everywhere';
  }

  @override
  Future<String> futureToRun() => getDataFromServer();

  @override
  void onError(error) {

  }
}