import 'package:flutter/material.dart';

class ChansonsPage extends StatelessWidget {
  const ChansonsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Liste de carrés'),
      ),
      body: ListView.builder(
        itemCount: 10, // nombre de carrés à afficher
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 100.0,
            color: Colors.blue,
            margin:
                const EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
          );
        },
      ),
    );
  }
}
