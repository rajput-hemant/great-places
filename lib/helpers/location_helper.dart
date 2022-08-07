import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

const tomTomApiKey = 'lSAKM4Cs6KCrn3mQ7BjqwsSdyA9cmJUC';

class LocationHelper {
  static Widget generateLocationPreviewImage({
    required double latitude,
    required double longitude,
  }) {
    final location = LatLng(latitude, longitude);
    final map = FlutterMap(
      options: MapOptions(center: location),
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
}
