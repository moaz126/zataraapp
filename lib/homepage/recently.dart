import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';
import 'package:zataraapp/constants.dart';
import 'package:zataraapp/homepage/product_info.dart';
import 'package:zataraapp/signin/phoneno.dart';
import 'package:zataraapp/signin/signin.dart';
import 'package:zataraapp/signup/varifyCode.dart';

class recent extends StatefulWidget {
  const recent({Key? key}) : super(key: key);

  @override
  _recentState createState() => _recentState();
}

class _recentState extends State<recent> {
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
  List<bool> fav = [true, false, true, true, false, true];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 30.0, top: 50, right: 30),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const signin()),
                    );
                  },
                  child: Image.asset(
                    'assets/icons/back.png',
                    height: 15,
                  ),
                ),
                Image.asset(
                  'assets/icons/bell.png',
                  height: 20,
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 25, 0, 15),
              child: Container(
                alignment: Alignment.topLeft,
                child: Text(
                  'Recently Viewed',
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
                  height: 209,
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
                                padding:
                                    const EdgeInsets.only(right: 18.0, top: 3),
                                child: Container(
                                  alignment: Alignment.topLeft,
                                  width: 50.w,
                                  //color: Colors.red,
                                  child: Text(
                                    "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 5,
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
                                              itemPadding: EdgeInsets.symmetric(
                                                  horizontal: 0.1),
                                              itemBuilder: (context, _) => Icon(
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
                                              padding: const EdgeInsets.only(
                                                  left: 2.0),
                                              child: Text(
                                                textAlign: TextAlign.start,
                                                '5.0',
                                                style: TextStyle(
                                                    color: HexColor('#616161'),
                                                    fontWeight: FontWeight.w400,
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
                                                fontWeight: FontWeight.w400,
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
                Container(
                  height: 209,
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
                                padding:
                                    const EdgeInsets.only(right: 18.0, top: 3),
                                child: Container(
                                  alignment: Alignment.topLeft,
                                  width: 50.w,
                                  //color: Colors.red,
                                  child: Text(
                                    "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 5,
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
                                              itemPadding: EdgeInsets.symmetric(
                                                  horizontal: 0.1),
                                              itemBuilder: (context, _) => Icon(
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
                                              padding: const EdgeInsets.only(
                                                  left: 2.0),
                                              child: Text(
                                                textAlign: TextAlign.start,
                                                '5.0',
                                                style: TextStyle(
                                                    color: HexColor('#616161'),
                                                    fontWeight: FontWeight.w400,
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
                                                fontWeight: FontWeight.w400,
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 209,
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
                                padding:
                                    const EdgeInsets.only(right: 18.0, top: 3),
                                child: Container(
                                  alignment: Alignment.topLeft,
                                  width: 50.w,
                                  //color: Colors.red,
                                  child: Text(
                                    "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 5,
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
                                              itemPadding: EdgeInsets.symmetric(
                                                  horizontal: 0.1),
                                              itemBuilder: (context, _) => Icon(
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
                                              padding: const EdgeInsets.only(
                                                  left: 2.0),
                                              child: Text(
                                                textAlign: TextAlign.start,
                                                '5.0',
                                                style: TextStyle(
                                                    color: HexColor('#616161'),
                                                    fontWeight: FontWeight.w400,
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
                                                fontWeight: FontWeight.w400,
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
                Container(
                  height: 209,
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
                                padding:
                                    const EdgeInsets.only(right: 18.0, top: 3),
                                child: Container(
                                  alignment: Alignment.topLeft,
                                  width: 50.w,
                                  //color: Colors.red,
                                  child: Text(
                                    "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 5,
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
                                              itemPadding: EdgeInsets.symmetric(
                                                  horizontal: 0.1),
                                              itemBuilder: (context, _) => Icon(
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
                                              padding: const EdgeInsets.only(
                                                  left: 2.0),
                                              child: Text(
                                                textAlign: TextAlign.start,
                                                '5.0',
                                                style: TextStyle(
                                                    color: HexColor('#616161'),
                                                    fontWeight: FontWeight.w400,
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
                                                fontWeight: FontWeight.w400,
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 209,
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
                                padding:
                                    const EdgeInsets.only(right: 18.0, top: 3),
                                child: Container(
                                  alignment: Alignment.topLeft,
                                  width: 50.w,
                                  //color: Colors.red,
                                  child: Text(
                                    "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 5,
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
                                              itemPadding: EdgeInsets.symmetric(
                                                  horizontal: 0.1),
                                              itemBuilder: (context, _) => Icon(
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
                                              padding: const EdgeInsets.only(
                                                  left: 2.0),
                                              child: Text(
                                                textAlign: TextAlign.start,
                                                '5.0',
                                                style: TextStyle(
                                                    color: HexColor('#616161'),
                                                    fontWeight: FontWeight.w400,
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
                                                fontWeight: FontWeight.w400,
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
                Container(
                  height: 209,
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
                                padding:
                                    const EdgeInsets.only(right: 18.0, top: 3),
                                child: Container(
                                  alignment: Alignment.topLeft,
                                  width: 50.w,
                                  //color: Colors.red,
                                  child: Text(
                                    "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 5,
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
                                              itemPadding: EdgeInsets.symmetric(
                                                  horizontal: 0.1),
                                              itemBuilder: (context, _) => Icon(
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
                                              padding: const EdgeInsets.only(
                                                  left: 2.0),
                                              child: Text(
                                                textAlign: TextAlign.start,
                                                '5.0',
                                                style: TextStyle(
                                                    color: HexColor('#616161'),
                                                    fontWeight: FontWeight.w400,
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
                                                fontWeight: FontWeight.w400,
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
              height: 20,
            ),
          ],
        ),
      ),
    ));
  }
}
