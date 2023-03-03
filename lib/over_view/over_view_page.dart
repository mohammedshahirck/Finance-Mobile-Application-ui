import 'package:flutter/material.dart';
import 'package:machine_task/over_view/widgets/overview_tile.dart';
import 'package:machine_task/over_view/widgets/user_details.dart';
import 'package:machine_task/recent_transactions/recent_transactions.dart';
import 'package:machine_task/utils/styles/hieght_width.dart';

class OverViewPage extends StatelessWidget {
  const OverViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XffF2F8FD),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              const UserDetails(),
              Ksize.ksize20,
              Row(
                children: [
                  const Text(
                    'Overview',
                    style: TextStyle(
                        color: Color(0xff3E4685),
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return const RecentTransaction();
                          },
                        ));
                      },
                      icon: const Badge(
                        alignment: AlignmentDirectional.topCenter,
                        child: Icon(
                          Icons.notifications_outlined,
                          size: 30,
                        ),
                      )),
                  const Spacer(),
                  const Text(
                    'Sep 13, 2020',
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff3E4685),
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              Ksize.ksize20,
              ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return OverViewTile(
                      index: index,
                    );
                  },
                  separatorBuilder: (context, index) {
                    return Ksize.ksize20;
                  },
                  itemCount: 3)
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black,
          backgroundColor: Colors.transparent,
          type: BottomNavigationBarType.fixed,
          elevation: 0,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
                label: 'Home',
                icon: Image.asset(
                  'assets/icon/home (1).png',
                  height: 25,
                )),
            BottomNavigationBarItem(
                label: 'Credit',
                icon: Image.asset(
                  'assets/icon/credit-card.png',
                  height: 25,
                )),
            BottomNavigationBarItem(
                label: 'Add',
                icon: Container(
                  width: 40,
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color(0xff3E4685),
                  ),
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                )),
            BottomNavigationBarItem(
                label: 'Money',
                icon: Image.asset(
                  'assets/icon/dollar-sign.png',
                  height: 25,
                )),
            BottomNavigationBarItem(
                label: 'Account',
                icon: Image.asset(
                  'assets/icon/user (2).png',
                  height: 25,
                )),
          ]),
    );
  }
}
