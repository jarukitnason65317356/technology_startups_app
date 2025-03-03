import 'package:flutter/material.dart';
import '../models/entity.dart';

class EntityProvider with ChangeNotifier {
  final List<Entity> _entities = [];

  List<Entity> get entities => _entities;

  void addEntity(Entity entity) {
    _entities.add(entity);
    notifyListeners();
  }
}
