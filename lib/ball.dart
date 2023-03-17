// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Ball extends StatelessWidget {
  const Ball({
    Key? key,
    required this.diameter,
  }) : super(key: key);
  final double diameter;
  static Ball get init => const Ball(diameter: 50);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: diameter,
      height: diameter,
      decoration: const BoxDecoration(
        color: Colors.blueAccent,
        shape: BoxShape.circle,
      ),
    );
  }
}
