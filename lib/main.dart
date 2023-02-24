import 'package:flutter/material.dart';

import 'src/router/router_config.dart';

void main() {
  runApp(const ValentineCafeApp());
}

class ValentineCafeApp extends StatelessWidget {
  const ValentineCafeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Valentine Cafe',
      theme: ThemeData.light(useMaterial3: true),
      routerConfig: routerConfig,
    );
  }
}
