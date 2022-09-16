import 'package:flutter/material.dart';
import 'dart:math' as math;

class CardContainer extends StatelessWidget {
  final Widget child;

  const CardContainer({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: math.pi / 34.4,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Container(
          width: 600,
          alignment: Alignment.center,
          padding: const EdgeInsets.all(20),
          decoration: _createCardShape(),
          child: child,
        ),
      ),
    );
  }

  BoxDecoration _createCardShape() => BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 150,
              offset: Offset(0, 50),
            )
          ]);
}
