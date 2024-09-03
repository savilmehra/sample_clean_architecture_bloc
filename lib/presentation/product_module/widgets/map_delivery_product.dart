import 'package:flutter/cupertino.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'dart:async';
import 'dart:collection';
import 'package:flutter/material.dart';

import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapDeliveryProduct extends StatefulWidget {
  const MapDeliveryProduct({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<MapDeliveryProduct> {
// created controller to display Google Maps
  final Completer<GoogleMapController> _controller = Completer();

// on below line we have set the camera position
  static const CameraPosition _kGoogle = CameraPosition(
    target: LatLng(19.0759837, 72.8776559),
    zoom: 5,
  );

  Set<Polygon> _polygon = HashSet<Polygon>();

// created list of locations to display polygon
  List<LatLng> points = [
    LatLng(19.0759837, 72.8776559),
    // LatLng(28.679079, 77.069710),
    //  LatLng(26.850000, 80.949997),
    // LatLng(19.0759837, 72.8776559),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //initialize polygon
    _polygon.add(Polygon(
      // given polygonId
      polygonId: PolygonId('1'),
      // initialize the list of points to display polygon
      points: points,
      // given color to polygon
      fillColor: Colors.green.withOpacity(0.3),
      // given border color to polygon
      strokeColor: Colors.green,
      geodesic: true,
      // given width of border
      strokeWidth: 4,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GoogleMap(
        onLongPress: (LatLng latLng) {
          points.add(latLng);
          setState(() {});
        },
        //given camera position
        initialCameraPosition: _kGoogle,
        // on below line we have given map type
        mapType: MapType.normal,
        // on below line we have enabled location
        myLocationEnabled: true,
        myLocationButtonEnabled: true,
        // on below line we have enabled compass location
        compassEnabled: true,
        // on below line we have added polygon
        polygons: _polygon,
        // displayed google map
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
    );
  }
}
