import 'package:flutter/material.dart';

class Box extends StatelessWidget {
  const Box({super.key, required this.counter, required this.x});
  final int x;
  final int counter;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 40,
        width: 40,
        child: ColoredBox(
          color: Colors.red,
          child: Center(child: Text('${counter * x}です')),
        ),
      ),
    );
  }
}
