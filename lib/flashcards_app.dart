import 'package:flutter/material.dart';

import 'router/app_router.dart';

class FlashcardsApp extends StatelessWidget {
  final AppRouter router;

  const FlashcardsApp({
    super.key,
    required this.router,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routerConfig: router.router,
    );
  }
}