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
