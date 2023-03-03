import 'package:flutter/material.dart';
import 'package:machine_task/recent_transactions/widgets/User_avatar.dart';
import 'package:machine_task/recent_transactions/widgets/border_container.dart';

class UserImages extends StatelessWidget {
  const UserImages({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
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
                image: AssetImage('assets/images/pexels-photo-3756681.webp'),
              )),
          const Positioned(
              top: 140,
              left: 6,
              child: UserAvatar(
                borderColor: Colors.white,
                color: Colors.indigo,
                image: AssetImage('assets/images/pexels-photo-785667.webp'),
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
                image: AssetImage('assets/images/pexels-photo-3785104.webp'),
              )),
          const Positioned(
              top: 140,
              right: 5,
              child: UserAvatar(
                borderColor: Colors.white,
                color: Colors.indigo,
                image: AssetImage('assets/images/pexels-photo-4195342.webp'),
              )),
        ],
      ),
    );
  }
}
