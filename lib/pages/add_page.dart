import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/entity_provider.dart';
import '../models/entity.dart';

class AddPage extends StatelessWidget {
  final _nameController = TextEditingController();
  final _industryController = TextEditingController();
  final _productController = TextEditingController();
  final _targetController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Add Startup")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(controller: _nameController, decoration: InputDecoration(labelText: "Startup Name")),
            TextField(controller: _industryController, decoration: InputDecoration(labelText: "Industry")),
            TextField(controller: _productController, decoration: InputDecoration(labelText: "Product Name")),
            TextField(controller: _targetController, decoration: InputDecoration(labelText: "Target Market")),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final entity = Entity(
                  name: _nameController.text,
                  industry: _industryController.text,
                  productName: _productController.text,
                  targetMarket: _targetController.text,
                );
                Provider.of<EntityProvider>(context, listen: false).addEntity(entity);
                Navigator.pop(context);
              },
              child: Text("Add"),
            ),
          ],
        ),
      ),
    );
  }
}
