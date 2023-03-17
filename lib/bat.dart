import 'package:flutter/material.dart';

class Bat extends StatelessWidget {
  const Bat({Key? key, required this.width, required this.height}) : super(key: key);
  final double width;
  final double height;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: const BoxDecoration(
        color: Colors.blueAccent,
        shape: BoxShape.rectangle,
      ),
    );
  }

  static Bat get init => const Bat(width: 80, height: 20);
}
