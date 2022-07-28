import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:location/location.dart';
import 'package:sizer/sizer.dart';
import 'package:zataraapp/constant.dart';
import 'package:zataraapp/homepage/menu.dart';
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
            onTap: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text('hello'),
                    );
                  });
            },
            icon: BitmapDescriptor.fromBytes(markerIcon),
            markerId: MarkerId('Home'),
            position: LatLng(loc.latitude ?? 0.0, loc.longitude ?? 0.0)));

        _markers.add(Marker(
            onTap: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text('hello'),
                    );
                  });
            },
            icon: BitmapDescriptor.fromBytes(markerIcon1),
            markerId: MarkerId('new'),
            position: LatLng(31.431108, 73.124142)));

        _markers.add(Marker(
            onTap: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text('hello'),
                    );
                  });
            },
            icon: BitmapDescriptor.fromBytes(markerIcon1),
            markerId: MarkerId('new1'),
            position: LatLng(31.432684, 73.127164)));

        _markers.add(Marker(
            onTap: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text('hello'),
                    );
                  });
            },
            icon: BitmapDescriptor.fromBytes(markerIcon2),
            markerId: MarkerId('new2'),
            position: LatLng(31.434976, 73.127836)));

        _markers.add(Marker(
            onTap: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text('hello'),
                    );
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
                  Image.asset(
                    'assets/icons/bell.png',
                    height: 20,
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
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              hintText: 'Cake & Fish',
                              hintStyle: TextStyle(
                                  color: HexColor('#616161'),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14))),
                      Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                            color: primary,
                            borderRadius: BorderRadius.circular(10)),
                        child: Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
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
                          icon2 = false;
                          icon3 = false;
                          icon4 = false;
                          icon5 = false;
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
                        setState(() {
                          icon1 = false;
                          icon2 = true;
                          icon3 = false;
                          icon4 = false;
                          icon5 = false;
                        });
                      },
                      child: Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                            color: icon2 == true ? primary : Colors.transparent,
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
                        setState(() {
                          icon1 = false;
                          icon2 = false;
                          icon3 = true;
                          icon4 = false;
                          icon5 = false;
                        });
                      },
                      child: Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                            color: icon3 == true ? primary : Colors.transparent,
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
                          icon2 = false;
                          icon3 = false;
                          icon4 = true;
                          icon5 = false;
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
                        setState(() {
                          icon1 = false;
                          icon2 = false;
                          icon3 = false;
                          icon4 = false;
                          icon5 = true;
                        });
                      },
                      child: Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                            color: icon5 == true ? primary : Colors.transparent,
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
          TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  hintText: 'Cake & Fish',
                  hintStyle: TextStyle(
                      color: HexColor('#616161'),
                      fontWeight: FontWeight.w400,
                      fontSize: 14))),
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
