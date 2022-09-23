// ignore_for_file: unused_field
import 'package:flutter/material.dart';
import 'package:flutter_joystick/flutter_joystick.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:joysticgame/modules/ball.dart';

import '../shared/components.dart';

class gameLayout extends StatefulWidget {
  const gameLayout({Key? key}) : super(key: key);

  @override
  State<gameLayout> createState() => _gameLayoutState();
}

class _gameLayoutState extends State<gameLayout> {
  double x = 100;
  double y = 100;
  JoystickMode _joystickMode = JoystickMode.all;
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Joystick Game'),
      ),
      body: SafeArea(
          child: Stack(
        children: [
          Container(
            color: Colors.white,
          ),
          Align(
            alignment: const Alignment(0, 1),
            child: Joystick(
                mode: _joystickMode,
                listener: ((details) {
                  setState(() {
                    x = x + step * details.x;
                    y = y + step * details.y;
                  });
                })),
          ),
          Align(
            alignment: const Alignment(0, -1),
            child: Joystick(
                mode: _joystickMode,
                listener: ((details) {
                  setState(() {
                    x = x + step * details.x;
                    y = y + step * details.y;
                  });
                })),
          )
        ],
      )),
    );
  }
}
