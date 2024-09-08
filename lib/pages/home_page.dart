import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SharedPreferences App'),
      ),
      drawer: Container(
        height: 100,
        width: 100,
        color: Colors.red,
      ),
    );
  }
}
