import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/entity_provider.dart';
import '../widgets/entity_tile.dart';
import 'add_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final entityProvider = Provider.of<EntityProvider>(context);

    return Scaffold(
      appBar: AppBar(title: Text("Startup Directory")),
      body: ListView.builder(
        itemCount: entityProvider.entities.length,
        itemBuilder: (context, index) {
          return EntityTile(entity: entityProvider.entities[index]);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => AddPage()));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
