import 'package:flutter/material.dart';
import 'package:untitled/UI/components/custom_button.dart';

class MyprofileScreenTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffC29377),
      child: Padding(
        padding: const EdgeInsets.only(top: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'My Profile',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            const Divider(
              color: Colors.white,
              height: 2,
              endIndent: 110,
              indent: 110,
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 90,
                  child: Image.asset('assets/image/Ellipse 6.png'),
                ),
                const SizedBox(
                  width: 15,
                ),
                const Text(
                  '10 Coins',
                  style: TextStyle(
                    color: Color(0xff2C100B),
                    fontSize: 40,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'User Name',
                        style: TextStyle(
                          color: Color(0xff2C100B),
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        'Date of Birth',
                        style: TextStyle(
                          color: Color(0xff2C100B),
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        'Location',
                        style: TextStyle(
                          color: Color(0xff2C100B),
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        'Phone',
                        style: TextStyle(
                          color: Color(0xff2C100B),
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        'Email',
                        style: TextStyle(
                          color: Color(0xff2C100B),
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Younan Gamal',
                        style: TextStyle(
                          color: Color(0xff2C100B),
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        '00/00/0000',
                        style: TextStyle(
                          color: Color(0xff2C100B),
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        'Lorem Ipsum',
                        style: TextStyle(
                          color: Color(0xff2C100B),
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        '0100-111-1111',
                        style: TextStyle(
                          color: Color(0xff2C100B),
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        'Email@gmail.com',
                        style: TextStyle(
                          color: Color(0xff2C100B),
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButton(
                  titlebutton: 'Edite',
                  height: 38,
                  width: 109,
                ),
                SizedBox(
                  width: 40,
                ),
                CustomButton(
                  titlebutton: 'Delete',
                  height: 38,
                  width: 109,
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Center(
              child: CustomButton(
                titlebutton: 'Logout',
                height: 38,
                width: 109,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
