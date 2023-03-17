import 'package:flutter/material.dart';
import 'package:pong/ball.dart';
import 'package:pong/bat.dart';

class Pong extends StatefulWidget {
  const Pong({Key? key}) : super(key: key);

  @override
  State<Pong> createState() => _PongState();
}

class _PongState extends State<Pong> {
  /// BALL POSITION
  void ballMoveUp() {
    setState(() {
      ballPositionY++;
    });
  }

  void ballMoveDown() {
    setState(() {
      ballPositionY--;
    });
  }

  void ballMoveRight() => ballPositionX++;
  void ballMoveLeft() => ballPositionX--;
  var ballPositionX = 0;
  double ballPositionY = 0;

  /// BAT POSITION
  void batMoveUp() => batPositionY++;
  void batMoveDown() => batPositionY--;
  void batMoveRight() => batPositionX++;
  void batMoveLeft() => batPositionX--;
  var batPositionX = 0;
  var batPositionY = 0;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (
        BuildContext context,
        BoxConstraints boxConstraints,
      ) =>
          Stack(
        children: [
          Positioned(
            top: ballPositionY,
            child: Ball.init,
          ),
          Positioned(
            bottom: 0,
            child: Bat.init,
          ),
          Positioned(
            bottom: 80,
            right: 100,
            child: ElevatedButton(
              onPressed: () => ballMoveUp(),
              child: const Text('up'),
            ),
          ),
          Positioned(
            bottom: 50,
            right: 95,
            child: ElevatedButton(
              onPressed: () => ballMoveDown(),
              child: const Text('down'),
            ),
          )
        ],
      ),
    );
  }
}
