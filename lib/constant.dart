import 'package:flutter/material.dart';

const Color primary = Color(0xFFFF2501);

const headingStyle = TextStyle(fontFamily: 'poppins',);

const headingStylelight = TextStyle(fontFamily: 'poppinslight',fontSize: 14,);
const headingStylelightbold = TextStyle(fontFamily: 'poppinslight',fontSize: 16,);


appButton(String title){
  return ElevatedButton(onPressed: (){}, child: Text(title));
}