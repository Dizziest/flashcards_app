import 'package:flutter/cupertino.dart';

import '../router/app_router.dart';
import 'app_params.dart';
import 'di/di.dart';

abstract class AppConfig {
  final String initialRoute;
  final AppParams params;

  late final AppRouter router;

  AppConfig({
    required this.initialRoute,
    required this.params,
  });

  Future<void> init() async {
    WidgetsFlutterBinding.ensureInitialized();
    await initDependency(params);
    router = AppRouter();
  }

  Widget get initialWidget;
}
