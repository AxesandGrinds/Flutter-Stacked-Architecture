import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:myapp/services/api.dart';
import 'package:myapp/services/counter_service.dart';
import 'package:myapp/services/post_service.dart';
import 'package:myapp/ui/views/posts/post-viewmodel.dart';
import 'package:stacked_services/stacked_services.dart';

final locator = GetIt.instance;

@injectableInit
void setupLocator() {
  locator.registerLazySingleton(() => NavigationService());
  locator.registerLazySingleton(() => DialogService());
  locator.registerLazySingleton(() => CounterService());
  locator.registerLazySingleton(() => PostService());
  locator.registerLazySingleton(() => Api());
  locator.registerLazySingleton(() => PostViewModel());
}