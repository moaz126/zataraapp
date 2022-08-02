import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';
import 'package:zataraapp/constant.dart';

class SuccessDialogBox extends StatelessWidget {
  final String message;
  final Function function;
  const SuccessDialogBox(
      {Key? key, required this.message, required this.function})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 1,
      backgroundColor: Colors.white,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 3.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Lottie.asset('assets/icons/check-done.json',
                height: 16.h, width: 26.w),
            SizedBox(
              height: 1.h,
            ),
            Text(
              "Success",
              style: GoogleFonts.montserrat(
                  // letterSpacing: 1,
                  fontSize: 14.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 1.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 6.w),
              child: Text(
                message,
                textAlign: TextAlign.center,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: GoogleFonts.montserrat(
                    // letterSpacing: 1,
                    fontSize: 11.sp,
                    color: Colors.grey,
                    fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: InkWell(
                onTap: () {
                  function();
                },
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: primary, borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: EdgeInsets.only(top: 1.h, bottom: 1.h),
                    child: Center(
                        child: Text(
                      'OK',
                      style: GoogleFonts.montserrat(
                          // letterSpacing: 2.5,
                          fontSize: 12.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.w400),
                    )),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
