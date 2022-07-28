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
          child: Image.asset('assets/icons/back.png'),
        )
      ],
    ));
  }
}
