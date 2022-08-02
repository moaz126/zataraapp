import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';
import 'package:zataraapp/homepage/Notification.dart';
import 'package:zataraapp/homepage/menu.dart';
import 'package:zataraapp/homepage/tracking_id.dart';

import '../constant.dart';

class product_code extends StatefulWidget {
  const product_code({Key? key}) : super(key: key);

  @override
  State<product_code> createState() => _product_codeState();
}

class _product_codeState extends State<product_code> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                    height: 40.h,
                    width: 390,
                    child: Image.asset(
                      'assets/icons/pas.png',
                      fit: BoxFit.fill,
                    )),
                Positioned(
                  top: 50,
                  left: 30,
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back_ios_rounded,
                      color: HexColor('#FF2501'),
                    ),
                  ),
                ),
                Positioned(
                  top: 50,
                  right: 20,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const newNotifcation(),
                        ),
                      );
                    },
                    child: Container(
                      child: Image.asset(
                        'assets/icons/bell.png',
                        height: 20,
                      ),
                    ),
                  ),
                ),
                Positioned(
                    bottom: 10,
                    right: 10,
                    child: Icon(
                      Icons.favorite,
                      color: primary,
                      size: 3.5.h,
                    ))
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 47,
              width: 308,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xFFF2F2F4),
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Icon(Icons.bookmark, color: primary, size: 24),
                          Text(
                            'Favourite',
                            style: headingStylelight.copyWith(
                                fontSize: 14, color: HexColor('#616161')),
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 5),
                              child: Image.asset('assets/icons/menu.png'),
                            ),
                            Text(
                              'Menu',
                              style: headingStylelight.copyWith(
                                  fontSize: 14, color: HexColor('#616161')),
                            ),
                          ],
                        ),
                      ),
                    )
                  ]),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 20,
              margin: EdgeInsets.only(right: 170),
              child: Text(
                'Fish for lunch',
                style: headingStyle.copyWith(
                    fontSize: 18, color: primary, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 45,
              width: 298,
              child: Text(
                'Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book',
                style: headingStylelight.copyWith(
                    fontSize: 14, color: HexColor('#616161')),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(right: 35),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          RatingBar.builder(
                            itemSize: 25,
                            initialRating: 3,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemPadding: EdgeInsets.symmetric(horizontal: 0.0),
                            itemBuilder: (context, _) => Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            onRatingUpdate: (rating) {
                              print(rating);
                            },
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Text(
                            '5.0',
                            style: headingStylelight.copyWith(
                              fontSize: 14,
                              color: HexColor('#616161'),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(
                              '7000 reviews',
                              style: headingStylelight.copyWith(
                                  fontSize: 14, color: HexColor('#616161')),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 13),
                  child: Row(
                    children: [
                      Text(
                        '\$125.00',
                        style: headingStyle.copyWith(
                            fontSize: 18,
                            color: primary,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
              ),
            ]),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 60),
                child: Row(
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: Icon(
                              Icons.location_pin,
                              color: primary,
                            ),
                          ),
                          Text(
                            '500 M away',
                            style: headingStylelight.copyWith(
                                fontSize: 14, color: HexColor('#616161')),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 50),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Icon(
                                Icons.access_time_filled_rounded,
                                color: primary,
                              ),
                            ),
                            Text(
                              '5 min by walk',
                              style: headingStylelight.copyWith(
                                fontSize: 14,
                                color: HexColor('#616161'),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 70,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const orderTracking()),
                );
              },
              child: Container(
                height: 47,
                width: 308,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue),
                child: Center(
                    child: Text(
                  '231254',
                  style: TextStyle(color: Colors.white, fontSize: 14),
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
