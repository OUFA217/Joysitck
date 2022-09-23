import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:joysticgame/shared/components.dart';

class ball extends StatelessWidget {
  final double x;
  final double y;

  const ball(this.x, this.y, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: x,
      top: y,
      child: Container(
        width: ballSize,
        height: ballSize,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.deepOrange,
        ),
      ),
    );
  }
}
