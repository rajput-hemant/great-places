import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

const tomTomApiKey = 'lSAKM4Cs6KCrn3mQ7BjqwsSdyA9cmJUC';

class LocationHelper {
  static Widget generateLocationPreviewImage(
      {required LatLng location, MapOptions? options}) {
    final map = FlutterMap(
      options: options ?? MapOptions(center: location, zoom: 16),
      layers: [
        TileLayerOptions(
          urlTemplate: "https://api.tomtom.com/map/1/tile/basic/main/"
              "{z}/{x}/{y}.png?key={apiKey}",
          additionalOptions: {"apiKey": tomTomApiKey},
        ),
        MarkerLayerOptions(
          markers: [
            Marker(
              point: location,
              builder: (BuildContext context) => const Icon(
                Icons.location_on,
                size: 35,
                color: Colors.red,
              ),
            ),
          ],
        ),
      ],
    );
    return map;
  }

  static Future<String> getPlaceAddress(LatLng location) async {
    final url =
        'https://api.tomtom.com/search/2/reverseGeocode/${location.latitude},${location.longitude}.JSON?key=$tomTomApiKey&language=en';
    final response = await http.get(Uri.parse(url));
    final addresses = json.decode(response.body)['addresses'];
    if (addresses == null || addresses.length == null) {
      return "Can't find a suitble address for the location";
    }
    final String address = addresses[0]['address']['freeformAddress'];

    return address;
  }
}

