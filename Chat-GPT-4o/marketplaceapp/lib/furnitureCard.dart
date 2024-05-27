import 'package:flutter/material.dart';

class FurnitureCard extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String description;
  final double price;

  const FurnitureCard({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.description,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        contentPadding: const EdgeInsets.all(16.0),
        leading: Image.network(imageUrl, width: 50, height: 50),
        title: Text(name),
        subtitle: Text(description),
        trailing: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text('\$${price.toStringAsFixed(2)}'),
            const SizedBox(height: 4),
            const Icon(Icons.favorite_border),
          ],
        ),
      ),
    );
  }
}
