import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../data/coffee_menu.dart';
import '../data/constants.dart';
import '../models/coffee_model.dart';
import '../widgets/app_bar.dart';

class CoffeeScreen extends StatefulWidget {
  final String idParam;

  const CoffeeScreen({super.key, required this.idParam});

  @override
  CoffeeScreenState createState() => CoffeeScreenState();
}

class CoffeeScreenState extends State<CoffeeScreen> {
  Coffee? coffee;

  bool hasData = true;

  @override
  void initState() {
    try {
      coffee =
          coffeeMenu.singleWhere((element) => element.id == widget.idParam);
    } catch (e) {
      if (e is StateError) {
        hasData = false;
      }
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GlobalAppBar(
        titleText: coffee?.name ?? 'Not Found',
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.share),
          ),
        ],
      ),
      body: hasData
          ? Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.network(coffee?.imageUrl ?? defaultImageUrl,
                          width: double.infinity,
                          height: 200,
                          fit: BoxFit.cover),
                    ),
                  ),
                  Text(
                    coffee?.name ?? "",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    NumberFormat('₭#,###').format(coffee?.price),
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    coffee?.description ?? "",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ],
              ),
            )
          : const Center(
              child: Text('Not Found'),
            ),
      bottomNavigationBar: hasData
          ? Padding(
              padding: const EdgeInsets.all(8.0),
              child: FilledButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.shopping_cart),
                  label: const Text('Add to order')),
            )
          : null,
    );
  }
}
