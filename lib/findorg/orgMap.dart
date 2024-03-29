import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:wild_id/Constants/constants.dart';

class orgMap extends StatefulWidget {
  @override
  _orgMapState createState() => _orgMapState();

  final double lat2, lng2;
  final String tit, snip;
  const orgMap ({ Key key, @required this.lat2, @required this.lng2, @required this.tit, @required this.snip }): super(key: key);
}

class _orgMapState extends State<orgMap> {
  bool _loading = true;
  Location location = new Location();
  bool _serviceEnabled;
  PermissionStatus _permissionGranted;
  LocationData _locationData;
  GoogleMapController mapController; //controller for Google map
  final Set<Marker> markers = new Set(); //markers for google map
  var lat, long;

  @override
  void initState() {
    super.initState();
    _getCurrentLocation();
  }

  _getCurrentLocation() async {

    ///In order to request location, you should always check Location Service status and Permission status manually

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
    LatLng showLocation = LatLng(widget.lat2, widget.lng2);
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      appBar: AppBar(
        title: Text(
          widget.tit,
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
          zoomGesturesEnabled: true,
          initialCameraPosition: CameraPosition(
            //innital position in map
            target: LatLng(widget.lat2, widget.lng2), //initial position
            zoom: 10, //initial zoom level
          ),

          markers: getmarkers(), //markers to show on map

          mapType: MapType.normal, //map type, can be normal, satelite, hybrid

          onMapCreated: (controller) {
            //method called when map is created, the map must have a controller
            //the controller can be used for things such as animatecamera and much more
            setState(() {
              mapController = controller;
            });
          },
        ),
      ),
    );
  }

  //set is like a list but its unordered / doesnt have an index
  Set<Marker> getmarkers() {
    //markers to place on map
    setState(() {
      markers.add(
          Marker(
            markerId: MarkerId("1"),
        //add first marker
        position: LatLng(widget.lat2, widget.lng2), //position of marker
        infoWindow: InfoWindow(
          //popup info
          title: widget.tit,
          snippet: widget.snip,
        ),
        icon: BitmapDescriptor.defaultMarker, //Icon for Marker
      ));

      markers.add(
          Marker(
            markerId: MarkerId("2"),
            //add second marker
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
//add more markers here if needed,
      markers.add(Marker(
        markerId: MarkerId(showLocation.toString()),
        position: LatLng(-6.188620, 106.893820),
        infoWindow: InfoWindow( //popup info
          title: '',
          snippet: '',
        ),
        icon: BitmapDescriptor.defaultMarker,
      ));*/


    });

    return markers;
  }
}