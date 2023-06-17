import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({
    super.key,
    required this.color,
    required this.onClose,
  });

  final Color? color;
  final void Function()? onClose;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Green"),
      ),
      body: GestureDetector(
        onTap: () => _closePage(context),
        child: Container(
          color: color ?? Colors.purple,
        ),
      ),
    );
  }
  void _screenPressed() {
    print("Pressed");
  }

  void _closePage(BuildContext context) {
    onClose?.call();
    Navigator.of(context).pop(Colors.yellow);
  }
}


