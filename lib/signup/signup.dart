import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';
import 'package:zataraapp/signin/phoneno.dart';
import 'package:zataraapp/signin/signin.dart';
import 'package:zataraapp/signup/varifyCode.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
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
                "Create your account",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                    fontFamily: 'poppins',
                    color: HexColor("#FF2501")),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 3.h, bottom: 3.h),
              alignment: Alignment.topLeft,
              child: Text(
                "To use your account, you create an account first.",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 11,
                    color: HexColor("#616161")),
              ),
            ),
            SizedBox(
              height: 10,
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
                        onPressed: () {},
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
              padding: const EdgeInsets.only(top: 27),
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
              padding: const EdgeInsets.only(top: 18),
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
                      hintText: 'Username',
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
              padding: const EdgeInsets.only(top: 18),
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
            Padding(
              padding: const EdgeInsets.only(top: 18),
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
                      hintText: 'Repeat password',
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
              padding: const EdgeInsets.only(top: 18),
              child: Container(
                height: 6.5.h,
                width: 85.w,
                decoration: BoxDecoration(
                    color: HexColor('#FF2501'),
                    borderRadius: BorderRadius.circular(10)),
                child: FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const VarifyCode()),
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
                    'Already have an account?',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: HexColor('#616161')),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 2.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const signin()),
                        );
                      },
                      child: Text(
                        'Sign In',
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
