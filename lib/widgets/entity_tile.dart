import 'package:flutter/material.dart';
import '../models/entity.dart';

class EntityTile extends StatelessWidget {
  final Entity entity;

  const EntityTile({Key? key, required this.entity}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: ListTile(
        title: Text(entity.name, style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text("Industry: ${entity.industry}\nProduct: ${entity.productName}\nTarget: ${entity.targetMarket}"),
      ),
    );
  }
}
