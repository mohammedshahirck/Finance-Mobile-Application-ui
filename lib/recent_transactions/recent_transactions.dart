import 'package:flutter/material.dart';
import 'package:machine_task/controller/choice_chip.dart';
import 'package:machine_task/login_page/widgets/custom_elevated_button.dart';
import 'package:machine_task/recent_transactions/widgets/user_avatar.dart';
import 'package:machine_task/recent_transactions/widgets/border_container.dart';
import 'package:machine_task/utils/styles/hieght_width.dart';
import 'package:provider/provider.dart';

class RecentTransaction extends StatelessWidget {
  const RecentTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    List<String> choicesList = ['All', 'Income', 'Expense'];
    return Scaffold(
      backgroundColor: const Color(0XffF2F8FD),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0XffF2F8FD),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
          color: Colors.black,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              'assets/icon/search.png',
              height: 25,
            ),
            color: Colors.black,
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Recent Transaction',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff575B95),
                ),
              ),
              Ksize.ksize20,
              Consumer<ChoiceModel>(
                builder: (context, model, child) {
                  return Wrap(
                    spacing: 5.0,
                    children: choicesList.map((choice) {
                      return ChoiceChip(
                        selectedColor: const Color(0xff575B95),
                        disabledColor: Colors.white,
                        label: Text(choice),
                        selected: model.selectedChoice == choice,
                        onSelected: (selected) {
                          model.selectChoice(selected ? choice : '');
                        },
                      );
                    }).toList(),
                  );
                },
              ),
              Ksize.ksize10,
              const Text(
                'Today',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff575B95),
                ),
              ),
              Ksize.ksize30,
              Container(
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromARGB(32, 52, 103, 130),
                      offset: Offset(
                        0,
                        10.0,
                      ),
                      blurRadius: 15.0,
                      spreadRadius: 10,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: ListTile(
                  leading: Image.asset(
                    'assets/icon/msg.png',
                    color: const Color(0xff575B95),
                    filterQuality: FilterQuality.high,
                  ),
                  title: const Text(
                    'Payment',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: const Text(
                    'Payment From Android', //  subTitle[index],
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  trailing: const Text(
                    '\$30.00',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Color(0xff575B95)),
                  ),
                ),
              ),
              Center(
                child: Stack(
                  children: [
                    SizedBox(
                      height: 450,
                      width: double.infinity,
                      // MediaQuery.of(context).size.width * 0.80,
                      child: Center(
                        child: BorderContainer(
                          cheight: 400,
                          cwidth: 280,
                          width: 3,
                          color: Colors.grey.shade300,
                          child: const BorderContainer(
                            color: Colors.transparent,
                            width: 20,
                            child: BorderContainer(
                              cheight: 192,
                              cwidth: 192,
                              color: Colors.white,
                              width: 3,
                              child: BorderContainer(
                                cheight: 190,
                                cwidth: 190,
                                width: 20,
                                color: Color(0xffD7E8FF),
                                child: BorderContainer(
                                  cheight: 130,
                                  cwidth: 130,
                                  width: 15,
                                  color: Colors.transparent,
                                  child: BorderContainer(
                                    cheight: 140,
                                    cwidth: 140,
                                    width: 4,
                                    color: Color(0xff384170),
                                    child: BorderContainer(
                                      cheight: 130,
                                      cwidth: 130,
                                      width: 3,
                                      color: Colors.white,
                                      child: CircleAvatar(
                                        radius: 60,
                                        backgroundColor: Color(0xffF7C6CD),
                                        backgroundImage: AssetImage(
                                          'assets/images/user.png',
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const Positioned(
                        top: 45.0,
                        left: 135,
                        child: UserAvatar(
                          borderColor: Colors.white,
                          color: Colors.indigo,
                          image: AssetImage(
                              'assets/images/pexels-photo-3756681.webp'),
                        )),
                    const Positioned(
                        top: 140,
                        left: 6,
                        child: UserAvatar(
                          borderColor: Colors.white,
                          color: Colors.indigo,
                          image: AssetImage(
                              'assets/images/pexels-photo-785667.webp'),
                        )),
                    const Positioned(
                        top: 140,
                        left: 40,
                        bottom: -65.0,
                        child: UserAvatar(
                          borderColor: Colors.white,
                          color: Colors.indigo,
                          image: AssetImage('assets/images/download (1).jpg'),
                        )),
                    const Positioned(
                        top: 140,
                        right: 40,
                        bottom: -70,
                        child: UserAvatar(
                          borderColor: Colors.white,
                          color: Colors.indigo,
                          image: AssetImage(
                              'assets/images/pexels-photo-3785104.webp'),
                        )),
                    const Positioned(
                        top: 140,
                        right: 5,
                        child: UserAvatar(
                          borderColor: Colors.white,
                          color: Colors.indigo,
                          image: AssetImage(
                              'assets/images/pexels-photo-4195342.webp'),
                        )),
                  ],
                ),
              ),
              CustomElevatedButtun(
                mediaQuery: mediaQuery,
                onpressed: () {},
                title: 'See Details',
              ),
              Ksize.ksize20,
            ],
          ),
        ),
      ),
    );
  }
}
