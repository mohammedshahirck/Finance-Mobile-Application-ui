import 'package:flutter/material.dart';
import 'package:machine_task/utils/styles/hieght_width.dart';

class CustomTextfield extends StatelessWidget {
  const CustomTextfield({
    super.key,
    required this.text,
    required this.icon,
    this.sufix,
  });
  final String text;
  final IconData icon;
  final Widget? sufix;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
        top: 10,
        bottom: 5,
      ),
      decoration: BoxDecoration(boxShadow: const [
        BoxShadow(
          color: Color.fromARGB(33, 42, 69, 84),
          offset: Offset(
            0,
            20.0,
          ),
          blurRadius: 15.0,
          spreadRadius: 10,
        ),
      ], color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: Theme.of(context)
                .textTheme
                .bodyLarge
                ?.copyWith(color: Colors.black54),
          ),
          Row(
            children: [
              Icon(
                icon,
                color: Colors.black54,
              ),
              Ksize.kWsize10,
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration(
                    suffixIcon: sufix,
                    focusedBorder: InputBorder.none,
                    border: InputBorder.none,
                  ),
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
