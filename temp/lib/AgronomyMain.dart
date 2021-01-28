import 'package:flutter/material.dart';

class AgronomyMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Birinchi sahifa"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate back to first route when tapped.
            Navigator.pop(
              context,
            );
          },
          child: Text('ORQAGA'),
        ),
      ),
    );
  }
}