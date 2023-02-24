import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

import '../data/constants.dart';
import '../models/coffee_model.dart';
import '../router/router_config.dart';

class MenuCard extends StatelessWidget {
  const MenuCard({super.key, required this.coffee});

  final Coffee coffee;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        borderRadius: BorderRadius.circular(10.0),
        onTap: () {
          context.push(
            coffeeRoute.replaceAll(':id', coffee.id),
          );
        },
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.network(
                coffee.imageUrl ?? defaultImageUrl,
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    coffee.name,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Text(
                    NumberFormat('₭#,###').format(coffee.price),
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                  Text(
                    coffee.description,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
