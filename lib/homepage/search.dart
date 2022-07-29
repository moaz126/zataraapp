import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';
import 'package:zataraapp/constants.dart';
import 'package:zataraapp/homepage/product_info.dart';
import 'package:zataraapp/signin/phoneno.dart';
import 'package:zataraapp/signin/signin.dart';
import 'package:zataraapp/signup/varifyCode.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          padding: EdgeInsets.only(top: 40, left: 45),
          alignment: Alignment.bottomLeft,
          child: Image.asset(
            'assets/icons/back.png',
            height: 15,
          ),
        ),
        SizedBox(
          height: 2.h,
        ),
        _showSearchBox(),
        Container(
          padding: EdgeInsets.only(left: 45, top: 2.h),
          alignment: Alignment.topLeft,
          child: Text(
            'People searched for',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
          ),
        ),
        Container(
          width: 85.w,
          height: 5.h,
          child: ListTile(
            leading: Icon(Icons.search),
            title: Text(
              'Elecriclan',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: HexColor('#616161')),
            ),
            trailing: Image.asset(
              'assets/icons/arrow.png',
              height: 15,
            ),
          ),
        ),
        Container(
          width: 85.w,
          height: 5.h,
          child: ListTile(
            leading: Icon(Icons.search),
            title: Text(
              'Tasker near me',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: HexColor('#616161')),
            ),
            trailing: Image.asset(
              'assets/icons/arrow.png',
              height: 15,
            ),
          ),
        ),
        Container(
          width: 85.w,
          height: 5.h,
          child: ListTile(
            leading: Icon(Icons.search),
            title: Text(
              'Compurter Ergineer',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: HexColor('#616161')),
            ),
            trailing: Image.asset(
              'assets/icons/arrow.png',
              height: 15,
            ),
          ),
        ),
        Container(
          width: 85.w,
          height: 5.h,
          child: ListTile(
            leading: Icon(Icons.search),
            title: Text(
              'Free ride',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: HexColor('#616161')),
            ),
            trailing: Image.asset(
              'assets/icons/arrow.png',
              height: 15,
            ),
          ),
        ),
        Container(
          width: 85.w,
          height: 5.h,
          child: ListTile(
            leading: Icon(Icons.search),
            title: Text(
              'Elecriclan',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: HexColor('#616161')),
            ),
            trailing: Image.asset(
              'assets/icons/arrow.png',
              height: 15,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 45, top: 3.h),
          alignment: Alignment.topLeft,
          child: Text(
            'Popular categaries',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
          ),
        ),
        SizedBox(
          height: 2.h,
        ),
        Container(
          width: 78.w,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                alignment: Alignment.center,
                width: 45.w,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: HexColor('#F2F2F4')),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/icons/shopping.png',
                      height: 20,
                    ),
                    Text(
                      'Shopping',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: HexColor('#616161')),
                    )
                  ],
                ),
              ),
              Container(
                alignment: Alignment.center,
                width: 31.w,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: HexColor('#F2F2F4')),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/icons/food.png',
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: Text(
                        'Food',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: HexColor('#616161')),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 1.h,
        ),
        Container(
          width: 78.w,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                alignment: Alignment.center,
                width: 24.w,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: HexColor('#F2F2F4')),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/icons/books.png',
                      height: 20,
                    ),
                    Text(
                      'Books',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: HexColor('#616161')),
                    )
                  ],
                ),
              ),
              Container(
                alignment: Alignment.center,
                width: 27.w,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: HexColor('#F2F2F4')),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/icons/food.png',
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: Text(
                        'Hospital',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: HexColor('#616161')),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                alignment: Alignment.center,
                width: 24.w,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: HexColor('#F2F2F4')),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/icons/food.png',
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: Text(
                        'Movie',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: HexColor('#616161')),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 1.h,
        ),
        Container(
          width: 78.w,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                alignment: Alignment.center,
                width: 45.w,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: HexColor('#F2F2F4')),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/icons/sport.png',
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: Text(
                        'Sports',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: HexColor('#616161')),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                alignment: Alignment.center,
                width: 31.w,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: HexColor('#F2F2F4')),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/icons/coffee.png',
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: Text(
                        'Coffee',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: HexColor('#616161')),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    ));
  }

  _showSearchBox() {
    return Container(
      width: 75.w,
      decoration: BoxDecoration(
          color: HexColor('#F2F2F4'), borderRadius: BorderRadius.circular(10)),
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Search()),
              );
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      hintText: 'Cake & Fish',
                      hintStyle: TextStyle(
                          color: HexColor('#616161'),
                          fontWeight: FontWeight.w400,
                          fontSize: 14))),
            ),
          ),
          Container(
            width: 45,
            height: 45,
            decoration: BoxDecoration(
                color: primary, borderRadius: BorderRadius.circular(10)),
            child: Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
