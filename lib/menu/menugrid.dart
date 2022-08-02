import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';
import 'package:zataraapp/constants.dart';
import 'package:zataraapp/homepage/Notification.dart';
import 'package:zataraapp/homepage/product_info.dart';
import 'package:zataraapp/signin/phoneno.dart';
import 'package:zataraapp/signin/signin.dart';
import 'package:zataraapp/signup/varifyCode.dart';

class Menugrid extends StatefulWidget {
  const Menugrid({Key? key}) : super(key: key);

  @override
  _MenugridState createState() => _MenugridState();
}

class _MenugridState extends State<Menugrid> {
  List<String> img = [
    'assets/icons/1.png',
    'assets/icons/2.png',
    'assets/icons/3.png',
    'assets/icons/4.png',
    'assets/icons/5.png',
    'assets/icons/6.png',
    'assets/icons/5.png',
    'assets/icons/6.png',
  ];
  bool show1 = true;
  bool show2 = false;
  bool show3 = false;
  bool show4 = false;
  List<bool> fav = [true, false, true, true, false, true, false, true];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 10),
      child: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 25, 0, 15),
                  child: Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'What will we order?',
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
                GridView.count(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    childAspectRatio: 0.75,
                    crossAxisCount: 2,
                    crossAxisSpacing: 4.0,
                    mainAxisSpacing: 8,
                    children: List.generate(
                        img.length,
                        (index) => Container(
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
                                        builder: (context) =>
                                            const product_info()),
                                  );
                                },
                                child: Column(
                                  children: [
                                    Stack(
                                      alignment: Alignment.bottomRight,
                                      children: [
                                        Image.asset(img[index]),
                                        Padding(
                                          padding: const EdgeInsets.all(12.0),
                                          child: InkWell(
                                            onTap: () {
                                              setState(() {
                                                fav[index] = !fav[index];
                                              });
                                            },
                                            child: fav[index] == true
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
                                      padding:
                                          EdgeInsets.only(left: 10, top: 1.h),
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
                                                          direction:
                                                              Axis.horizontal,
                                                          allowHalfRating: true,
                                                          itemCount: 5,
                                                          itemPadding: EdgeInsets
                                                              .symmetric(
                                                                  horizontal:
                                                                      0.1),
                                                          itemBuilder:
                                                              (context, _) =>
                                                                  Icon(
                                                            Icons.star,
                                                            color: Colors.amber,
                                                          ),
                                                          onRatingUpdate:
                                                              (rating) {
                                                            print(rating);
                                                          },
                                                        ),
                                                        SizedBox(
                                                          height: 15,
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  left: 2.0),
                                                          child: Text(
                                                            textAlign:
                                                                TextAlign.start,
                                                            '5.0',
                                                            style: TextStyle(
                                                                color: HexColor(
                                                                    '#616161'),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                fontSize: 6),
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 8.0,
                                                              top: 3),
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
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 20.0, top: 10),
                                                  child: Text(
                                                    '\$' + '125.00',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        fontSize: 10,
                                                        color: HexColor(
                                                            '#FF2501')),
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
                            ))),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
