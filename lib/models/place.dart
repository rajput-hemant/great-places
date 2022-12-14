import 'dart:io';

class Place {
  final String id, title;
  final File image;
  final PlaceLocation? location;

  const Place({
    required this.id,
    required this.title,
    required this.image,
    required this.location,
  });
}

class PlaceLocation {
  final double latitude, longitude;
  final String? address;

  const PlaceLocation({
    required this.latitude,
    required this.longitude,
    this.address,
  });
}
