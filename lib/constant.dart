import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

const Color primary = Color(0xFFFF2501);
Color second = HexColor('#F2F2F4');

const headingStyle = TextStyle(
  fontFamily: 'poppins',
);

const headingStylelight = TextStyle(
  fontFamily: 'poppinslight',
  fontSize: 14,
);
const headingStylelightbold = TextStyle(
  fontFamily: 'poppinslight',
  fontSize: 16,
);

appButton(String title) {
  return ElevatedButton(onPressed: () {}, child: Text(title));
}

bool hot1 = false;
bool transfer = false;

bool x = false;
bool y = false;
int z = 0;
