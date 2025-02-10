import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: ListView(
        children: [
          SwitchListTile(
            title: Text('Enable Notifications'),
            value: true,
            onChanged: (value) {
              // Handle notification settings
            },
          ),
          ListTile(
            title: Text('Emergency Contacts'),
            onTap: () {
              // Navigate to emergency contacts screen
            },
          ),
        ],
      ),
    );
  }
}