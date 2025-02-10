import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapWidget extends StatelessWidget {
  final LatLng currentPosition;

  MapWidget({required this.currentPosition});

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      initialCameraPosition: CameraPosition(
        target: currentPosition,
        zoom: 14,
      ),
      markers: {
        Marker(
          markerId: MarkerId('currentLocation'),
          position: currentPosition,
        ),
      },
    );
  }
}