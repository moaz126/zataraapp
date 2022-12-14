import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:location/location.dart';
import 'package:sizer/sizer.dart';
import 'package:zataraapp/constant.dart';
import 'package:zataraapp/homepage/menu.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);
  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  GoogleMapController? _controller;
  Location currentLocation = Location();
  Set<Marker> _markers = {};

  void getLocation() async {
    var location = await currentLocation.getLocation();
    currentLocation.onLocationChanged.listen((LocationData loc) {
      _controller
          ?.animateCamera(CameraUpdate.newCameraPosition(new CameraPosition(
        target: LatLng(loc.latitude ?? 0.0, loc.longitude ?? 0.0),
        zoom: 12.0,
      )));
      print(loc.latitude);
      print(loc.longitude);
      setState(() {
        _markers.add(Marker(
            markerId: MarkerId('Home'),
            position: LatLng(loc.latitude ?? 0.0, loc.longitude ?? 0.0)));
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
                        width: 47,
                        height: 47,
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
              bottom: 20,
              left: 30,
              child: Container(
                alignment: Alignment.bottomCenter,
                width: 80.w,
                height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 47,
                      height: 47,
                      decoration: BoxDecoration(
                          color: primary,
                          borderRadius: BorderRadius.circular(10)),
                      child: Image.asset(
                        'assets/icons/home.png',
                        scale: 3,
                      ),
                    ),
                    Container(
                      width: 47,
                      height: 47,
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(10)),
                      child: Image.asset(
                        'assets/icons/heart.png',
                        scale: 3,
                      ),
                    ),
                    Container(
                      width: 47,
                      height: 47,
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(10)),
                      child: Image.asset(
                        'assets/icons/navi.png',
                        scale: 3,
                      ),
                    ),
                    Container(
                        width: 47,
                        height: 47,
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(10)),
                        child: Icon(
                          Icons.search,
                          size: 35,
                          color: HexColor('#616161'),
                        )
                        /*  Image.asset(
                        'assets/icons/search.png',
                        scale: 3,
                      ), */
                        ),
                    Container(
                      width: 47,
                      height: 47,
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(10)),
                      child: Image.asset(
                        'assets/icons/person.png',
                        scale: 3,
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
        padding: const EdgeInsets.only(bottom: 70.0, right: 10),
        child: FloatingActionButton(
          backgroundColor: primary,
          child: Icon(
            Icons.location_searching,
            color: Colors.white,
          ),
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
}
