import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';
import 'package:zataraapp/constant.dart';
import 'package:zataraapp/homepage/Notification.dart';
import 'package:zataraapp/homepage/account.dart';
import 'package:zataraapp/homepage/product_info.dart';
import 'package:zataraapp/homepage/recently.dart';
import 'package:zataraapp/homepage/search.dart';
import 'package:zataraapp/signin/phoneno.dart';
import 'package:zataraapp/signin/signin.dart';
import 'package:zataraapp/signup/varifyCode.dart';

class hot extends StatefulWidget {
  const hot({Key? key}) : super(key: key);

  @override
  _hotState createState() => _hotState();
}

class _hotState extends State<hot> {
  List<String> img = [
    'assets/icons/1.png',
    'assets/icons/2.png',
    'assets/icons/3.png',
    'assets/icons/4.png',
    'assets/icons/5.png',
    'assets/icons/6.png',
  ];
  bool show1 = true;
  bool show2 = false;
  bool show3 = false;
  bool show4 = false;
  bool icon1 = true;
  bool icon2 = false;
  bool icon3 = false;
  bool icon4 = false;
  bool icon5 = false;
  bool showSearch = false;
  bool showbox = false;
  List<bool> fav = [true, false, true, true, false, true];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 30.0, top: 50, right: 30),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 25, 0, 15),
                    child: Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Hot ones offers',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                            color: HexColor('#FF2501')),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: 4.h,
                        height: 31,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: show1 == true
                                ? HexColor('#FF2501')
                                : HexColor('#F2F2F4')),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              show1 = true;
                              show2 = false;
                              show3 = false;
                              show4 = false;
                            });
                          },
                          child: Text(
                            'All',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 10,
                                color: show1 == true
                                    ? HexColor('#FFFFFF')
                                    : HexColor('#616161')),
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 22.w,
                        height: 31,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: show2 == true
                                ? HexColor('#FF2501')
                                : HexColor('#F2F2F4')),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              show1 = false;
                              show2 = true;
                              show3 = false;
                              show4 = false;
                            });
                          },
                          child: Text(
                            'Food & Drink',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 10,
                              color: show2 == true
                                  ? HexColor('#FFFFFF')
                                  : HexColor('#616161'),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 27.w,
                        height: 31,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: show3 == true
                                ? HexColor('#FF2501')
                                : HexColor('#F2F2F4')),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              show1 = false;
                              show2 = false;
                              show3 = true;
                              show4 = false;
                            });
                          },
                          child: Text(
                            'Beauty & Fitness',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 10,
                              color: show3 == true
                                  ? HexColor('#FFFFFF')
                                  : HexColor('#616161'),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 22.w,
                        height: 31,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: show4 == true
                                ? HexColor('#FF2501')
                                : HexColor('#F2F2F4')),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              show1 = false;
                              show2 = false;
                              show3 = false;
                              show4 = true;
                            });
                          },
                          child: Text(
                            'Attraction',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 10,
                              color: show4 == true
                                  ? HexColor('#FFFFFF')
                                  : HexColor('#616161'),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 225,
                        width: 146,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: HexColor('#F2F2F4')),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const product_info()),
                            );
                          },
                          child: Column(
                            children: [
                              Stack(
                                alignment: Alignment.bottomRight,
                                children: [
                                  Image.asset('assets/icons/1.png'),
                                  Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: InkWell(
                                      onTap: () {
                                        setState(() {
                                          fav[0] = !fav[0];
                                        });
                                      },
                                      child: fav[0] == true
                                          ? Image.asset(
                                              'assets/icons/fav.png',
                                              height: 18,
                                            )
                                          : Image.asset(
                                              'assets/icons/nfav.png',
                                              height: 18,
                                            ),
                                    ),
                                  )
                                ],
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 10, top: 1.h),
                                child: Column(
                                  children: [
                                    Container(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        'Fish for lunch',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 10,
                                            color: HexColor('#FF2501')),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          right: 18.0, top: 3),
                                      child: Container(
                                        alignment: Alignment.topLeft,
                                        width: 50.w,
                                        //color: Colors.red,
                                        child: Text(
                                          "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 7,
                                              color: HexColor('#616161')),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Row(
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  RatingBar.builder(
                                                    initialRating: 5,
                                                    updateOnDrag: false,
                                                    itemSize: 10,
                                                    minRating: 1,
                                                    direction: Axis.horizontal,
                                                    allowHalfRating: true,
                                                    itemCount: 5,
                                                    itemPadding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 0.1),
                                                    itemBuilder: (context, _) =>
                                                        Icon(
                                                      Icons.star,
                                                      color: Colors.amber,
                                                    ),
                                                    onRatingUpdate: (rating) {
                                                      print(rating);
                                                    },
                                                  ),
                                                  SizedBox(
                                                    height: 15,
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 2.0),
                                                    child: Text(
                                                      textAlign:
                                                          TextAlign.start,
                                                      '5.0',
                                                      style: TextStyle(
                                                          color: HexColor(
                                                              '#616161'),
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontSize: 6),
                                                    ),
                                                  )
                                                ],
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8.0, top: 3),
                                                child: Text(
                                                  '7,012 Reviews',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 6),
                                                ),
                                              )
                                            ],
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 20.0, top: 10),
                                            child: Text(
                                              '\$' + '125.00',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 10,
                                                  color: HexColor('#FF2501')),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 0.9.h,
                      ),
                      Container(
                        height: 225,
                        width: 146,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: HexColor('#F2F2F4')),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const product_info()),
                            );
                          },
                          child: Column(
                            children: [
                              Stack(
                                alignment: Alignment.bottomRight,
                                children: [
                                  Image.asset('assets/icons/2.png'),
                                  Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: InkWell(
                                      onTap: () {
                                        setState(() {
                                          fav[1] = !fav[1];
                                        });
                                      },
                                      child: fav[1] == true
                                          ? Image.asset(
                                              'assets/icons/fav.png',
                                              height: 18,
                                            )
                                          : Image.asset(
                                              'assets/icons/nfav.png',
                                              height: 18,
                                            ),
                                    ),
                                  )
                                ],
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 10, top: 1.h),
                                child: Column(
                                  children: [
                                    Container(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        'Fish for lunch',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 10,
                                            color: HexColor('#FF2501')),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          right: 18.0, top: 3),
                                      child: Container(
                                        alignment: Alignment.topLeft,
                                        width: 50.w,
                                        //color: Colors.red,
                                        child: Text(
                                          "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 7,
                                              color: HexColor('#616161')),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Row(
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  RatingBar.builder(
                                                    initialRating: 5,
                                                    updateOnDrag: false,
                                                    itemSize: 10,
                                                    minRating: 1,
                                                    direction: Axis.horizontal,
                                                    allowHalfRating: true,
                                                    itemCount: 5,
                                                    itemPadding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 0.1),
                                                    itemBuilder: (context, _) =>
                                                        Icon(
                                                      Icons.star,
                                                      color: Colors.amber,
                                                    ),
                                                    onRatingUpdate: (rating) {
                                                      print(rating);
                                                    },
                                                  ),
                                                  SizedBox(
                                                    height: 15,
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 2.0),
                                                    child: Text(
                                                      textAlign:
                                                          TextAlign.start,
                                                      '5.0',
                                                      style: TextStyle(
                                                          color: HexColor(
                                                              '#616161'),
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontSize: 6),
                                                    ),
                                                  )
                                                ],
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8.0, top: 3),
                                                child: Text(
                                                  '7,012 Reviews',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 6),
                                                ),
                                              )
                                            ],
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 20.0, top: 10),
                                            child: Text(
                                              '\$' + '125.00',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 10,
                                                  color: HexColor('#FF2501')),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 225,
                        width: 146,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: HexColor('#F2F2F4')),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const product_info()),
                            );
                          },
                          child: Column(
                            children: [
                              Stack(
                                alignment: Alignment.bottomRight,
                                children: [
                                  Image.asset('assets/icons/3.png'),
                                  Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: InkWell(
                                      onTap: () {
                                        setState(() {
                                          fav[2] = !fav[2];
                                        });
                                      },
                                      child: fav[2] == true
                                          ? Image.asset(
                                              'assets/icons/fav.png',
                                              height: 18,
                                            )
                                          : Image.asset(
                                              'assets/icons/nfav.png',
                                              height: 18,
                                            ),
                                    ),
                                  )
                                ],
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 10, top: 1.h),
                                child: Column(
                                  children: [
                                    Container(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        'Fish for lunch',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 10,
                                            color: HexColor('#FF2501')),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          right: 18.0, top: 3),
                                      child: Container(
                                        alignment: Alignment.topLeft,
                                        width: 50.w,
                                        //color: Colors.red,
                                        child: Text(
                                          "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 7,
                                              color: HexColor('#616161')),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Row(
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  RatingBar.builder(
                                                    initialRating: 5,
                                                    updateOnDrag: false,
                                                    itemSize: 10,
                                                    minRating: 1,
                                                    direction: Axis.horizontal,
                                                    allowHalfRating: true,
                                                    itemCount: 5,
                                                    itemPadding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 0.1),
                                                    itemBuilder: (context, _) =>
                                                        Icon(
                                                      Icons.star,
                                                      color: Colors.amber,
                                                    ),
                                                    onRatingUpdate: (rating) {
                                                      print(rating);
                                                    },
                                                  ),
                                                  SizedBox(
                                                    height: 15,
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 2.0),
                                                    child: Text(
                                                      textAlign:
                                                          TextAlign.start,
                                                      '5.0',
                                                      style: TextStyle(
                                                          color: HexColor(
                                                              '#616161'),
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontSize: 6),
                                                    ),
                                                  )
                                                ],
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8.0, top: 3),
                                                child: Text(
                                                  '7,012 Reviews',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 6),
                                                ),
                                              )
                                            ],
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 20.0, top: 10),
                                            child: Text(
                                              '\$' + '125.00',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 10,
                                                  color: HexColor('#FF2501')),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 0.9.h,
                      ),
                      Container(
                        height: 225,
                        width: 146,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: HexColor('#F2F2F4')),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const product_info()),
                            );
                          },
                          child: Column(
                            children: [
                              Stack(
                                alignment: Alignment.bottomRight,
                                children: [
                                  Image.asset('assets/icons/4.png'),
                                  Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: InkWell(
                                      onTap: () {
                                        setState(() {
                                          fav[3] = !fav[3];
                                        });
                                      },
                                      child: fav[3] == true
                                          ? Image.asset(
                                              'assets/icons/fav.png',
                                              height: 18,
                                            )
                                          : Image.asset(
                                              'assets/icons/nfav.png',
                                              height: 18,
                                            ),
                                    ),
                                  )
                                ],
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 10, top: 1.h),
                                child: Column(
                                  children: [
                                    Container(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        'Fish for lunch',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 10,
                                            color: HexColor('#FF2501')),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          right: 18.0, top: 3),
                                      child: Container(
                                        alignment: Alignment.topLeft,
                                        width: 50.w,
                                        //color: Colors.red,
                                        child: Text(
                                          "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 7,
                                              color: HexColor('#616161')),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Row(
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  RatingBar.builder(
                                                    initialRating: 5,
                                                    updateOnDrag: false,
                                                    itemSize: 10,
                                                    minRating: 1,
                                                    direction: Axis.horizontal,
                                                    allowHalfRating: true,
                                                    itemCount: 5,
                                                    itemPadding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 0.1),
                                                    itemBuilder: (context, _) =>
                                                        Icon(
                                                      Icons.star,
                                                      color: Colors.amber,
                                                    ),
                                                    onRatingUpdate: (rating) {
                                                      print(rating);
                                                    },
                                                  ),
                                                  SizedBox(
                                                    height: 15,
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 2.0),
                                                    child: Text(
                                                      textAlign:
                                                          TextAlign.start,
                                                      '5.0',
                                                      style: TextStyle(
                                                          color: HexColor(
                                                              '#616161'),
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontSize: 6),
                                                    ),
                                                  )
                                                ],
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8.0, top: 3),
                                                child: Text(
                                                  '7,012 Reviews',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 6),
                                                ),
                                              )
                                            ],
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 20.0, top: 10),
                                            child: Text(
                                              '\$' + '125.00',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 10,
                                                  color: HexColor('#FF2501')),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 225,
                        width: 146,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: HexColor('#F2F2F4')),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const product_info()),
                            );
                          },
                          child: Column(
                            children: [
                              Stack(
                                alignment: Alignment.bottomRight,
                                children: [
                                  Image.asset('assets/icons/5.png'),
                                  Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: InkWell(
                                      onTap: () {
                                        setState(() {
                                          fav[4] = !fav[4];
                                        });
                                      },
                                      child: fav[4] == true
                                          ? Image.asset(
                                              'assets/icons/fav.png',
                                              height: 18,
                                            )
                                          : Image.asset(
                                              'assets/icons/nfav.png',
                                              height: 18,
                                            ),
                                    ),
                                  )
                                ],
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 10, top: 1.h),
                                child: Column(
                                  children: [
                                    Container(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        'Fish for lunch',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 10,
                                            color: HexColor('#FF2501')),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          right: 18.0, top: 3),
                                      child: Container(
                                        alignment: Alignment.topLeft,
                                        width: 50.w,
                                        //color: Colors.red,
                                        child: Text(
                                          "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 7,
                                              color: HexColor('#616161')),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Row(
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  RatingBar.builder(
                                                    initialRating: 5,
                                                    updateOnDrag: false,
                                                    itemSize: 10,
                                                    minRating: 1,
                                                    direction: Axis.horizontal,
                                                    allowHalfRating: true,
                                                    itemCount: 5,
                                                    itemPadding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 0.1),
                                                    itemBuilder: (context, _) =>
                                                        Icon(
                                                      Icons.star,
                                                      color: Colors.amber,
                                                    ),
                                                    onRatingUpdate: (rating) {
                                                      print(rating);
                                                    },
                                                  ),
                                                  SizedBox(
                                                    height: 15,
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 2.0),
                                                    child: Text(
                                                      textAlign:
                                                          TextAlign.start,
                                                      '5.0',
                                                      style: TextStyle(
                                                          color: HexColor(
                                                              '#616161'),
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontSize: 6),
                                                    ),
                                                  )
                                                ],
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8.0, top: 3),
                                                child: Text(
                                                  '7,012 Reviews',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 6),
                                                ),
                                              )
                                            ],
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 20.0, top: 10),
                                            child: Text(
                                              '\$' + '125.00',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 10,
                                                  color: HexColor('#FF2501')),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 0.9.h,
                      ),
                      Container(
                        height: 225,
                        width: 146,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: HexColor('#F2F2F4')),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const product_info()),
                            );
                          },
                          child: Column(
                            children: [
                              Stack(
                                alignment: Alignment.bottomRight,
                                children: [
                                  Image.asset('assets/icons/6.png'),
                                  Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: InkWell(
                                      onTap: () {
                                        setState(() {
                                          fav[5] = !fav[5];
                                        });
                                      },
                                      child: fav[5] == true
                                          ? Image.asset(
                                              'assets/icons/fav.png',
                                              height: 18,
                                            )
                                          : Image.asset(
                                              'assets/icons/nfav.png',
                                              height: 18,
                                            ),
                                    ),
                                  )
                                ],
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 10, top: 1.h),
                                child: Column(
                                  children: [
                                    Container(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        'Fish for lunch',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 10,
                                            color: HexColor('#FF2501')),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          right: 18.0, top: 3),
                                      child: Container(
                                        alignment: Alignment.topLeft,
                                        width: 50.w,
                                        //color: Colors.red,
                                        child: Text(
                                          "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 7,
                                              color: HexColor('#616161')),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Row(
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  RatingBar.builder(
                                                    initialRating: 5,
                                                    updateOnDrag: false,
                                                    itemSize: 10,
                                                    minRating: 1,
                                                    direction: Axis.horizontal,
                                                    allowHalfRating: true,
                                                    itemCount: 5,
                                                    itemPadding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 0.1),
                                                    itemBuilder: (context, _) =>
                                                        Icon(
                                                      Icons.star,
                                                      color: Colors.amber,
                                                    ),
                                                    onRatingUpdate: (rating) {
                                                      print(rating);
                                                    },
                                                  ),
                                                  SizedBox(
                                                    height: 15,
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 2.0),
                                                    child: Text(
                                                      textAlign:
                                                          TextAlign.start,
                                                      '5.0',
                                                      style: TextStyle(
                                                          color: HexColor(
                                                              '#616161'),
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontSize: 6),
                                                    ),
                                                  )
                                                ],
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8.0, top: 3),
                                                child: Text(
                                                  '7,012 Reviews',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 6),
                                                ),
                                              )
                                            ],
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 20.0, top: 10),
                                            child: Text(
                                              '\$' + '125.00',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 10,
                                                  color: HexColor('#FF2501')),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 225,
                        width: 146,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: HexColor('#F2F2F4')),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const product_info()),
                            );
                          },
                          child: Column(
                            children: [
                              Stack(
                                alignment: Alignment.bottomRight,
                                children: [
                                  Image.asset('assets/icons/5.png'),
                                  Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: InkWell(
                                      onTap: () {
                                        setState(() {
                                          fav[4] = !fav[4];
                                        });
                                      },
                                      child: fav[4] == true
                                          ? Image.asset(
                                              'assets/icons/fav.png',
                                              height: 18,
                                            )
                                          : Image.asset(
                                              'assets/icons/nfav.png',
                                              height: 18,
                                            ),
                                    ),
                                  )
                                ],
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 10, top: 1.h),
                                child: Column(
                                  children: [
                                    Container(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        'Fish for lunch',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 10,
                                            color: HexColor('#FF2501')),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          right: 18.0, top: 3),
                                      child: Container(
                                        alignment: Alignment.topLeft,
                                        width: 50.w,
                                        //color: Colors.red,
                                        child: Text(
                                          "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 7,
                                              color: HexColor('#616161')),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Row(
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  RatingBar.builder(
                                                    initialRating: 5,
                                                    updateOnDrag: false,
                                                    itemSize: 10,
                                                    minRating: 1,
                                                    direction: Axis.horizontal,
                                                    allowHalfRating: true,
                                                    itemCount: 5,
                                                    itemPadding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 0.1),
                                                    itemBuilder: (context, _) =>
                                                        Icon(
                                                      Icons.star,
                                                      color: Colors.amber,
                                                    ),
                                                    onRatingUpdate: (rating) {
                                                      print(rating);
                                                    },
                                                  ),
                                                  SizedBox(
                                                    height: 15,
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 2.0),
                                                    child: Text(
                                                      textAlign:
                                                          TextAlign.start,
                                                      '5.0',
                                                      style: TextStyle(
                                                          color: HexColor(
                                                              '#616161'),
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontSize: 6),
                                                    ),
                                                  )
                                                ],
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8.0, top: 3),
                                                child: Text(
                                                  '7,012 Reviews',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 6),
                                                ),
                                              )
                                            ],
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 20.0, top: 10),
                                            child: Text(
                                              '\$' + '125.00',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 10,
                                                  color: HexColor('#FF2501')),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 0.9.h,
                      ),
                      Container(
                        height: 225,
                        width: 146,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: HexColor('#F2F2F4')),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const product_info()),
                            );
                          },
                          child: Column(
                            children: [
                              Stack(
                                alignment: Alignment.bottomRight,
                                children: [
                                  Image.asset('assets/icons/6.png'),
                                  Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: InkWell(
                                      onTap: () {
                                        setState(() {
                                          fav[5] = !fav[5];
                                        });
                                      },
                                      child: fav[5] == true
                                          ? Image.asset(
                                              'assets/icons/fav.png',
                                              height: 18,
                                            )
                                          : Image.asset(
                                              'assets/icons/nfav.png',
                                              height: 18,
                                            ),
                                    ),
                                  )
                                ],
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 10, top: 1.h),
                                child: Column(
                                  children: [
                                    Container(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        'Fish for lunch',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 10,
                                            color: HexColor('#FF2501')),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          right: 18.0, top: 3),
                                      child: Container(
                                        alignment: Alignment.topLeft,
                                        width: 50.w,
                                        //color: Colors.red,
                                        child: Text(
                                          "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 7,
                                              color: HexColor('#616161')),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Row(
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  RatingBar.builder(
                                                    initialRating: 5,
                                                    updateOnDrag: false,
                                                    itemSize: 10,
                                                    minRating: 1,
                                                    direction: Axis.horizontal,
                                                    allowHalfRating: true,
                                                    itemCount: 5,
                                                    itemPadding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 0.1),
                                                    itemBuilder: (context, _) =>
                                                        Icon(
                                                      Icons.star,
                                                      color: Colors.amber,
                                                    ),
                                                    onRatingUpdate: (rating) {
                                                      print(rating);
                                                    },
                                                  ),
                                                  SizedBox(
                                                    height: 15,
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 2.0),
                                                    child: Text(
                                                      textAlign:
                                                          TextAlign.start,
                                                      '5.0',
                                                      style: TextStyle(
                                                          color: HexColor(
                                                              '#616161'),
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontSize: 6),
                                                    ),
                                                  )
                                                ],
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8.0, top: 3),
                                                child: Text(
                                                  '7,012 Reviews',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 6),
                                                ),
                                              )
                                            ],
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 20.0, top: 10),
                                            child: Text(
                                              '\$' + '125.00',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 10,
                                                  color: HexColor('#FF2501')),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 100,
                  ),
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
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const newNotifcation()),
                      );
                    },
                    child: Image.asset(
                      'assets/icons/bell.png',
                      height: 20,
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 15,
            right: 2.h,
            child: Container(
              padding: EdgeInsets.only(bottom: 15, left: 10, right: 10),
              alignment: Alignment.bottomCenter,
              color: Colors.white,
              width: MediaQuery.of(context).size.width,
              height: 70,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(10)),
                      child: Image.asset(
                        'assets/icons/home.png',
                        scale: 4,
                        color: HexColor('#616161'),
                      ),
                    ),
                  ),
                  Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                        color: primary,
                        borderRadius: BorderRadius.circular(10)),
                    child: Image.asset(
                      'assets/icons/fire.png',
                      scale: 4,
                      color: Colors.white,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const recent()),
                      );
                    },
                    child: Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(10)),
                      child: Image.asset(
                        'assets/icons/time.png',
                        scale: 4,
                        color: icon3 == true ? Colors.white : null,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Search()),
                      );
                    },
                    child: Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(10)),
                        child: Icon(
                          Icons.search,
                          size: 35,
                          color: HexColor('#616161'),
                        )
                        /*  Image.asset(
                        'assets/icons/search.png',
                        scale: 3,
                      ), */
                        ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AccountPage()),
                      );
                    },
                    child: Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(10)),
                      child: Image.asset(
                        'assets/icons/person.png',
                        scale: 4,
                        color: icon5 == true ? Colors.white : null,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
