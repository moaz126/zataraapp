import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:sizer/sizer.dart';

import '../constant.dart';

class orderTracking extends StatefulWidget {
  const orderTracking({Key? key}) : super(key: key);

  @override
  State<orderTracking> createState() => _orderTrackingState();
}

class _orderTrackingState extends State<orderTracking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back_ios_outlined, color: primary)),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 30, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text('Order tracking Id',
                    style: headingStyle.copyWith(color: primary, fontSize: 20))
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  'Tracking Number',
                  style: headingStyle.copyWith(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Text(
                  '112232433484734729387483',
                  style: headingStylelight.copyWith(
                    color: Colors.black,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Location',
                        style: headingStyle.copyWith(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'USA',
                        style: headingStylelight.copyWith(
                          color: Colors.black,
                          fontSize: 14,
                        ),
                      )
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Order Date',
                      style: headingStyle.copyWith(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Tue | 14.06.22 | 11:30 ',
                      style: headingStylelight.copyWith(
                        color: Colors.black,
                        fontSize: 14,
                      ),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Text(
                  'E-mail',
                  style: headingStyle.copyWith(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Text(
                  'royarichn99@gmail.com',
                  style: headingStylelight.copyWith(
                    color: Colors.black,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(children: [
              Text(
                'Name',
                style: headingStyle.copyWith(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ]),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Text(
                  'royarichn',
                  style: headingStylelight.copyWith(
                    color: Colors.black,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                QrImage(
                  data: "1234567890",
                  version: QrVersions.auto,
                  size: 170.0,
                ),
                SizedBox(
                  width: 13,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/icons/alerticon.png',
                            height: 14,
                            width: 14,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Expanded(
                            child: Text(
                              'To open the locker Scan the QR Code or enter the code',
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/icons/alerticon.png',
                              height: 14,
                              width: 14,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Expanded(
                              child: Text(
                                'To open the locker Scan the QR Code or enter the code',
                              ),
                            ),
                          ]),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Shopping Code',
                        style: headingStyle.copyWith(
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '584 394 399',
                        style: headingStylelight.copyWith(fontSize: 14),
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 70,
            ),
            Container(
              width: 308,
              height: 47,
              child: Center(
                  child: Text(
                'Continue',
                style: headingStylelight.copyWith(color: Colors.white),
              )),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: primary,
              ),
            )
          ],
        ),
      ),
    );
  }
}
