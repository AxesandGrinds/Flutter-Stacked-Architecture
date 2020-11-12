import 'package:myapp/ui/views/home/home_viewmode.dart';
import 'package:stacked/stacked.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
        builder: (context, model, child) => Scaffold(
          body: Center(
            child: Text(model.title),
          ),
        ),
        viewModelBuilder: () => HomeViewModel());
  }
}
