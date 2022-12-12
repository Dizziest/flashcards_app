import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'di.config.dart';

import '../app_params.dart';

final getIt = GetIt.instance;

@InjectableInit()
Future<void> initDependency(AppParams params) async {
  getIt.registerSingleton(params);
  getIt.init(environment:params.environment,);
}