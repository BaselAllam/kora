import 'package:doctor/screens/searchResult.dart';
import 'package:doctor/theme/sharedTextStyleAndColor.dart';
import 'package:doctor/widgets/fields.dart';
import 'package:doctor/widgets/searchicon.dart';
import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';




class ChooseLocation extends StatefulWidget {

  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  TextEditingController searchController = TextEditingController();
  GlobalKey<FormState> searchKey = GlobalKey<FormState>();

  Position? position;

  @override
  void initState() {
    currentPosition();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          'Choose Location',
          style: primaryTextStyle
        ),
        iconTheme: IconThemeData(color: primaryColor, size: 30.0),
        actions: [
          SearchButton(() {})
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_forward_ios),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) {return SearchResult();}));
        },
      ),
      body: Container(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            field(
              'Search Location',
              Icons.location_on,
              TextInputType.text,
              searchController,
              searchKey,
              onSubmmit: () {
                searchLocation(searchController.text);
              }
            ),
            Container(
              height: MediaQuery.of(context).size.height/1.3,
              child: GoogleMap(
                initialCameraPosition: CameraPosition(
                  zoom: 12,
                  target: LatLng(position!.latitude, position!.longitude)
                ),
                myLocationButtonEnabled: true,
                myLocationEnabled: true,
                mapType: MapType.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
  currentPosition() async {

    Position _position = await Geolocator.getCurrentPosition();
    setState(() {
      position = _position;
    });
  }
  searchLocation(String address) async {

    List<Location> _result = await locationFromAddress(address);
    setState(() {
      position = Position(
        latitude: _result[0].latitude,
        longitude: _result[0].longitude,
        accuracy: 0.0,
        altitude: 0.0,
        heading: 0.0,
        speed: 0.0,
        speedAccuracy: 0.0,
        timestamp: DateTime(1990),
        floor: 1,
        isMocked: true
      );
    });
  }
}