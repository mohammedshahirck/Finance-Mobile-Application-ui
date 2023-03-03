import 'package:flutter/material.dart';
import 'package:machine_task/recent_transactions/widgets/border_container.dart';

class UserAvatar extends StatelessWidget {
  const UserAvatar({
    super.key,
    required this.color,
    required this.borderColor,
    required this.image,
  });
  final Color color;
  final Color borderColor;
  final ImageProvider image;

  @override
  Widget build(BuildContext context) {
    return BorderContainer(
      boxShadow: const [
        BoxShadow(
          color: Color.fromARGB(32, 52, 103, 130),
          offset: Offset(
            0,
            8.0,
          ),
          blurRadius: 10.0,
          spreadRadius: 6,
        ),
      ],
      width: 4,
      color: borderColor,
      child: Container(
        width: 70,
        height: 70,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color,
            image: DecorationImage(image: image, fit: BoxFit.fill)),
      ),
    );
  }
}
