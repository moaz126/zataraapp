import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:location/location.dart';
import 'package:sizer/sizer.dart';
import 'package:zataraapp/constant.dart';
import 'package:zataraapp/homepage/Notification.dart';
import 'package:zataraapp/homepage/account.dart';
import 'package:zataraapp/homepage/hot.dart';
import 'package:zataraapp/homepage/menu.dart';
import 'package:zataraapp/homepage/product_info.dart';
import 'package:zataraapp/homepage/recently.dart';
import 'dart:ui' as ui;

import 'package:zataraapp/homepage/search.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);
  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  GoogleMapController? _controller;
  Location currentLocation = Location();
  Set<Marker> _markers = {};

  Future<Uint8List> getBytesFromAsset(String path, int width) async {
    ByteData data = await rootBundle.load(path);
    ui.Codec codec = await ui.instantiateImageCodec(data.buffer.asUint8List(),
        targetWidth: width);
    ui.FrameInfo fi = await codec.getNextFrame();
    return (await fi.image.toByteData(format: ui.ImageByteFormat.png))!
        .buffer
        .asUint8List();
  }

  bool icon1 = true;
  bool icon2 = false;
  bool icon3 = false;
  bool icon4 = false;
  bool icon5 = false;
  bool showSearch = false;
  bool showbox = false;

  void getLocation() async {
    final Uint8List markerIcon =
        await getBytesFromAsset('assets/icons/myloc.png', 30);
    final Uint8List markerIcon1 =
        await getBytesFromAsset('assets/icons/past.png', 60);
    final Uint8List markerIcon2 =
        await getBytesFromAsset('assets/icons/past2.png', 60);
    final Uint8List markerIcon3 =
        await getBytesFromAsset('assets/icons/past.png', 60);
    var location = await currentLocation.getLocation();
    currentLocation.onLocationChanged.listen((LocationData loc) {
      _controller
          ?.animateCamera(CameraUpdate.newCameraPosition(new CameraPosition(
        target: LatLng(loc.latitude ?? 0.0, loc.longitude ?? 0.0),
        zoom: 15.0,
      )));
      print(loc.latitude);
      print(loc.longitude);
      setState(() {
        _markers.add(Marker(
            icon: BitmapDescriptor.fromBytes(markerIcon),
            markerId: MarkerId('Home'),
            position: LatLng(loc.latitude ?? 0.0, loc.longitude ?? 0.0)));

        _markers.add(Marker(
            onTap: () {
              setState(() {
                showbox = true;
              });
            },
            icon: BitmapDescriptor.fromBytes(markerIcon1),
            markerId: MarkerId('new'),
            position: LatLng(31.431108, 73.124142)));

        _markers.add(Marker(
            onTap: () {
              setState(() {
                showbox = true;
              });
            },
            icon: BitmapDescriptor.fromBytes(markerIcon1),
            markerId: MarkerId('new1'),
            position: LatLng(31.432684, 73.127164)));

        _markers.add(Marker(
            onTap: () {
              setState(() {
                showbox = true;
              });
            },
            icon: BitmapDescriptor.fromBytes(markerIcon2),
            markerId: MarkerId('new2'),
            position: LatLng(31.434976, 73.127836)));

        _markers.add(Marker(
            onTap: () {
              setState(() {
                showbox = true;
              });
            },
            icon: BitmapDescriptor.fromBytes(markerIcon3),
            markerId: MarkerId('new3'),
            position: LatLng(31.434475, 73.124897)));
      });
    });
  }

  @override
  void initState() {
    super.initState();
    setState(() {
      getLocation();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: GoogleMap(
                onTap: (argument) {
                  showbox = false;
                },
                zoomControlsEnabled: false,
                initialCameraPosition: CameraPosition(
                  target: LatLng(48.8561, 2.2930),
                  zoom: 12.0,
                ),
                onMapCreated: (GoogleMapController controller) {
                  _controller = controller;
                },
                markers: _markers,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40.0, left: 40, right: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      /* Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const signin()),
                        ); */
                    },
                    child: Image.asset(
                      'assets/icons/back.png',
                      height: 15,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const newNotifcation()),
                      );
                    },
                    child: Image.asset(
                      'assets/icons/bell.png',
                      height: 20,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 70.0, left: 40),
              child: Container(
                width: 75.w,
                decoration: BoxDecoration(
                    color: HexColor('#F2F2F4'),
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: showSearch == true ? _showSearchBox() : SizedBox()),
              ),
            ),
            Positioned(
                bottom: 60,
                left: 30,
                child: showbox == true ? _showBox() : SizedBox()),
            Positioned(
              bottom: 25,
              left: 30,
              child: Container(
                alignment: Alignment.bottomCenter,
                width: 80.w,
                height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          icon1 = true;

                          icon4 = false;
                          showSearch = false;
                        });
                      },
                      child: Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                            color: icon1 == true ? primary : Colors.transparent,
                            borderRadius: BorderRadius.circular(10)),
                        child: Image.asset(
                          'assets/icons/home.png',
                          scale: 4,
                          color: icon1 == true
                              ? Colors.white
                              : HexColor('#616161'),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const hot()),
                        );
                      },
                      child: Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(10)),
                        child: Image.asset(
                          'assets/icons/fire.png',
                          scale: 4,
                          color: icon2 == true ? Colors.white : null,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const recent()),
                        );
                      },
                      child: Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(10)),
                        child: Image.asset(
                          'assets/icons/time.png',
                          scale: 4,
                          color: icon3 == true ? Colors.white : null,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          icon1 = false;

                          icon4 = true;

                          showSearch = true;
                        });
                      },
                      child: Container(
                          width: 45,
                          height: 45,
                          decoration: BoxDecoration(
                              color:
                                  icon4 == true ? primary : Colors.transparent,
                              borderRadius: BorderRadius.circular(10)),
                          child: Icon(
                            Icons.search,
                            size: 35,
                            color: icon4 == true
                                ? Colors.white
                                : HexColor('#616161'),
                          )
                          /*  Image.asset(
                          'assets/icons/search.png',
                          scale: 3,
                        ), */
                          ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AccountPage()),
                        );
                      },
                      child: Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(10)),
                        child: Image.asset(
                          'assets/icons/person.png',
                          scale: 4,
                          color: icon5 == true ? Colors.white : null,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 70, right: 10),
        child: FloatingActionButton(
          backgroundColor: Colors.transparent,
          elevation: 0,
          child: Image.asset('assets/icons/search-loc.png'),
          onPressed: () {
            getLocation();
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Menu()),
            );
          },
        ),
      ),
    );
  }

  _showSearchBox() {
    return Container(
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
            child: AbsorbPointer(
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

  _showBox() {
    return Container(
      decoration: BoxDecoration(
        color: HexColor('#F2F2F4'),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 50),
                child: Container(
                  width: 150,
                  child: Column(children: [
                    Image.asset(
                      'assets/icons/pas.png',
                      height: 120,
                      width: 120,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RatingBar.builder(
                          ignoreGestures: true,
                          itemSize: 18,
                          initialRating: 5,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemPadding: EdgeInsets.symmetric(horizontal: 0.0),
                          itemBuilder: (context, _) => Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 5),
                          child: Text(
                            '5.0',
                            style: headingStylelight.copyWith(fontSize: 11),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '7000 revews',
                          style: headingStylelight.copyWith(fontSize: 14),
                        ),
                      ],
                    ),
                  ]),
                ),
              ),
              Container(
                width: 150,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 60),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 40, top: 15),
                        child: Text(
                          'Fish for lunch',
                          style: TextStyle(
                              color: primary,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'lorem Ipsum has been the industry standard dummy text ever sincw the 1500s,when an ',
                        maxLines: 3,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_pin,
                            color: primary,
                            size: 15,
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Text(
                            '500M away',
                            style: headingStylelight.copyWith(fontSize: 14),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.access_time_filled_rounded,
                              color: primary,
                              size: 15,
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Text(
                              '500 M by walk',
                              style: headingStylelight.copyWith(fontSize: 14),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const product_info()),
                );
              },
              child: Container(
                height: 31,
                width: 121,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: primary,
                ),
                child: Center(
                    child: Text(
                  'Preview',
                  style: TextStyle(color: Colors.white),
                )),
              ),
            ),
          )
        ],
      ),
    );
  }
}
