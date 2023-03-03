import 'package:flutter/material.dart';
import 'package:machine_task/over_view/widgets/custom_column_text.dart';
import 'package:machine_task/utils/styles/hieght_width.dart';

class UserDetails extends StatelessWidget {
  const UserDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(31, 12, 86, 127),
            offset: Offset(
              0,
              20.0,
            ),
            blurRadius: 15.0,
            spreadRadius: .1,
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                hoverColor: Colors.transparent,
                autofocus: false,
                icon: Image.asset(
                  'assets/icon/text.png',
                  color: const Color(0xff3E4685),
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Image.asset(
                  'assets/icon/dot.png',
                  height: 16,
                  color: const Color(0xff3E4685),
                ),
                onPressed: () {},
              ),
            ],
          ),
          const CircleAvatar(
            backgroundColor: Color(0xffF7C6CD),
            backgroundImage: AssetImage(
              'assets/images/user.png',
            ),
            radius: 60,
          ),
          Ksize.ksize20,
          const Text(
            'Hira Riaz',
            style: TextStyle(
                color: Color(0xff3E4685),
                fontSize: 22,
                fontWeight: FontWeight.bold),
          ),
          Ksize.ksize10,
          const Text(
            'UX/UI Designer',
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
          Ksize.ksize30,
          IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                CustomColumnText(
                  amount: '8900',
                  text: 'Income',
                ),
                VerticalDivider(
                  color: Colors.grey,
                  thickness: 1,
                ),
                CustomColumnText(
                  amount: '5500',
                  text: 'Expence',
                ),
                VerticalDivider(
                  color: Colors.grey,
                  thickness: 1,
                ),
                CustomColumnText(
                  amount: '890',
                  text: 'Loan',
                ),
              ],
            ),
          ),
          Ksize.ksize40,
        ],
      ),
    );
  }
}
