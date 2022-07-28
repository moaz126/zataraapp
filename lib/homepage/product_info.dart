import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';
import 'package:zataraapp/homepage/tracking_id.dart';

import '../constant.dart';

class product_info extends StatefulWidget {
  const product_info({Key? key}) : super(key: key);

  @override
  State<product_info> createState() => _product_infoState();
}

class _product_infoState extends State<product_info> {
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
                Padding(
                  padding: const EdgeInsets.only(
                      top: 39, bottom: 252, left: 41, right: 341),
                  child: Container(
                    child: Icon(
                      Icons.arrow_back_ios_rounded,
                      color: HexColor('#FF2501'),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 39, bottom: 252, left: 316, right: 52),
                  child: Container(
                    child: Icon(
                      Icons.notifications,
                      color: Color(0xFF616161),
                      size: 3.h,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 41, bottom: 252, left: 330, right: 52),
                  child: Container(
                    height: 5,
                    width: 5,
                    decoration: BoxDecoration(
                        color: primary,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 263, left: 309, right: 51),
                  child: Container(
                      child: Icon(
                    Icons.favorite,
                    color: primary,
                    size: 3.5.h,
                  )),
                )
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
                            'Favorite',
                            style: headingStylelight.copyWith(fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 5),
                            child: Image.asset('assets/icons/menu.png'),
                          ),
                          Text(
                            'Menu',
                            style: headingStylelight.copyWith(fontSize: 14),
                          ),
                        ],
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
                style: headingStylelight.copyWith(fontSize: 14),
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
                          Text(
                            '5.0',
                            style: headingStylelight.copyWith(fontSize: 14),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(
                              '7000 revews',
                              style: headingStylelight.copyWith(fontSize: 14),
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
                            '500M away',
                            style: headingStylelight.copyWith(fontSize: 14),
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
                              '5 min away',
                              style: headingStylelight.copyWith(fontSize: 14),
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
                    borderRadius: BorderRadius.circular(10), color: Colors.red),
                child: Center(
                    child: Text(
                  'Continue',
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
