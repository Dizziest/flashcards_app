import 'package:flashcards_app/flashcards_app.dart';
import 'package:flutter/material.dart';

import 'app_config.dart';
import 'app_params.dart';


class DevConfig extends AppConfig {

  DevConfig() : super(
    initialRoute: "/",
    params: AppParams("dev"),
  );

  @override
  Widget get initialWidget {
    return FlashcardsApp(router: router,);
  }
}