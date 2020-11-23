import 'package:flutter/material.dart';
import 'package:myapp/app/locator.dart';
import 'package:myapp/ui/views/home/home_view.dart';
import 'package:myapp/ui/views/partial_builds/partial_builds_view.dart';
import 'package:myapp/ui/views/reactive_example/reactive_example_view.dart';
import 'package:stacked_services/stacked_services.dart';
import 'app/router.gr.dart' as myRouter;

void main(){
  setupLocator();
  runApp(MyApp());
}


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      // initialRoute: myRouter.Routes.startUpView,
      // home: PartialBuildsView(),
      // home: ReactiveExampleView(),
      home: HomeView(),
      onGenerateRoute: myRouter.Router().onGenerateRoute,
      navigatorKey: locator<NavigationService>().navigatorKey,
    );
  }
}



