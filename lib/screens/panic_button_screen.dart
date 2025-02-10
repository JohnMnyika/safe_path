import 'package:flutter/material.dart';
import '../services/location_service.dart';
import '../services/notification_service.dart';

class PanicButtonScreen extends StatelessWidget {
  final LocationService locationService = LocationService();
  final NotificationService notificationService = NotificationService();

  void _sendEmergencyAlert() async {
    final position = await locationService.getCurrentLocation();
    await notificationService.showNotification(
      'Emergency Alert',
      'Help! I am at ${position.latitude}, ${position.longitude}',
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Panic Button'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: _sendEmergencyAlert,
          child: Text('Send Alert'),
        ),
      ),
    );
  }
}