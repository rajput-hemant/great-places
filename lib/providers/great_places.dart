import 'dart:io';

import 'package:flutter/material.dart';
import 'package:great_places/helpers/db_helper.dart';

import '../models/place.dart';

class GreatPlaces with ChangeNotifier {
  List<Place> _items = [];
  List<Place> get items {
    return [..._items];
  }

  void addPlace(String title, File image) {
    final newPlace = Place(
      id: DateTime.now().toString(),
      title: title,
      image: image,
      location: null,
    );
    _items.add(newPlace);
    notifyListeners();
    DBHelper.insert('user_places', {
      'id': newPlace.id,
      'title': newPlace.title,
      'image': newPlace.image.path,
    });
  }

  Future<void> fetchAndSetPlaces() async {
    final dataList = await DBHelper.getData('user_places');
    _items = dataList
        .map((item) => Place(
              id: item['id'],
              title: item['title'],
              image: File(item['image']),
              location: null,
            ))
        .toList();
    notifyListeners();
  }
}
