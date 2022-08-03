import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';
import 'package:zataraapp/constant.dart';
import 'package:zataraapp/signin/transition.dart';
import 'package:zataraapp/signup/signuptransition.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        /*  appBar: AppBar(
          toolbarHeight: 25,
          leading: Padding(
            padding: const EdgeInsets.only(top: 10, left: 18),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Image.asset(
                'assets/icons/back.png',
                height: 10,
              ),
            ),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
        ), */
        body: Stack(
      children: [
        Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 70),
            child: Column(
              children: [
                // CircleAvatar(
                //   radius: 80,
                //
                //   backgroundImage: AssetImage(
                //       'assets/icons/Ellipse 10.png',
                //
                //   ),
                // ),
                SizedBox(
                  height: 50,
                ),
                CircleAvatar(
                  radius: 90,
                  backgroundColor: primary,
                  child: CircleAvatar(
                    radius: 85,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      backgroundImage:
                          AssetImage('assets/icons/Ellipse 10.png'),
                      radius: 80,
                    ),
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                Text(
                  'Jaya Roya',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                      color: primary),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'rayarichn99@gmail.com',
                  style: TextStyle(
                      fontSize: 14,
                      color: HexColor('#616161'),
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 70),
                  child: Container(
                    alignment: Alignment.center,
                    child: Column(children: [
                      Row(
                        children: [
                          Image.asset(
                            'assets/icons/payment.png',
                            width: 25,
                            height: 25,
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          InkWell(
                              onTap: () {},
                              child: Text(
                                'Payment Methods',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: HexColor('#616161'),
                                ),
                              ))
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            'assets/icons/language.png',
                            width: 25,
                            height: 25,
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          InkWell(
                              onTap: () {},
                              child: Text(
                                'Language',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: HexColor('#616161'),
                                ),
                              ))
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            'assets/icons/about.png',
                            width: 25,
                            height: 25,
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          InkWell(
                              onTap: () {},
                              child: Text(
                                'About Us',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: HexColor('#616161'),
                                ),
                              ))
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            'assets/icons/help.png',
                            width: 25,
                            height: 25,
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          InkWell(
                              onTap: () {},
                              child: Text(
                                'Help',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: HexColor('#616161'),
                                ),
                              ))
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            'assets/icons/logout.png',
                            width: 25,
                            height: 25,
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Transition()),
                                );
                              },
                              child: Text(
                                'Log Out',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: HexColor('#616161'),
                                ),
                              ))
                        ],
                      ),
                    ]),
                  ),
                )
              ],
            ),
          ),
        ),
        Positioned(
          top: 5.h,
          right: 9.w,
          left: 9.w,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 5.h,
            color: Colors.transparent,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(
                      context,
                    );
                  },
                  child: Container(
                    height: 20,
                    width: 20,
                    alignment: Alignment.topLeft,
                    child: Image.asset(
                      'assets/icons/back.png',
                      height: 15,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
