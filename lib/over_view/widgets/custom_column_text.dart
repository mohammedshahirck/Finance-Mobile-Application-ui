import 'package:flutter/material.dart';

import '../../utils/styles/hieght_width.dart';

class CustomColumnText extends StatelessWidget {
  const CustomColumnText({
    super.key,
    required this.amount,
    required this.text,
  });
  final String amount;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "\$$amount",
          style: const TextStyle(
            color: Color(0xff3E4685),
            fontWeight: FontWeight.w400,
            fontSize: 18,
          ),
        ),
        Ksize.ksize10,
        Text(
          text,
          style: const TextStyle(
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
