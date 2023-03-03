import 'package:flutter/material.dart';

class BorderContainer extends StatelessWidget {
  const BorderContainer(
      {super.key,
      required this.child,
      required this.width,
      required this.color,
      this.cheight,
      this.cwidth,
      this.boxShadow});
  final Widget child;
  final double width;
  final Color color;
  final double? cheight;
  final List<BoxShadow>? boxShadow;

  final double? cwidth;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: cheight,
        width: cwidth,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          boxShadow: boxShadow,
          shape: BoxShape.circle,
          border: Border.all(color: color, width: width),
        ),
        child: child);
  }
}
