import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PanicButtonScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Panic Button'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            final url = 'tel:999'; // Replace with emergency number
            if (await canLaunch(url)) {
              await launch(url);
            } else {
              throw 'Could not launch $url';
            }
          },
          child: Text('Trigger Panic Button'),
          style: ElevatedButton.styleFrom(
            primary: Colors.red,
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
          ),
        ),
      ),
    );
  }
}