import 'package:flutter/material.dart';

class SafetyTipsScreen extends StatelessWidget {
  final List<String> tips = [
    'Always be aware of your surroundings.',
    'Avoid walking alone at night.',
    'Keep your valuables out of sight.',
    'Use well-lit and populated routes.',
    'Trust your instincts and avoid risky situations.',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Safety Tips'),
      ),
      body: ListView.builder(
        itemCount: tips.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.lightbulb_outline),
            title: Text(tips[index]),
          );
        },
      ),
    );
  }
}