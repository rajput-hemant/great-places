import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

import '../helpers/location_helper.dart';
import '../models/place.dart';

class MapScreen extends StatefulWidget {
  static const routeName = '/map-screen';
  final bool isSelecting;

  const MapScreen({super.key, this.isSelecting = false});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  LatLng? _location;
  final PlaceLocation _initialLocation = const PlaceLocation(
    latitude: 37.422,
    longitude: -122.084,
  );
  void _selectLocation(LatLng location) {
    setState(() => _location = location);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Map')),
      body: LocationHelper.generateLocationPreviewImage(
        location: _location ??
            LatLng(
              _initialLocation.latitude,
              _initialLocation.longitude,
            ),
        options: MapOptions(
          center: _location ??
              LatLng(
                _initialLocation.latitude,
                _initialLocation.longitude,
              ),
          zoom: 16,
          onTap: (_, point) =>
              widget.isSelecting ? _selectLocation(point) : null,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:
            _location == null ? null : () => Navigator.pop(context, _location),
        child: const Icon(Icons.save),
      ),
    );
  }
}
