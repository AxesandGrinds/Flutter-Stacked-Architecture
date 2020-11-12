import 'package:stacked/stacked.dart';

class StreamExampleViewModel extends StreamViewModel<int> {

  String get title => 'This is the time since epoch in seconds \n $data';

  Stream<int> epochUpdatesNumbers() async* {
    while (true) {
      await Future.delayed(const Duration(seconds: 2));
      yield DateTime.now().millisecondsSinceEpoch;
    }
  }

  @override
  Stream<int> get stream => epochUpdatesNumbers();

}