import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:zataraapp/constant.dart';

class newNotifcation extends StatelessWidget {
  const newNotifcation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios_rounded,
            color: primary,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 17),
            child: Text(
              ' Your Notification',
              style: TextStyle(
                  color: primary, fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20),
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 12.0,
                    ),
                    child: Container(
                      height: 80,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: HexColor('#F2F2F4')),
                      child: ListTile(
                        leading: Padding(
                          padding: const EdgeInsets.only(bottom: 1),
                          child: CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage(
                              'assets/icons/2.png',
                            ),
                          ),
                        ),
                        title: Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Fish for lunch ',
                                    style: TextStyle(
                                        color: primary,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text('Hot ones offer')
                                ],
                              ),
                              Row(
                                children: [
                                  Text('near by'),
                                  Text(
                                    ' cake cafa',
                                    style: TextStyle(
                                        color: primary,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 12.0,
                    ),
                    child: Container(
                      height: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: HexColor('#F2F2F4')),
                      child: ListTile(
                        leading: Padding(
                          padding: const EdgeInsets.only(bottom: 1),
                          child: CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage(
                              'assets/icons/1.png',
                            ),
                          ),
                        ),
                        title: Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Fish for lunch ',
                                    style: TextStyle(
                                        color: primary,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text('Hot ones offer')
                                ],
                              ),
                              Row(
                                children: [
                                  Text('near by'),
                                  Text(
                                    ' cake cafa',
                                    style: TextStyle(
                                        color: primary,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 12.0,
                    ),
                    child: Container(
                      height: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: HexColor('#F2F2F4')),
                      child: ListTile(
                        leading: Padding(
                          padding: const EdgeInsets.only(bottom: 1),
                          child: CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage(
                              'assets/icons/3.png',
                            ),
                          ),
                        ),
                        title: Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Fish for lunch ',
                                    style: TextStyle(
                                        color: primary,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text('Hot ones offer')
                                ],
                              ),
                              Row(
                                children: [
                                  Text('near by'),
                                  Text(
                                    ' cake cafa',
                                    style: TextStyle(
                                        color: primary,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 12.0,
                    ),
                    child: Container(
                      height: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: HexColor('#F2F2F4')),
                      child: ListTile(
                        leading: Padding(
                          padding: const EdgeInsets.only(bottom: 1),
                          child: CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage(
                              'assets/icons/4.png',
                            ),
                          ),
                        ),
                        title: Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Fish for lunch ',
                                    style: TextStyle(
                                        color: primary,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text('Hot ones offer')
                                ],
                              ),
                              Row(
                                children: [
                                  Text('near by'),
                                  Text(
                                    ' cake cafa',
                                    style: TextStyle(
                                        color: primary,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 12.0,
                    ),
                    child: Container(
                      height: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: HexColor('#F2F2F4')),
                      child: ListTile(
                        leading: Padding(
                          padding: const EdgeInsets.only(bottom: 1),
                          child: CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage(
                              'assets/icons/5.png',
                            ),
                          ),
                        ),
                        title: Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Fish for lunch ',
                                    style: TextStyle(
                                        color: primary,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text('Hot ones offer')
                                ],
                              ),
                              Row(
                                children: [
                                  Text('near by'),
                                  Text(
                                    ' cake cafa',
                                    style: TextStyle(
                                        color: primary,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 12.0,
                    ),
                    child: Container(
                      height: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: HexColor('#F2F2F4')),
                      child: ListTile(
                        leading: Padding(
                          padding: const EdgeInsets.only(bottom: 1),
                          child: CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage(
                              'assets/icons/6.png',
                            ),
                          ),
                        ),
                        title: Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Fish for lunch ',
                                    style: TextStyle(
                                        color: primary,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text('Hot ones offer')
                                ],
                              ),
                              Row(
                                children: [
                                  Text('near by'),
                                  Text(
                                    ' cake cafa',
                                    style: TextStyle(
                                        color: primary,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 12.0,
                    ),
                    child: Container(
                      height: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: HexColor('#F2F2F4')),
                      child: ListTile(
                        leading: Padding(
                          padding: const EdgeInsets.only(bottom: 1),
                          child: CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage(
                              'assets/icons/2.png',
                            ),
                          ),
                        ),
                        title: Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Fish for lunch ',
                                    style: TextStyle(
                                        color: primary,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text('Hot ones offer')
                                ],
                              ),
                              Row(
                                children: [
                                  Text('near by'),
                                  Text(
                                    ' cake cafa',
                                    style: TextStyle(
                                        color: primary,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 12.0,
                    ),
                    child: Container(
                      height: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: HexColor('#F2F2F4')),
                      child: ListTile(
                        leading: Padding(
                          padding: const EdgeInsets.only(bottom: 1),
                          child: CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage(
                              'assets/icons/2.png',
                            ),
                          ),
                        ),
                        title: Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Fish for lunch ',
                                    style: TextStyle(
                                        color: primary,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text('Hot ones offer')
                                ],
                              ),
                              Row(
                                children: [
                                  Text('near by'),
                                  Text(
                                    ' cake cafa',
                                    style: TextStyle(
                                        color: primary,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 12.0,
                    ),
                    child: Container(
                      height: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: HexColor('#F2F2F4')),
                      child: ListTile(
                        leading: Padding(
                          padding: const EdgeInsets.only(bottom: 1),
                          child: CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage(
                              'assets/icons/2.png',
                            ),
                          ),
                        ),
                        title: Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Fish for lunch ',
                                    style: TextStyle(
                                        color: primary,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text('Hot ones offer')
                                ],
                              ),
                              Row(
                                children: [
                                  Text('near by'),
                                  Text(
                                    ' cake cafa',
                                    style: TextStyle(
                                        color: primary,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
