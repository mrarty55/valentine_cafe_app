import 'package:flutter/material.dart';

import '../data/coffee_menu.dart';
import '../widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const GlobalAppBar(
        titleText: 'Menu',
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: ListView.builder(
          itemCount: coffeeMenu.length,
          itemBuilder: (context, index) {
            return MenuCard(
              coffee: coffeeMenu[index],
            );
          },
        ),
      ),
    );
  }
}
