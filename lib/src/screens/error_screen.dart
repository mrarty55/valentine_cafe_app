import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../router/router_config.dart';
import '../widgets/widgets.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const GlobalAppBar(titleText: 'Error 404'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Error 404: Not Found'),
            FilledButton.icon(
              onPressed: () {
                context.go(homeRoute);
              },
              icon: const Icon(Icons.home),
              label: const Text('Go Home'),
            ),
          ],
        ),
      ),
    );
  }
}
