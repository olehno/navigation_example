import 'package:flutter/material.dart';
import 'package:navigation_example/page2.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  var _color = Colors.red;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Red"),
      ),
      body: GestureDetector(
        onTap: () => _showBluePage(context),
        child: Container(
          color: _color,
        ),
      ),
    );
  }

  Future<void> _showBluePage(BuildContext context) async {
    final page2 = Page2(
      color: Colors.pink,
      onClose: () {
        print("Pink page closed");
      },
    );
    final route = MaterialPageRoute(builder: (context) {
      return page2;
    });
    final result = await Navigator.of(context).push(route);
    print("Result: $result");
    if (result is MaterialColor) {
      setState(() {
        _color = result;
      });
    }
  }
}
