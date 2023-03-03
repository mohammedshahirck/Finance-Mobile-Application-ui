import 'package:flutter/material.dart';
import 'package:machine_task/login_page/widgets/custom_elevated_button.dart';
import 'package:machine_task/login_page/widgets/custom_textfield.dart';
import 'package:machine_task/over_view/over_view_page.dart';
import 'package:machine_task/utils/styles/hieght_width.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: const Color(0XffF2F8FD),
      body: SafeArea(
          child: SingleChildScrollView(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Ksize.ksize40,
            const CircleAvatar(
              backgroundImage: AssetImage('assets/images/logo1.png'),
              radius: 70,
            ),
            Ksize.ksize80,
            Ksize.ksize30,
            const CustomTextfield(
              icon: Icons.email_outlined,
              text: 'Email Address',
            ),
            Ksize.ksize20,
            const CustomTextfield(
              icon: Icons.lock_outline,
              text: 'Password',
              sufix: Icon(
                Icons.remove_red_eye,
                color: Colors.black,
              ),
            ),
            Ksize.ksize30,
            CustomElevatedButtun(
              mediaQuery: mediaQuery,
              onpressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const OverViewPage();
                  },
                ));
              },
              title: 'Login',
            ),
            Ksize.ksize30,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'SignUp',
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(fontSize: 16, color: Colors.black54),
                ),
                Text(
                  'Forgot Password?',
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(fontSize: 16, color: Colors.black54),
                )
              ],
            )
          ],
        ),
      )),
    );
  }
}
