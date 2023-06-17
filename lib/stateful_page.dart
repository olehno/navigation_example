import 'package:flutter/material.dart';

class StatefulPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _StatefulPageState();
  }
}

class _StatefulPageState extends State<StatefulPage> {
  var color = Colors.yellow;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: color,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _changeColor();
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  void _changeColor() {
    setState(() {
      if (color == Colors.green) {
        color = Colors.yellow;
      } else {
        color = Colors.green;
      }
    });
  }
}
