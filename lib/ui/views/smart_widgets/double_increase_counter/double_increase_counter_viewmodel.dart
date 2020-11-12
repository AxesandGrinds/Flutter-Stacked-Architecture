import 'package:myapp/app/locator.dart';
import 'package:myapp/services/counter_service.dart';
import 'package:stacked/stacked.dart';

class DoubleIncreaseCounterViewModel extends ReactiveViewModel {

    final _counterService = locator<CounterService>();
    int get counter => _counterService.counter;


    @override
  List<ReactiveServiceMixin> get reactiveServices => [_counterService];

  void updateCounter() {
      _counterService.doubleCounter();
      notifyListeners();
    }

}