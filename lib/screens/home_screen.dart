import 'package:flutter/material.dart';
import '../widgets/map_widget.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SafePath'),
      ),
      body: MapWidget(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/panic');
        },
        child: Icon(Icons.warning),
      ),
    );
  }
}