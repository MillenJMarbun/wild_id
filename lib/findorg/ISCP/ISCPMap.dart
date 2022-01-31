import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:wild_id/Constants/constants.dart';

class ISCPMap extends StatefulWidget {
  @override
  _ISCPMapState createState() => _ISCPMapState();
}

class _ISCPMapState extends State<ISCPMap> {
  bool _loading = true;
  Location location = new Location();
  bool _serviceEnabled;
  PermissionStatus _permissionGranted;
  LocationData _locationData;
  GoogleMapController mapController; //controller for Google map
  final Set<Marker> markers = new Set(); //markers for google map
  static const LatLng showLocation = const LatLng(3.5517726373178977, 98.64755464006349); //location to show in map
  var lat, long;

  @override
  void initState() {
    super.initState();
    _getCurrentLocation();
  }

  _getCurrentLocation() async {
    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled) {
        return;
      }
    }

    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        return;
      }
    }
    _locationData = await location.getLocation();
    setState(() {
      lat = _locationData.latitude;
      long = _locationData.longitude;
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      appBar: AppBar(
        title: Text(
          "ISCP Indonesia Map",
          style: GoogleFonts.sora(
              textStyle: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              )),
        ),
        backgroundColor: maincol,
      ),
      body: SafeArea(
        child: _loading
            ? Center(
          child: CircularProgressIndicator(),
        )
            : GoogleMap(
          //Map widget from google_maps_flutter package
          zoomGesturesEnabled: true,
          //enable Zoom in, out on map
          initialCameraPosition: CameraPosition(
            //innital position in map
            target: showLocation, //initial position
            zoom: 10, //initial zoom level
          ),
          markers: getmarkers(),
          //markers to show on map
          mapType: MapType.normal,
          //map type
          onMapCreated: (controller) {
            //method called when map is created
            setState(() {
              mapController = controller;
            });
          },
        ),
      ),
    );
  }

  Set<Marker> getmarkers() {
    //markers to place on map
    setState(() {
      markers.add(Marker(
        //add first marker
        markerId: MarkerId(showLocation.toString()),
        position: showLocation, //position of marker
        infoWindow: InfoWindow(
          //popup info
          title: 'ISCP',
          snippet: 'INDONESIAN SPECIES CONSERVATION PROGRAM',
        ),
        icon: BitmapDescriptor.defaultMarker, //Icon for Marker
      ));

      markers.add(
          Marker(
            //add second marker
            markerId: MarkerId(showLocation.toString()),
            position: LatLng(lat, long),
            //position of marker
            infoWindow: InfoWindow(
              //popup info
              title: 'Your Location',
              snippet: 'You Are Here',
            ),
            icon: BitmapDescriptor.defaultMarker, //Icon for Marker
          ));

/*
      markers.add(Marker( //add third marker
        markerId: MarkerId(showLocation.toString()),
        position: LatLng(-6.188620, 106.893820), //position of marker
        infoWindow: InfoWindow( //popup info
          title: 'Marker Title Third ',
          snippet: 'My Custom Subtitle',
        ),
        icon: BitmapDescriptor.defaultMarker, //Icon for Marker
      ));*/

      //add more markers here
    });

    return markers;
  }
}
