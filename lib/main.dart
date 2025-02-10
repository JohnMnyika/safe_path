import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/panic_button_screen.dart';
import 'screens/report_incident_screen.dart';
import 'screens/safety_tips_screen.dart';
import 'screens/settings_screen.dart';

void main() {
  runApp(SafePathApp());
}

class SafePathApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SafePath',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
      routes: {
        '/panic': (context) => PanicButtonScreen(),
        '/report': (context) => ReportIncidentScreen(),
        '/tips': (context) => SafetyTipsScreen(),
        '/settings': (context) => SettingsScreen(),
      },
    );
  }
}