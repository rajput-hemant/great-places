import 'package:flutter/material.dart';
import 'package:great_places/screens/map_screen.dart';
import 'package:latlong2/latlong.dart';
import 'package:location/location.dart';

import '../helpers/location_helper.dart';

class LocationInput extends StatefulWidget {
  const LocationInput({Key? key}) : super(key: key);

  @override
  State<LocationInput> createState() => _LocationInputState();
}

class _LocationInputState extends State<LocationInput> {
  Widget? _map;

  Future<void> _getCurrentUserLocation() async {
    final locData = await Location().getLocation();
    final preview = LocationHelper.generateLocationPreviewImage(
      location: LatLng(locData.latitude!, locData.longitude!),
    );
    setState(() => _map = preview);
  }

  Future<void> _selectOnMap() async {
    final selectedLocation = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const MapScreen(isSelecting: true),
      ),
    );
    if (selectedLocation == null) return;
    // ...
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 190,
          width: double.infinity,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: Colors.grey,
            ),
          ),
          child: _map ??
              const Text(
                'No Location Chosen!',
                textAlign: TextAlign.center,
              ),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton.icon(
              onPressed: _getCurrentUserLocation,
              icon: const Icon(Icons.location_on),
              label: const Text('Current Location'),
            ),
            TextButton.icon(
              onPressed: _selectOnMap,
              icon: const Icon(Icons.map),
              label: const Text('Select on Map'),
            ),
          ],
        ),
      ],
    );
  }
}
