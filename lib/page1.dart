import 'package:flutter/material.dart';
import 'package:navigation_example/page2.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Red"),
      ),
      body: GestureDetector(
        onTap: () => _showBluePage(context),
        child: Container(
          color: Colors.red,
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
  }
}
