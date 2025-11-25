import 'package:flutter/material.dart';

const startAlign = Alignment.topLeft;
const endAlign = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  final Widget child;
  final List<Color> colorList;
  const GradientContainer({
    required this.child,
    this.colorList = const [Colors.amber, Colors.amberAccent],
    super.key,
  });

  const GradientContainer.purple({
    required this.child,
    this.colorList = const [Colors.purple, Colors.deepPurple],
    super.key,
  });

  @override
  Widget build(ctx) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colorList,
          begin: startAlign,
          end: endAlign,
        ),
      ),
      child: child,
    );
  }
}
