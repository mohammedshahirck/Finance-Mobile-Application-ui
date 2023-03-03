import 'package:flutter/material.dart';

class CustomElevatedButtun extends StatelessWidget {
  const CustomElevatedButtun({
    super.key,
    this.mediaQuery,
    required this.onpressed,
    required this.title,
  });

  final MediaQueryData? mediaQuery;
  final VoidCallback onpressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 50,
        width: mediaQuery?.size.width,
        child: ElevatedButton(
          onPressed: onpressed,
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              backgroundColor: const Color(0xff3E4685)),
          child: Text(title),
        ));
  }
}
