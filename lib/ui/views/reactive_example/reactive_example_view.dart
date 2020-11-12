import 'package:flutter/material.dart';
import 'package:myapp/ui/views/smart_widgets/double_increase_counter/double_increase_counter_view.dart';
import 'package:myapp/ui/views/smart_widgets/single_increase_counter/single_increase_counter_view.dart';

class ReactiveExampleView extends StatelessWidget {

  const ReactiveExampleView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          children: [
            SingleIncreaseCounterView(),
            SizedBox(width: 50),
            DoubleIncreaseCounterView()
          ],
        ),
      ),
    );
  }
}
  