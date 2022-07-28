import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';
import 'package:zataraapp/constants.dart';
import 'package:zataraapp/signin/phoneno.dart';
import 'package:zataraapp/signin/verifymail.dart';
import 'package:zataraapp/signup/varifyCode.dart';

class signin extends StatefulWidget {
  const signin({Key? key}) : super(key: key);

  @override
  _signinState createState() => _signinState();
}

class _signinState extends State<signin> {
  bool show = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 16.h,
            ),
            Container(
              padding: EdgeInsets.only(left: 3.h, bottom: 1.h),
              alignment: Alignment.topLeft,
              child: Text(
                "Welcome Back",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                    fontFamily: 'poppins',
                    color: HexColor("#FF2501")),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 0.h, bottom: 3.h),
              alignment: Alignment.topLeft,
              width: 86.w,
              child: Text(
                "We happy to see you again. To use your account, you should log in first.",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 11,
                    color: HexColor("#616161")),
              ),
            ),
            SizedBox(
              height: 7,
            ),
            Container(
              width: 85.w,
              height: 47,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: HexColor('#F2F2F4'),
              ),
              child: Row(
                children: [
                  Container(
                    width: 42.w,
                    height: 41,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        color: HexColor('#FF2501')),
                    child: FlatButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          "E-mail",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: HexColor('#FFFFFF')),
                        )),
                  ),
                  Container(
                    width: 42.w,
                    height: 41,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9),
                    ),
                    child: FlatButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const phoneno()),
                          );
                        },
                        child: Text(
                          "Phone Number",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: HexColor('#616161')),
                        )),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 45),
              child: Container(
                height: 6.5.h,
                width: 85.w,
                decoration: BoxDecoration(
                    color: HexColor('#F2F2F4'),
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: TextField(
                    style: TextStyle(color: HexColor('#616161')),
                    decoration: InputDecoration(
                      hintText: 'E-mail',
                      hintStyle: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: HexColor('#616161')),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 34),
              child: Container(
                height: 6.5.h,
                width: 85.w,
                decoration: BoxDecoration(
                    color: HexColor('#F2F2F4'),
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: TextField(
                    obscureText: show,
                    obscuringCharacter: '*',
                    style: TextStyle(color: HexColor('#616161')),
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              show = !show;
                            });
                          },
                          icon: Icon(
                            Icons.remove_red_eye,
                            color: HexColor('#616161'),
                            size: 20,
                          )),
                      hintText: 'Password',
                      hintStyle: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: HexColor('#616161')),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0, 5, 28, 0),
              alignment: Alignment.bottomRight,
              child: Text(
                'Forgot Password?',
                style: TextStyle(
                    color: primary, fontWeight: FontWeight.w400, fontSize: 12),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Container(
                height: 6.5.h,
                width: 85.w,
                decoration: BoxDecoration(
                    color: HexColor('#FF2501'),
                    borderRadius: BorderRadius.circular(10)),
                child: FlatButton(
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const varifymail()),
                            (route) => false,
                      );
                    },
                    child: Text(
                      "Continue",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: HexColor('#FFFFFF'),
                      ),
                    )),
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            Row(
              children: [
                Expanded(
                    child: Container(
                  margin: const EdgeInsets.only(left: 28.0, right: 5.0),
                  child: Divider(
                    height: 43,
                    color: HexColor('#616161'),
                  ),
                )),
                Text(
                  'Sign in with',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: HexColor('#616161')),
                ),
                Expanded(
                    child: Container(
                  margin: const EdgeInsets.only(left: 5.0, right: 28.0),
                  child: Divider(
                    color: HexColor('#616161'),
                  ),
                )),
              ],
            ),
            SizedBox(
              height: 1.5.h,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(26, 0, 0, 0),
                  child: Container(
                    height: 6.5.h,
                    width: 27.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: HexColor('#F2F2F4')),
                    child: Image.asset(
                      'assets/icons/google.png',
                      scale: 0.5.h,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(7, 0, 0, 0),
                  child: Container(
                      height: 6.5.h,
                      width: 27.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: HexColor('#4267B2')),
                      child: Image.asset(
                        'assets/icons/facebook.png',
                        scale: 0.5.h,
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(7, 0, 0, 0),
                  child: Container(
                      height: 6.5.h,
                      width: 27.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: HexColor('#000000')),
                      child: Image.asset(
                        'assets/icons/apple.png',
                        scale: 0.5.h,
                      )),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 28),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don’t have an account?',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: HexColor('#616161')),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 2.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Sign up',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                            color: HexColor('#FF2501')),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
