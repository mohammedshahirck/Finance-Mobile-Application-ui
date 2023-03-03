import 'package:flutter/material.dart';

import '../../costants/items.dart';

class OverViewTile extends StatelessWidget {
  const OverViewTile({
    super.key,
    required this.index,
  });
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(32, 52, 103, 130),
            offset: Offset(
              0,
              20.0,
            ),
            blurRadius: 15.0,
            spreadRadius: 10,
          ),
        ],
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: ListTile(
        leading: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: const Color(0xffe6e7f9),
              borderRadius: BorderRadius.circular(13),
            ),
            child: icons[index]),
        title: Text(
          title[index],
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          subTitle[index],
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ),
        trailing: Text(
          '\$${price[index]}',
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
