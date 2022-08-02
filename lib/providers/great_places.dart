import 'package:flutter/material.dart';

import '../models/place.dart';

class GreatPlaces with ChangeNotifier {
  final List<Place> _items = [];
  List<Place> get items {
    return [..._items];
  }
}
