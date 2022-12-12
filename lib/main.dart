import 'package:flutter/material.dart';

import 'config/dev_config.dart';

void main() async {
  final config = DevConfig();
  await config.init();
  runApp(config.initialWidget);
}
