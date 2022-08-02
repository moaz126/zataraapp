import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_picker_dropdown.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';
import 'package:zataraapp/signin/phoneno.dart';
import 'package:zataraapp/signin/signin.dart';
import 'package:zataraapp/signin/transition.dart';
import 'package:zataraapp/signup/phonevarifyCode.dart';
import 'package:zataraapp/signup/varifyCode.dart';

import '../constant.dart';

class signuptransition extends StatefulWidget {
  const signuptransition({Key? key}) : super(key: key);

  @override
  _signuptransitionState createState() => _signuptransitionState();
}

class _signuptransitionState extends State<signuptransition> {
  bool show = true;
  String dropdownvalue = '92';
  bool eye = true;
  String cntry = '86';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 12.h,
              ),
              Container(
                padding: EdgeInsets.only(left: 3.h, bottom: 1.h),
                alignment: Alignment.topLeft,
                child: Text(
                  "Create your account",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      fontFamily: 'poppins',
                      color: HexColor("#FF2501")),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 3.h, bottom: 3.h),
                alignment: Alignment.topLeft,
                child: Text(
                  "To use your account, you create an account first.",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: HexColor("#616161")),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 85.w,
                height: 47,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: HexColor('#F2F2F4'),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 42.w,
                      height: 41,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9),
                          color: show == true ? HexColor('#FF2501') : second),
                      child: FlatButton(
                          onPressed: () {
                            setState(() {
                              show = true;
                            });
                          },
                          child: Text(
                            "E-mail",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                                color: show == true
                                    ? HexColor('#FFFFFF')
                                    : HexColor('#616161')),
                          )),
                    ),
                    Container(
                      width: 42.w,
                      height: 41,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        color: show == false ? HexColor('#FF2501') : second,
                      ),
                      child: FlatButton(
                          onPressed: () {
                            setState(() {
                              show = false;
                            });
                          },
                          child: Text(
                            "Phone Number",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                                color: show == false
                                    ? HexColor('#FFFFFF')
                                    : HexColor('#616161')),
                          )),
                    ),
                  ],
                ),
              ),
              show == true
                  ? Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 27),
                          child: Container(
                            alignment: Alignment.center,
                            height: 6.5.h,
                            width: 85.w,
                            decoration: BoxDecoration(
                                color: HexColor('#F2F2F4'),
                                borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10, top: 1),
                              child: TextField(
                                style: TextStyle(color: HexColor('#616161')),
                                decoration: InputDecoration(
                                  hintText: '   E-mail',
                                  hintStyle: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: HexColor('#616161')),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 18),
                          child: Container(
                            alignment: Alignment.center,
                            height: 6.5.h,
                            width: 85.w,
                            decoration: BoxDecoration(
                                color: HexColor('#F2F2F4'),
                                borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: TextField(
                                style: TextStyle(color: HexColor('#616161')),
                                decoration: InputDecoration(
                                  hintText: '   Username',
                                  hintStyle: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: HexColor('#616161')),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 18),
                          child: Container(
                            alignment: Alignment.center,
                            height: 6.5.h,
                            width: 85.w,
                            decoration: BoxDecoration(
                                color: HexColor('#F2F2F4'),
                                borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: TextField(
                                style: TextStyle(color: HexColor('#616161')),
                                decoration: InputDecoration(
                                  hintText: '   Password',
                                  hintStyle: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: HexColor('#616161')),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 18),
                          child: Container(
                            alignment: Alignment.center,
                            height: 6.5.h,
                            width: 85.w,
                            decoration: BoxDecoration(
                                color: HexColor('#F2F2F4'),
                                borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: TextField(
                                style: TextStyle(color: HexColor('#616161')),
                                decoration: InputDecoration(
                                  hintText: '   Repeat password',
                                  hintStyle: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: HexColor('#616161')),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  : Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 45),
                          child: Container(
                            //height: 6.5.h,
                            width: 85.w,
                            decoration: BoxDecoration(
                                color: HexColor('#F2F2F4'),
                                borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: _buildCountryPickerDropdownSoloExpanded(),
                            ),
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 38, left: 26),
                              child: Container(
                                width: 20.w,
                                height: 6.5.h,
                                //width: 20.w,
                                decoration: BoxDecoration(
                                    color: HexColor('#F2F2F4'),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20, right: 20),
                                  /*  child: DropdownButton(
                          // Initial Value
                          value: dropdownvalue,
                          iconSize: 0.0,
                          isDense: false,
    
                          underline: SizedBox(),
                          // Down Arrow Icon
                          icon: const Icon(Icons.keyboard_arrow_down),
    
                          // Array list of items
                          items: items.map((String items) {
                            return DropdownMenuItem(
                              value: items,
                              child: Text(
                                '+' + items,
                                style: TextStyle(color: HexColor('#616161')),
                              ),
                            );
                          }).toList(),
                          // After selecting the desired option,it will
                          // change button value to selected value
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownvalue = newValue!;
                            });
                          },
                        ), */
                                  child: Container(
                                    alignment: Alignment.center,
                                    child: Text(
                                      '+' + cntry,
                                      style:
                                          TextStyle(color: HexColor('#616161')),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 38, left: 10, bottom: 19),
                              child: Container(
                                alignment: Alignment.center,
                                height: 6.5.h,
                                width: 62.5.w,
                                decoration: BoxDecoration(
                                    color: HexColor('#F2F2F4'),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: TextField(
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                      hintText: '123456789',
                                      hintStyle: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: HexColor('#616161')),
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
              Padding(
                padding: const EdgeInsets.only(top: 18),
                child: Container(
                  height: 6.5.h,
                  width: 85.w,
                  decoration: BoxDecoration(
                      color: HexColor('#FF2501'),
                      borderRadius: BorderRadius.circular(10)),
                  child: FlatButton(
                      onPressed: () {
                        show == true
                            ? Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const VarifyCode()),
                              )
                            : Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const phonevarifycode()),
                              );
                      },
                      child: Text(
                        "Continue",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: HexColor('#FFFFFF'),
                        ),
                      )),
                ),
              ),
              Row(
                children: [
                  Expanded(
                      child: Container(
                    margin: const EdgeInsets.only(left: 28.0, right: 5.0),
                    child: Divider(
                      height: 43,
                      color: HexColor('#616161'),
                    ),
                  )),
                  Text(
                    'Sign in with',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: HexColor('#616161')),
                  ),
                  Expanded(
                      child: Container(
                    margin: const EdgeInsets.only(left: 5.0, right: 28.0),
                    child: Divider(
                      color: HexColor('#616161'),
                    ),
                  )),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(26, 0, 0, 0),
                    child: Container(
                      height: 6.5.h,
                      width: 27.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: HexColor('#F2F2F4')),
                      child: Image.asset(
                        'assets/icons/google.png',
                        scale: 0.5.h,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(7, 0, 0, 0),
                    child: Container(
                        height: 6.5.h,
                        width: 27.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: HexColor('#4267B2')),
                        child: Image.asset(
                          'assets/icons/facebook.png',
                          scale: 0.5.h,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(7, 0, 0, 0),
                    child: Container(
                        height: 6.5.h,
                        width: 27.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: HexColor('#000000')),
                        child: Image.asset(
                          'assets/icons/apple.png',
                          scale: 0.5.h,
                        )),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 28),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account?',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: HexColor('#616161')),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 2.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Transition()),
                          );
                        },
                        child: Text(
                          'Sign In',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                              color: HexColor('#FF2501')),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _buildCountryPickerDropdownSoloExpanded() {
    return CountryPickerDropdown(
      /* underline: Container(
        height: 2,
        color: HexColor('#F2F2F4'),
      ), */
      //show'em (the text fields) you're in charge now
      /* onTap: () => FocusScope.of(context).requestFocus(FocusNode()), */
      //if you want your dropdown button's selected item UI to be different
      //than itemBuilder's(dropdown menu item UI), then provide this selectedItemBuilder.
      onValuePicked: (Country country) {
        setState(() {
          cntry = country.phoneCode;
        });
        print("${country.phoneCode}");
      },
      itemBuilder: (Country country) {
        return Row(
          children: <Widget>[
            SizedBox(width: 15.0),
            Transform.scale(
                child: CountryPickerUtils.getDefaultFlagImage(country),
                scale: 0.8),
            SizedBox(width: 8.0),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                country.name,
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    color: HexColor('#616161')),
              ),
            )),
          ],
        );
      },
      itemHeight: null,
      isExpanded: true,
      //initialValue: 'TR',
      icon: Padding(
        padding: const EdgeInsets.only(right: 20.0),
        child: Image.asset(
          'assets/icons/down.png',
          scale: 4,
          color: HexColor('#616161'),
        ),
      ),
    );
  }

  _buildCountryPickerDropdown(
      {bool filtered = false,
      bool sortedByIsoCode = false,
      bool hasPriorityList = false,
      bool hasSelectedItemBuilder = false}) {
    double dropdownButtonWidth = 60;
    //respect dropdown button icon size
    double dropdownItemWidth = 40;
    double dropdownSelectedItemWidth = 40;
    return Padding(
      padding: const EdgeInsets.only(left: 5.0),
      child: Container(
        height: 20,
        color: Colors.red,
        child: CountryPickerDropdown(
          iconSize: 0.0,

          /* underline: Container(
                height: 2,
                color: Colors.red,
              ),*/
          //show'em (the text fields) you're in charge now
          onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
          //if you have menu items of varying size, itemHeight being null respects
          //that, IntrinsicHeight under the hood ;).
          itemHeight: null,
          //itemHeight being null and isDense being true doesn't play along
          //well together. One is trying to limit size and other is saying
          //limit is the sky, therefore conflicts.
          //false is default but still keep that in mind.
          isDense: false,
          //if you want your dropdown button's selected item UI to be different
          //than itemBuilder's(dropdown menu item UI), then provide this selectedItemBuilder.
          selectedItemBuilder: hasSelectedItemBuilder == true
              ? (Country country) => _buildDropdownSelectedItemBuilder(
                  country, dropdownSelectedItemWidth)
              : null,
          //initialValue: 'AR',
          itemBuilder: (Country country) => hasSelectedItemBuilder == true
              ? _buildDropdownItemWithLongText(country, dropdownItemWidth)
              : _buildDropdownItem(country, dropdownItemWidth),
          initialValue: 'AR',
          itemFilter: filtered
              ? (c) => ['AR', 'DE', 'GB', 'CN'].contains(c.isoCode)
              : null,
          //priorityList is shown at the beginning of list
          priorityList: hasPriorityList
              ? [
                  CountryPickerUtils.getCountryByIsoCode('GB'),
                  CountryPickerUtils.getCountryByIsoCode('CN'),
                ]
              : null,
          sortComparator: sortedByIsoCode
              ? (Country a, Country b) => a.isoCode.compareTo(b.isoCode)
              : null,
          onValuePicked: (Country country) {
            print("${country.name}");
          },
        ),
      ),
    );
  }

  Widget _buildDropdownSelectedItemBuilder(
          Country country, double dropdownItemWidth) =>
      SizedBox();
  Widget _buildDropdownItemWithLongText(
          Country country, double dropdownItemWidth) =>
      Padding(
        padding: const EdgeInsets.all(8.0),
      );
  Widget _buildDropdownItem(Country country, double dropdownItemWidth) =>
      SizedBox(
        width: 40,
        child: Row(
          children: <Widget>[
            /*  CountryPickerUtils.getDefaultFlagImage(country), */
            SizedBox(
              width: 10.0,
            ),
            Expanded(
                child: Text(
              "+${country.phoneCode}",
              style: TextStyle(fontSize: 14),
            )),
          ],
        ),
      );
}