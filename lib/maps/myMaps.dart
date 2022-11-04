import 'dart:async';
import 'dart:convert';
import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:projectt/maps/constant.dart';


class myMaps extends StatefulWidget {
  const myMaps({Key? key}) : super(key: key);

  @override
  State<myMaps> createState() => _myMapsState();
}

class _myMapsState extends State<myMaps> {
  final Completer<GoogleMapController> _contoller = Completer();

  static const LatLng souceLocation =
      LatLng(16.738474849703515, 101.57752557203945);
  static const LatLng destination =
      LatLng(16.863333041021665, 101.84018444536812);

  List<LatLng> polylineCoordinates = [];
  LocationData? currentLocation;

  void getCurrentLocation() async {
    Location location = Location();

    location.getLocation().then(
      (location) {
        currentLocation = location;
      },
    );

    GoogleMapController googleMapController = await _contoller.future;
  }

  void getPolyPoints() async {
    PolylinePoints polylinePoints = PolylinePoints();

    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
      google_api_key,
      PointLatLng(souceLocation.latitude, destination.longitude),
      PointLatLng(destination.latitude, souceLocation.longitude),
    );

    if (result.points.isEmpty) {
      result.points.forEach((PointLatLng point) =>
          polylineCoordinates.add(LatLng(point.latitude, point.longitude)));
      setState(() {});
    }
  }

  @override
  void initState() {
    getCurrentLocation();
    getPolyPoints();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ภูกระดึง"),
      ),
      body: currentLocation == null
          ? Center(child: Text("Loading"))
          : GoogleMap(
              initialCameraPosition: CameraPosition(
                target: LatLng(
                    destination.latitude, destination.longitude),
                zoom: 13.5,
              ),
              polylines: {
                Polyline(
                  polylineId: PolylineId("rount"),
                  points: polylineCoordinates,
                  color: primaryColor,
                  width: 6,
                )
              },
              markers: {
                Marker(
                  markerId: const MarkerId("currentlocations"),
                  position: LatLng(
                      currentLocation!.latitude!, currentLocation!.longitude!),
                ),
                Marker(
                  markerId: MarkerId("destination"),
                  position: destination,
                ),
              },
              onMapCreated: (mapController) {
                _contoller.complete(mapController);
              },
            ),
    );
  }
}



class myMapsgranghuang extends StatefulWidget {
  const myMapsgranghuang({Key? key}) : super(key: key);

  @override
  State<myMapsgranghuang> createState() => _myMapsgranghuangState();
}

class _myMapsgranghuangState extends State<myMapsgranghuang> {
  final Completer<GoogleMapController> _contoller = Completer();

  static const LatLng souceLocation =
      LatLng(16.738474849703515, 101.57752557203945);
  static const LatLng destination =
      LatLng(14.308792345814455, 101.25535536185356);

  List<LatLng> polylineCoordinates = [];
  LocationData? currentLocation;

  void getCurrentLocation() async {
    Location location = Location();

    location.getLocation().then(
      (location) {
        currentLocation = location;
      },
    );

    GoogleMapController googleMapController = await _contoller.future;
  }

  void getPolyPoints() async {
    PolylinePoints polylinePoints = PolylinePoints();

    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
      google_api_key,
      PointLatLng(souceLocation.latitude, destination.longitude),
      PointLatLng(destination.latitude, souceLocation.longitude),
    );

    if (result.points.isEmpty) {
      result.points.forEach((PointLatLng point) =>
          polylineCoordinates.add(LatLng(point.latitude, point.longitude)));
      setState(() {});
    }
  }

  @override
  void initState() {
    getCurrentLocation();
    getPolyPoints();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("น้ำตกสาริกา"),
      ),
      body: currentLocation == null
          ? Center(child: Text("Loading"))
          : GoogleMap(
              initialCameraPosition: CameraPosition(
                target: LatLng(
                    destination.latitude, destination.longitude),
                zoom: 13.5,
              ),
              polylines: {
                Polyline(
                  polylineId: PolylineId("rount"),
                  points: polylineCoordinates,
                  color: primaryColor,
                  width: 6,
                )
              },
              markers: {
                Marker(
                  markerId: const MarkerId("currentlocations"),
                  position: LatLng(
                      currentLocation!.latitude!, currentLocation!.longitude!),
                ),
                Marker(
                  markerId: MarkerId("destination"),
                  position: destination,
                ),
              },
              onMapCreated: (mapController) {
                _contoller.complete(mapController);
              },
            ),
    );
  }
}


class myMapsmajam extends StatefulWidget {
  const myMapsmajam({Key? key}) : super(key: key);

  @override
  State<myMapsmajam> createState() => _myMapsmajamState();
}

class _myMapsmajamState extends State<myMapsmajam> {
  final Completer<GoogleMapController> _contoller = Completer();

  static const LatLng souceLocation =
      LatLng(16.738474849703515, 101.57752557203945);
  static const LatLng destination =
      LatLng(18.41952958023155, 98.31752949031129);

  List<LatLng> polylineCoordinates = [];
  LocationData? currentLocation;

  void getCurrentLocation() async {
    Location location = Location();

    location.getLocation().then(
      (location) {
        currentLocation = location;
      },
    );

    GoogleMapController googleMapController = await _contoller.future;
  }

  void getPolyPoints() async {
    PolylinePoints polylinePoints = PolylinePoints();

    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
      google_api_key,
      PointLatLng(souceLocation.latitude, destination.longitude),
      PointLatLng(destination.latitude, souceLocation.longitude),
    );

    if (result.points.isEmpty) {
      result.points.forEach((PointLatLng point) =>
          polylineCoordinates.add(LatLng(point.latitude, point.longitude)));
      setState(() {});
    }
  }

  @override
  void initState() {
    getCurrentLocation();
    getPolyPoints();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("แม่แจ่ม"),
      ),
      body: currentLocation == null
          ? Center(child: Text("Loading"))
          : GoogleMap(
              initialCameraPosition: CameraPosition(
                target: LatLng(
                    destination.latitude, destination.longitude),
                zoom: 13.5,
              ),
              polylines: {
                Polyline(
                  polylineId: PolylineId("rount"),
                  points: polylineCoordinates,
                  color: primaryColor,
                  width: 6,
                )
              },
              markers: {
                Marker(
                  markerId: const MarkerId("currentlocations"),
                  position: LatLng(
                      currentLocation!.latitude!, currentLocation!.longitude!),
                ),
                Marker(
                  markerId: MarkerId("destination"),
                  position: destination,
                ),
              },
              onMapCreated: (mapController) {
                _contoller.complete(mapController);
              },
            ),
    );
  }
}

class myMapstlo extends StatefulWidget {
  const myMapstlo({Key? key}) : super(key: key);

  @override
  State<myMapstlo> createState() => _myMapstloState();
}

class _myMapstloState extends State<myMapstlo> {
  final Completer<GoogleMapController> _contoller = Completer();

  static const LatLng souceLocation =
      LatLng(16.738474849703515, 101.57752557203945);
  static const LatLng destination =
      LatLng(15.927960778112602, 98.75295377488061);

  List<LatLng> polylineCoordinates = [];
  LocationData? currentLocation;

  void getCurrentLocation() async {
    Location location = Location();

    location.getLocation().then(
      (location) {
        currentLocation = location;
      },
    );

    GoogleMapController googleMapController = await _contoller.future;
  }

  void getPolyPoints() async {
    PolylinePoints polylinePoints = PolylinePoints();

    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
      google_api_key,
      PointLatLng(souceLocation.latitude, destination.longitude),
      PointLatLng(destination.latitude, souceLocation.longitude),
    );

    if (result.points.isEmpty) {
      result.points.forEach((PointLatLng point) =>
          polylineCoordinates.add(LatLng(point.latitude, point.longitude)));
      setState(() {});
    }
  }

  @override
  void initState() {
    getCurrentLocation();
    getPolyPoints();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("น้ำตกทีลอซู"),
      ),
      body: currentLocation == null
          ? Center(child: Text("Loading"))
          : GoogleMap(
              initialCameraPosition: CameraPosition(
                target: LatLng(
                    destination.latitude, destination.longitude),
                zoom: 13.5,
              ),
              polylines: {
                Polyline(
                  polylineId: PolylineId("rount"),
                  points: polylineCoordinates,
                  color: primaryColor,
                  width: 6,
                )
              },
              markers: {
                Marker(
                  markerId: const MarkerId("currentlocations"),
                  position: LatLng(
                      currentLocation!.latitude!, currentLocation!.longitude!),
                ),
                Marker(
                  markerId: MarkerId("destination"),
                  position: destination,
                ),
              },
              onMapCreated: (mapController) {
                _contoller.complete(mapController);
              },
            ),
    );
  }
}

class myMapsstp extends StatefulWidget {
  const myMapsstp({Key? key}) : super(key: key);

  @override
  State<myMapsstp> createState() => _myMapsstpState();
}

class _myMapsstpState extends State<myMapsstp> {
  final Completer<GoogleMapController> _contoller = Completer();

  static const LatLng souceLocation =
      LatLng(16.738474849703515, 101.57752557203945);
  static const LatLng destination =
      LatLng(14.167471374421636, 101.72893438245927);

  List<LatLng> polylineCoordinates = [];
  LocationData? currentLocation;

  void getCurrentLocation() async {
    Location location = Location();

    location.getLocation().then(
      (location) {
        currentLocation = location;
      },
    );

    GoogleMapController googleMapController = await _contoller.future;
  }

  void getPolyPoints() async {
    PolylinePoints polylinePoints = PolylinePoints();

    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
      google_api_key,
      PointLatLng(souceLocation.latitude, destination.longitude),
      PointLatLng(destination.latitude, souceLocation.longitude),
    );

    if (result.points.isEmpty) {
      result.points.forEach((PointLatLng point) =>
          polylineCoordinates.add(LatLng(point.latitude, point.longitude)));
      setState(() {});
    }
  }

  @override
  void initState() {
    getCurrentLocation();
    getPolyPoints();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ล่องแก่งหินเพิง"),
      ),
      body: currentLocation == null
          ? Center(child: Text("Loading"))
          : GoogleMap(
              initialCameraPosition: CameraPosition(
                target: LatLng(
                    destination.latitude, destination.longitude),
                zoom: 13.5,
              ),
              polylines: {
                Polyline(
                  polylineId: PolylineId("rount"),
                  points: polylineCoordinates,
                  color: primaryColor,
                  width: 6,
                )
              },
              markers: {
                Marker(
                  markerId: const MarkerId("currentlocations"),
                  position: LatLng(
                      currentLocation!.latitude!, currentLocation!.longitude!),
                ),
                Marker(
                  markerId: MarkerId("destination"),
                  position: destination,
                ),
              },
              onMapCreated: (mapController) {
                _contoller.complete(mapController);
              },
            ),
    );
  }
}

class myMapskangmoddang extends StatefulWidget {
  const myMapskangmoddang({Key? key}) : super(key: key);



 @override
  State<myMapskangmoddang> createState() => _myMapskangmoddangState();
}



class _myMapskangmoddangState extends State<myMapskangmoddang> {
  final Completer<GoogleMapController> _contoller = Completer();



 static const LatLng souceLocation =
      LatLng(16.738474849703515, 101.57752557203945);
  static const LatLng destination =
      LatLng(7.887218511576226, 99.85228992840405);



 List<LatLng> polylineCoordinates = [];
  LocationData? currentLocation;



 void getCurrentLocation() async {
    Location location = Location();



   location.getLocation().then(
      (location) {
        currentLocation = location;
      },
    );



   GoogleMapController googleMapController = await _contoller.future;
  }



 void getPolyPoints() async {
    PolylinePoints polylinePoints = PolylinePoints();



   PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
      google_api_key,
      PointLatLng(souceLocation.latitude, destination.longitude),
      PointLatLng(destination.latitude, souceLocation.longitude),
    );



   if (result.points.isEmpty) {
      result.points.forEach((PointLatLng point) =>
          polylineCoordinates.add(LatLng(point.latitude, point.longitude)));
      setState(() {});
    }
  }



 @override
  void initState() {
    getCurrentLocation();
    getPolyPoints();
    super.initState();
  }



 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ล่องแก่งมดแดง"),
      ),
      body: currentLocation == null
          ? Center(child: Text("Loading"))
          : GoogleMap(
              initialCameraPosition: CameraPosition(
                target: LatLng(
                    currentLocation!.latitude!, currentLocation!.longitude!),
                zoom: 13.5,
              ),
              polylines: {
                Polyline(
                  polylineId: PolylineId("rount"),
                  points: polylineCoordinates,
                  color: primaryColor,
                  width: 6,
                )
              },
              markers: {
                Marker(
                  markerId: const MarkerId("currentlocations"),
                  position: LatLng(
                      currentLocation!.latitude!, currentLocation!.longitude!),
                ),
                Marker(
                  markerId: MarkerId("destination"),
                  position: destination,
                ),
              },
              onMapCreated: (mapController) {
                _contoller.complete(mapController);
              },
            ),
    );
  }
}


class myMapssampb extends StatefulWidget {
  const myMapssampb({Key? key}) : super(key: key);



 @override
  State<myMapssampb> createState() => _myMapssampbState();
}



class _myMapssampbState extends State<myMapssampb> {
  final Completer<GoogleMapController> _contoller = Completer();



 static const LatLng souceLocation =
      LatLng(16.738474849703515, 101.57752557203945);
  static const LatLng destination =
      LatLng(15.797024949102246, 105.39656662546685);



 List<LatLng> polylineCoordinates = [];
  LocationData? currentLocation;



 void getCurrentLocation() async {
    Location location = Location();



   location.getLocation().then(
      (location) {
        currentLocation = location;
      },
    );



   GoogleMapController googleMapController = await _contoller.future;
  }



 void getPolyPoints() async {
    PolylinePoints polylinePoints = PolylinePoints();



   PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
      google_api_key,
      PointLatLng(souceLocation.latitude, destination.longitude),
      PointLatLng(destination.latitude, souceLocation.longitude),
    );



   if (result.points.isEmpty) {
      result.points.forEach((PointLatLng point) =>
          polylineCoordinates.add(LatLng(point.latitude, point.longitude)));
      setState(() {});
    }
  }



 @override
  void initState() {
    getCurrentLocation();
    getPolyPoints();
    super.initState();
  }



 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("สามพันโบก"),
      ),
      body: currentLocation == null
          ? Center(child: Text("Loading"))
          : GoogleMap(
              initialCameraPosition: CameraPosition(
                target: LatLng(
                    currentLocation!.latitude!, currentLocation!.longitude!),
                zoom: 13.5,
              ),
              polylines: {
                Polyline(
                  polylineId: PolylineId("rount"),
                  points: polylineCoordinates,
                  color: primaryColor,
                  width: 6,
                )
              },
              markers: {
                Marker(
                  markerId: const MarkerId("currentlocations"),
                  position: LatLng(
                      currentLocation!.latitude!, currentLocation!.longitude!),
                ),
                Marker(
                  markerId: MarkerId("destination"),
                  position: destination,
                ),
              },
              onMapCreated: (mapController) {
                _contoller.complete(mapController);
              },
            ),
    );
  }
}

class myMapsgangrom extends StatefulWidget {
  const myMapsgangrom({Key? key}) : super(key: key);



 @override
  State<myMapsgangrom> createState() => _myMapsgangromState();
}



class _myMapsgangromState extends State<myMapsgangrom> {
  final Completer<GoogleMapController> _contoller = Completer();



 static const LatLng souceLocation =
      LatLng(16.738474849703515, 101.57752557203945);
  static const LatLng destination =
      LatLng(15.119506824525287, 101.48347943169635);



 List<LatLng> polylineCoordinates = [];
  LocationData? currentLocation;



 void getCurrentLocation() async {
    Location location = Location();



   location.getLocation().then(
      (location) {
        currentLocation = location;
      },
    );



   GoogleMapController googleMapController = await _contoller.future;
  }



 void getPolyPoints() async {
    PolylinePoints polylinePoints = PolylinePoints();



   PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
      google_api_key,
      PointLatLng(souceLocation.latitude, destination.longitude),
      PointLatLng(destination.latitude, souceLocation.longitude),
    );



   if (result.points.isEmpty) {
      result.points.forEach((PointLatLng point) =>
          polylineCoordinates.add(LatLng(point.latitude, point.longitude)));
      setState(() {});
    }
  }



 @override
  void initState() {
    getCurrentLocation();
    getPolyPoints();
    super.initState();
  }



 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ทุ่งกังหันลมห้วยบง"),
      ),
      body: currentLocation == null
          ? Center(child: Text("Loading"))
          : GoogleMap(
              initialCameraPosition: CameraPosition(
                target: LatLng(
                    currentLocation!.latitude!, currentLocation!.longitude!),
                zoom: 13.5,
              ),
              polylines: {
                Polyline(
                  polylineId: PolylineId("rount"),
                  points: polylineCoordinates,
                  color: primaryColor,
                  width: 6,
                )
              },
              markers: {
                Marker(
                  markerId: const MarkerId("currentlocations"),
                  position: LatLng(
                      currentLocation!.latitude!, currentLocation!.longitude!),
                ),
                Marker(
                  markerId: MarkerId("destination"),
                  position: destination,
                ),
              },
              onMapCreated: (mapController) {
                _contoller.complete(mapController);
              },
            ),
    );
  }
}

class myMapskokgood extends StatefulWidget {
  const myMapskokgood({Key? key}) : super(key: key);



 @override
  State<myMapskokgood> createState() => _myMapskokgoodState();
}



class _myMapskokgoodState extends State<myMapskokgood> {
  final Completer<GoogleMapController> _contoller = Completer();



 static const LatLng souceLocation =
      LatLng(16.738474849703515, 101.57752557203945);
  static const LatLng destination =
      LatLng(11.668647682973997, 102.56422518758502);



 List<LatLng> polylineCoordinates = [];
  LocationData? currentLocation;



 void getCurrentLocation() async {
    Location location = Location();



   location.getLocation().then(
      (location) {
        currentLocation = location;
      },
    );



   GoogleMapController googleMapController = await _contoller.future;
  }



 void getPolyPoints() async {
    PolylinePoints polylinePoints = PolylinePoints();



   PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
      google_api_key,
      PointLatLng(souceLocation.latitude, destination.longitude),
      PointLatLng(destination.latitude, souceLocation.longitude),
    );



   if (result.points.isEmpty) {
      result.points.forEach((PointLatLng point) =>
          polylineCoordinates.add(LatLng(point.latitude, point.longitude)));
      setState(() {});
    }
  }



 @override
  void initState() {
    getCurrentLocation();
    getPolyPoints();
    super.initState();
  }



 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("เกาะกูด"),
      ),
      body: currentLocation == null
          ? Center(child: Text("Loading"))
          : GoogleMap(
              initialCameraPosition: CameraPosition(
                target: LatLng(
                    currentLocation!.latitude!, currentLocation!.longitude!),
                zoom: 13.5,
              ),
              polylines: {
                Polyline(
                  polylineId: PolylineId("rount"),
                  points: polylineCoordinates,
                  color: primaryColor,
                  width: 6,
                )
              },
              markers: {
                Marker(
                  markerId: const MarkerId("currentlocations"),
                  position: LatLng(
                      currentLocation!.latitude!, currentLocation!.longitude!),
                ),
                Marker(
                  markerId: MarkerId("destination"),
                  position: destination,
                ),
              },
              onMapCreated: (mapController) {
                _contoller.complete(mapController);
              },
            ),
    );
  }
}

class myMapskokran extends StatefulWidget {
  const myMapskokran({Key? key}) : super(key: key);



 @override
  State<myMapskokran> createState() => _myMapskokranState();
}



class _myMapskokranState extends State<myMapskokran> {
  final Completer<GoogleMapController> _contoller = Completer();



 static const LatLng souceLocation =
      LatLng(16.738474849703515, 101.57752557203945);
  static const LatLng destination =
      LatLng(12.918057318141978, 100.78027941870204);



 List<LatLng> polylineCoordinates = [];
  LocationData? currentLocation;



 void getCurrentLocation() async {
    Location location = Location();



   location.getLocation().then(
      (location) {
        currentLocation = location;
      },
    );



   GoogleMapController googleMapController = await _contoller.future;
  }



 void getPolyPoints() async {
    PolylinePoints polylinePoints = PolylinePoints();



   PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
      google_api_key,
      PointLatLng(souceLocation.latitude, destination.longitude),
      PointLatLng(destination.latitude, souceLocation.longitude),
    );



   if (result.points.isEmpty) {
      result.points.forEach((PointLatLng point) =>
          polylineCoordinates.add(LatLng(point.latitude, point.longitude)));
      setState(() {});
    }
  }



 @override
  void initState() {
    getCurrentLocation();
    getPolyPoints();
    super.initState();
  }



 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("เกาะล้าน"),
      ),
      body: currentLocation == null
          ? Center(child: Text("Loading"))
          : GoogleMap(
              initialCameraPosition: CameraPosition(
                target: LatLng(
                    currentLocation!.latitude!, currentLocation!.longitude!),
                zoom: 13.5,
              ),
              polylines: {
                Polyline(
                  polylineId: PolylineId("rount"),
                  points: polylineCoordinates,
                  color: primaryColor,
                  width: 6,
                )
              },
              markers: {
                Marker(
                  markerId: const MarkerId("currentlocations"),
                  position: LatLng(
                      currentLocation!.latitude!, currentLocation!.longitude!),
                ),
                Marker(
                  markerId: MarkerId("destination"),
                  position: destination,
                ),
              },
              onMapCreated: (mapController) {
                _contoller.complete(mapController);
              },
            ),
    );
  }
}

class myMapskoksamu extends StatefulWidget {
  const myMapskoksamu({Key? key}) : super(key: key);



 @override
  State<myMapskoksamu> createState() => _myMapskoksamuState();
}



class _myMapskoksamuState extends State<myMapskoksamu> {
  final Completer<GoogleMapController> _contoller = Completer();



 static const LatLng souceLocation =
      LatLng(16.738474849703515, 101.57752557203945);
  static const LatLng destination =
      LatLng(9.512084819062817, 100.0137483621008);



 List<LatLng> polylineCoordinates = [];
  LocationData? currentLocation;



 void getCurrentLocation() async {
    Location location = Location();



   location.getLocation().then(
      (location) {
        currentLocation = location;
      },
    );



   GoogleMapController googleMapController = await _contoller.future;
  }



 void getPolyPoints() async {
    PolylinePoints polylinePoints = PolylinePoints();



   PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
      google_api_key,
      PointLatLng(souceLocation.latitude, destination.longitude),
      PointLatLng(destination.latitude, souceLocation.longitude),
    );



   if (result.points.isEmpty) {
      result.points.forEach((PointLatLng point) =>
          polylineCoordinates.add(LatLng(point.latitude, point.longitude)));
      setState(() {});
    }
  }



 @override
  void initState() {
    getCurrentLocation();
    getPolyPoints();
    super.initState();
  }



 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("เกาะสมุย"),
      ),
      body: currentLocation == null
          ? Center(child: Text("Loading"))
          : GoogleMap(
              initialCameraPosition: CameraPosition(
                target: LatLng(
                    currentLocation!.latitude!, currentLocation!.longitude!),
                zoom: 13.5,
              ),
              polylines: {
                Polyline(
                  polylineId: PolylineId("rount"),
                  points: polylineCoordinates,
                  color: primaryColor,
                  width: 6,
                )
              },
              markers: {
                Marker(
                  markerId: const MarkerId("currentlocations"),
                  position: LatLng(
                      currentLocation!.latitude!, currentLocation!.longitude!),
                ),
                Marker(
                  markerId: MarkerId("destination"),
                  position: destination,
                ),
              },
              onMapCreated: (mapController) {
                _contoller.complete(mapController);
              },
            ),
    );
  }
}

class myMapskokmadta extends StatefulWidget {
  const myMapskokmadta({Key? key}) : super(key: key);



 @override
  State<myMapskokmadta> createState() => _myMapskokmadtaState();
}



class _myMapskokmadtaState extends State<myMapskokmadta> {
  final Completer<GoogleMapController> _contoller = Completer();



 static const LatLng souceLocation =
      LatLng(16.738474849703515, 101.57752557203945);
  static const LatLng destination =
      LatLng(9.512084819062817, 100.0137483621008);



 List<LatLng> polylineCoordinates = [];
  LocationData? currentLocation;



 void getCurrentLocation() async {
    Location location = Location();



   location.getLocation().then(
      (location) {
        currentLocation = location;
      },
    );



   GoogleMapController googleMapController = await _contoller.future;
  }



 void getPolyPoints() async {
    PolylinePoints polylinePoints = PolylinePoints();



   PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
      google_api_key,
      PointLatLng(souceLocation.latitude, destination.longitude),
      PointLatLng(destination.latitude, souceLocation.longitude),
    );



   if (result.points.isEmpty) {
      result.points.forEach((PointLatLng point) =>
          polylineCoordinates.add(LatLng(point.latitude, point.longitude)));
      setState(() {});
    }
  }



 @override
  void initState() {
    getCurrentLocation();
    getPolyPoints();
    super.initState();
  }



 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("เกาะมัตรา"),
      ),
      body: currentLocation == null
          ? Center(child: Text("Loading"))
          : GoogleMap(
              initialCameraPosition: CameraPosition(
                target: LatLng(
                    currentLocation!.latitude!, currentLocation!.longitude!),
                zoom: 13.5,
              ),
              polylines: {
                Polyline(
                  polylineId: PolylineId("rount"),
                  points: polylineCoordinates,
                  color: primaryColor,
                  width: 6,
                )
              },
              markers: {
                Marker(
                  markerId: const MarkerId("currentlocations"),
                  position: LatLng(
                      currentLocation!.latitude!, currentLocation!.longitude!),
                ),
                Marker(
                  markerId: MarkerId("destination"),
                  position: destination,
                ),
              },
              onMapCreated: (mapController) {
                _contoller.complete(mapController);
              },
            ),
    );
  }
}

class myMapsampawa extends StatefulWidget {
  const myMapsampawa({Key? key}) : super(key: key);



 @override
  State<myMapsampawa> createState() => _myMapsampawaState();
}



class _myMapsampawaState extends State<myMapsampawa> {
  final Completer<GoogleMapController> _contoller = Completer();



 static const LatLng souceLocation =
      LatLng(16.738474849703515, 101.57752557203945);
  static const LatLng destination =
      LatLng(13.425012978397525, 99.95498750789417);



 List<LatLng> polylineCoordinates = [];
  LocationData? currentLocation;



 void getCurrentLocation() async {
    Location location = Location();



   location.getLocation().then(
      (location) {
        currentLocation = location;
      },
    );



   GoogleMapController googleMapController = await _contoller.future;
  }



 void getPolyPoints() async {
    PolylinePoints polylinePoints = PolylinePoints();



   PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
      google_api_key,
      PointLatLng(souceLocation.latitude, destination.longitude),
      PointLatLng(destination.latitude, souceLocation.longitude),
    );



   if (result.points.isEmpty) {
      result.points.forEach((PointLatLng point) =>
          polylineCoordinates.add(LatLng(point.latitude, point.longitude)));
      setState(() {});
    }
  }



 @override
  void initState() {
    getCurrentLocation();
    getPolyPoints();
    super.initState();
  }



 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ตลาดน้ำอัมพวา"),
      ),
      body: currentLocation == null
          ? Center(child: Text("Loading"))
          : GoogleMap(
              initialCameraPosition: CameraPosition(
                target: LatLng(
                    currentLocation!.latitude!, currentLocation!.longitude!),
                zoom: 13.5,
              ),
              polylines: {
                Polyline(
                  polylineId: PolylineId("rount"),
                  points: polylineCoordinates,
                  color: primaryColor,
                  width: 6,
                )
              },
              markers: {
                Marker(
                  markerId: const MarkerId("currentlocations"),
                  position: LatLng(
                      currentLocation!.latitude!, currentLocation!.longitude!),
                ),
                Marker(
                  markerId: MarkerId("destination"),
                  position: destination,
                ),
              },
              onMapCreated: (mapController) {
                _contoller.complete(mapController);
              },
            ),
    );
  }
}

class myMapssevenwater extends StatefulWidget {
  const myMapssevenwater({Key? key}) : super(key: key);



 @override
  State<myMapssevenwater> createState() => _myMapssevenwaterState();
}



class _myMapssevenwaterState extends State<myMapssevenwater> {
  final Completer<GoogleMapController> _contoller = Completer();



 static const LatLng souceLocation =
      LatLng(16.738474849703515, 101.57752557203945);
  static const LatLng destination =
      LatLng(14.725776680888213, 101.18899468549213);



 List<LatLng> polylineCoordinates = [];
  LocationData? currentLocation;



 void getCurrentLocation() async {
    Location location = Location();



   location.getLocation().then(
      (location) {
        currentLocation = location;
      },
    );



   GoogleMapController googleMapController = await _contoller.future;
  }



 void getPolyPoints() async {
    PolylinePoints polylinePoints = PolylinePoints();



   PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
      google_api_key,
      PointLatLng(souceLocation.latitude, destination.longitude),
      PointLatLng(destination.latitude, souceLocation.longitude),
    );



   if (result.points.isEmpty) {
      result.points.forEach((PointLatLng point) =>
          polylineCoordinates.add(LatLng(point.latitude, point.longitude)));
      setState(() {});
    }
  }



 @override
  void initState() {
    getCurrentLocation();
    getPolyPoints();
    super.initState();
  }



 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("น้ำตกเจ็ดสาวน้อย"),
      ),
      body: currentLocation == null
          ? Center(child: Text("Loading"))
          : GoogleMap(
              initialCameraPosition: CameraPosition(
                target: LatLng(
                    currentLocation!.latitude!, currentLocation!.longitude!),
                zoom: 13.5,
              ),
              polylines: {
                Polyline(
                  polylineId: PolylineId("rount"),
                  points: polylineCoordinates,
                  color: primaryColor,
                  width: 6,
                )
              },
              markers: {
                Marker(
                  markerId: const MarkerId("currentlocations"),
                  position: LatLng(
                      currentLocation!.latitude!, currentLocation!.longitude!),
                ),
                Marker(
                  markerId: MarkerId("destination"),
                  position: destination,
                ),
              },
              onMapCreated: (mapController) {
                _contoller.complete(mapController);
              },
            ),
    );
  }
}

class myMapsintanon extends StatefulWidget {
  const myMapsintanon({Key? key}) : super(key: key);



 @override
  State<myMapsintanon> createState() => _myMapsintanonState();
}



class _myMapsintanonState extends State<myMapsintanon> {
  final Completer<GoogleMapController> _contoller = Completer();



 static const LatLng souceLocation =
      LatLng(16.738474849703515, 101.57752557203945);
  static const LatLng destination =
      LatLng(18.588856079300637, 98.48693242006462);



 List<LatLng> polylineCoordinates = [];
  LocationData? currentLocation;



 void getCurrentLocation() async {
    Location location = Location();



   location.getLocation().then(
      (location) {
        currentLocation = location;
      },
    );



   GoogleMapController googleMapController = await _contoller.future;
  }



 void getPolyPoints() async {
    PolylinePoints polylinePoints = PolylinePoints();



   PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
      google_api_key,
      PointLatLng(souceLocation.latitude, destination.longitude),
      PointLatLng(destination.latitude, souceLocation.longitude),
    );



   if (result.points.isEmpty) {
      result.points.forEach((PointLatLng point) =>
          polylineCoordinates.add(LatLng(point.latitude, point.longitude)));
      setState(() {});
    }
  }



 @override
  void initState() {
    getCurrentLocation();
    getPolyPoints();
    super.initState();
  }



 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ดอยอินทนนท์"),
      ),
      body: currentLocation == null
          ? Center(child: Text("Loading"))
          : GoogleMap(
              initialCameraPosition: CameraPosition(
                target: LatLng(
                    currentLocation!.latitude!, currentLocation!.longitude!),
                zoom: 13.5,
              ),
              polylines: {
                Polyline(
                  polylineId: PolylineId("rount"),
                  points: polylineCoordinates,
                  color: primaryColor,
                  width: 6,
                )
              },
              markers: {
                Marker(
                  markerId: const MarkerId("currentlocations"),
                  position: LatLng(
                      currentLocation!.latitude!, currentLocation!.longitude!),
                ),
                Marker(
                  markerId: MarkerId("destination"),
                  position: destination,
                ),
              },
              onMapCreated: (mapController) {
                _contoller.complete(mapController);
              },
            ),
    );
  }
}

class myMapspai extends StatefulWidget {
  const myMapspai({Key? key}) : super(key: key);



 @override
  State<myMapspai> createState() => _myMapspaiState();
}



class _myMapspaiState extends State<myMapspai> {
  final Completer<GoogleMapController> _contoller = Completer();



 static const LatLng souceLocation =
      LatLng(16.738474849703515, 101.57752557203945);
  static const LatLng destination =
      LatLng(19.35784904071266, 98.44040378999847);



 List<LatLng> polylineCoordinates = [];
  LocationData? currentLocation;



 void getCurrentLocation() async {
    Location location = Location();



   location.getLocation().then(
      (location) {
        currentLocation = location;
      },
    );



   GoogleMapController googleMapController = await _contoller.future;
  }



 void getPolyPoints() async {
    PolylinePoints polylinePoints = PolylinePoints();



   PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
      google_api_key,
      PointLatLng(souceLocation.latitude, destination.longitude),
      PointLatLng(destination.latitude, souceLocation.longitude),
    );



   if (result.points.isEmpty) {
      result.points.forEach((PointLatLng point) =>
          polylineCoordinates.add(LatLng(point.latitude, point.longitude)));
      setState(() {});
    }
  }



 @override
  void initState() {
    getCurrentLocation();
    getPolyPoints();
    super.initState();
  }



 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ปาย"),
      ),
      body: currentLocation == null
          ? Center(child: Text("Loading"))
          : GoogleMap(
              initialCameraPosition: CameraPosition(
                target: LatLng(
                    currentLocation!.latitude!, currentLocation!.longitude!),
                zoom: 13.5,
              ),
              polylines: {
                Polyline(
                  polylineId: PolylineId("rount"),
                  points: polylineCoordinates,
                  color: primaryColor,
                  width: 6,
                )
              },
              markers: {
                Marker(
                  markerId: const MarkerId("currentlocations"),
                  position: LatLng(
                      currentLocation!.latitude!, currentLocation!.longitude!),
                ),
                Marker(
                  markerId: MarkerId("destination"),
                  position: destination,
                ),
              },
              onMapCreated: (mapController) {
                _contoller.complete(mapController);
              },
            ),
    );
  }
}

class myMapsbrigekaw extends StatefulWidget {
  const myMapsbrigekaw({Key? key}) : super(key: key);



 @override
  State<myMapsbrigekaw> createState() => _myMapsbrigekawState();
}



class _myMapsbrigekawState extends State<myMapsbrigekaw> {
  final Completer<GoogleMapController> _contoller = Completer();



 static const LatLng souceLocation =
      LatLng(16.738474849703515, 101.57752557203945);
  static const LatLng destination =
      LatLng(14.04168402588638, 99.50414738342498);



 List<LatLng> polylineCoordinates = [];
  LocationData? currentLocation;



 void getCurrentLocation() async {
    Location location = Location();



   location.getLocation().then(
      (location) {
        currentLocation = location;
      },
    );



   GoogleMapController googleMapController = await _contoller.future;
  }



 void getPolyPoints() async {
    PolylinePoints polylinePoints = PolylinePoints();



   PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
      google_api_key,
      PointLatLng(souceLocation.latitude, destination.longitude),
      PointLatLng(destination.latitude, souceLocation.longitude),
    );



   if (result.points.isEmpty) {
      result.points.forEach((PointLatLng point) =>
          polylineCoordinates.add(LatLng(point.latitude, point.longitude)));
      setState(() {});
    }
  }



 @override
  void initState() {
    getCurrentLocation();
    getPolyPoints();
    super.initState();
  }



 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("สะพานข้ามแม่น้ำแคว"),
      ),
      body: currentLocation == null
          ? Center(child: Text("Loading"))
          : GoogleMap(
              initialCameraPosition: CameraPosition(
                target: LatLng(
                    currentLocation!.latitude!, currentLocation!.longitude!),
                zoom: 13.5,
              ),
              polylines: {
                Polyline(
                  polylineId: PolylineId("rount"),
                  points: polylineCoordinates,
                  color: primaryColor,
                  width: 6,
                )
              },
              markers: {
                Marker(
                  markerId: const MarkerId("currentlocations"),
                  position: LatLng(
                      currentLocation!.latitude!, currentLocation!.longitude!),
                ),
                Marker(
                  markerId: MarkerId("destination"),
                  position: destination,
                ),
              },
              onMapCreated: (mapController) {
                _contoller.complete(mapController);
              },
            ),
    );
  }
}

class myMapskoawsamroy extends StatefulWidget {
  const myMapskoawsamroy({Key? key}) : super(key: key);



 @override
  State<myMapskoawsamroy> createState() => _myMapskoawsamroyState();
}



class _myMapskoawsamroyState extends State<myMapskoawsamroy> {
  final Completer<GoogleMapController> _contoller = Completer();



 static const LatLng souceLocation =
      LatLng(16.738474849703515, 101.57752557203945);
  static const LatLng destination =
      LatLng(12.128623587208606, 99.95374108556636);



 List<LatLng> polylineCoordinates = [];
  LocationData? currentLocation;



 void getCurrentLocation() async {
    Location location = Location();



   location.getLocation().then(
      (location) {
        currentLocation = location;
      },
    );



   GoogleMapController googleMapController = await _contoller.future;
  }



 void getPolyPoints() async {
    PolylinePoints polylinePoints = PolylinePoints();



   PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
      google_api_key,
      PointLatLng(souceLocation.latitude, destination.longitude),
      PointLatLng(destination.latitude, souceLocation.longitude),
    );



   if (result.points.isEmpty) {
      result.points.forEach((PointLatLng point) =>
          polylineCoordinates.add(LatLng(point.latitude, point.longitude)));
      setState(() {});
    }
  }



 @override
  void initState() {
    getCurrentLocation();
    getPolyPoints();
    super.initState();
  }



 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("เขาสามร้อยยอด"),
      ),
      body: currentLocation == null
          ? Center(child: Text("Loading"))
          : GoogleMap(
              initialCameraPosition: CameraPosition(
                target: LatLng(
                    currentLocation!.latitude!, currentLocation!.longitude!),
                zoom: 13.5,
              ),
              polylines: {
                Polyline(
                  polylineId: PolylineId("rount"),
                  points: polylineCoordinates,
                  color: primaryColor,
                  width: 6,
                )
              },
              markers: {
                Marker(
                  markerId: const MarkerId("currentlocations"),
                  position: LatLng(
                      currentLocation!.latitude!, currentLocation!.longitude!),
                ),
                Marker(
                  markerId: MarkerId("destination"),
                  position: destination,
                ),
              },
              onMapCreated: (mapController) {
                _contoller.complete(mapController);
              },
            ),
    );
  }
}

class myMapsWatrongkhun extends StatefulWidget {
  const myMapsWatrongkhun({Key? key}) : super(key: key);



 @override
  State<myMapsWatrongkhun> createState() => _myMapsWatrongkhunState();
}

class _myMapsWatrongkhunState extends State<myMapsWatrongkhun> {
  final Completer<GoogleMapController> _contoller = Completer();



 static const LatLng souceLocation =
      LatLng(16.738474849703515, 101.57752557203945);
  static const LatLng destination =
      LatLng(19.824351360948267, 99.7636277401102);



 List<LatLng> polylineCoordinates = [];
  LocationData? currentLocation;



 void getCurrentLocation() async {
    Location location = Location();



   location.getLocation().then(
      (location) {
        currentLocation = location;
      },
    );



   GoogleMapController googleMapController = await _contoller.future;
  }



 void getPolyPoints() async {
    PolylinePoints polylinePoints = PolylinePoints();



   PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
      google_api_key,
      PointLatLng(souceLocation.latitude, destination.longitude),
      PointLatLng(destination.latitude, souceLocation.longitude),
    );



   if (result.points.isEmpty) {
      result.points.forEach((PointLatLng point) =>
          polylineCoordinates.add(LatLng(point.latitude, point.longitude)));
      setState(() {});
    }
  }



 @override
  void initState() {
    getCurrentLocation();
    getPolyPoints();
    super.initState();
  }



 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("วัดร่องขุ่น"),
      ),
      body: currentLocation == null
          ? Center(child: Text("Loading"))
          : GoogleMap(
              initialCameraPosition: CameraPosition(
                target: LatLng(
                    currentLocation!.latitude!, currentLocation!.longitude!),
                zoom: 13.5,
              ),
              polylines: {
                Polyline(
                  polylineId: PolylineId("rount"),
                  points: polylineCoordinates,
                  color: primaryColor,
                  width: 6,
                )
              },
              markers: {
                Marker(
                  markerId: const MarkerId("currentlocations"),
                  position: LatLng(
                      currentLocation!.latitude!, currentLocation!.longitude!),
                ),
                Marker(
                  markerId: MarkerId("destination"),
                  position: destination,
                ),
              },
              onMapCreated: (mapController) {
                _contoller.complete(mapController);
              },
            ),
    );
  }
}

class myMapsMaeJam extends StatefulWidget {
  const myMapsMaeJam({Key? key}) : super(key: key);



 @override
  State<myMapsMaeJam> createState() => _myMapsMaeJamState();
}

class _myMapsMaeJamState extends State<myMapsMaeJam> {
  final Completer<GoogleMapController> _contoller = Completer();



 static const LatLng souceLocation =
      LatLng(16.738474849703515, 101.57752557203945);
  static const LatLng destination =
      LatLng(18.526335206460228, 98.32869942705415);



 List<LatLng> polylineCoordinates = [];
  LocationData? currentLocation;



 void getCurrentLocation() async {
    Location location = Location();



   location.getLocation().then(
      (location) {
        currentLocation = location;
      },
    );



   GoogleMapController googleMapController = await _contoller.future;
  }



 void getPolyPoints() async {
    PolylinePoints polylinePoints = PolylinePoints();



   PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
      google_api_key,
      PointLatLng(souceLocation.latitude, destination.longitude),
      PointLatLng(destination.latitude, souceLocation.longitude),
    );



   if (result.points.isEmpty) {
      result.points.forEach((PointLatLng point) =>
          polylineCoordinates.add(LatLng(point.latitude, point.longitude)));
      setState(() {});
    }
  }



 @override
  void initState() {
    getCurrentLocation();
    getPolyPoints();
    super.initState();
  }



 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("แม่แจ่ม"),
      ),
      body: currentLocation == null
          ? Center(child: Text("Loading"))
          : GoogleMap(
              initialCameraPosition: CameraPosition(
                target: LatLng(
                    currentLocation!.latitude!, currentLocation!.longitude!),
                zoom: 13.5,
              ),
              polylines: {
                Polyline(
                  polylineId: PolylineId("rount"),
                  points: polylineCoordinates,
                  color: primaryColor,
                  width: 6,
                )
              },
              markers: {
                Marker(
                  markerId: const MarkerId("currentlocations"),
                  position: LatLng(
                      currentLocation!.latitude!, currentLocation!.longitude!),
                ),
                Marker(
                  markerId: MarkerId("destination"),
                  position: destination,
                ),
              },
              onMapCreated: (mapController) {
                _contoller.complete(mapController);
              },
            ),
    );
  }
}

class myMapsSarika extends StatefulWidget {
  const myMapsSarika({Key? key}) : super(key: key);



 @override
  State<myMapsSarika> createState() => _myMapsSarikaState();
}

class _myMapsSarikaState extends State<myMapsSarika> {
  final Completer<GoogleMapController> _contoller = Completer();



 static const LatLng souceLocation =
      LatLng(16.738474849703515, 101.57752557203945);
  static const LatLng destination =
      LatLng(14.308841470539068, 101.2553592467627);



 List<LatLng> polylineCoordinates = [];
  LocationData? currentLocation;



 void getCurrentLocation() async {
    Location location = Location();



   location.getLocation().then(
      (location) {
        currentLocation = location;
      },
    );



   GoogleMapController googleMapController = await _contoller.future;
  }



 void getPolyPoints() async {
    PolylinePoints polylinePoints = PolylinePoints();



   PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
      google_api_key,
      PointLatLng(souceLocation.latitude, destination.longitude),
      PointLatLng(destination.latitude, souceLocation.longitude),
    );



   if (result.points.isEmpty) {
      result.points.forEach((PointLatLng point) =>
          polylineCoordinates.add(LatLng(point.latitude, point.longitude)));
      setState(() {});
    }
  }



 @override
  void initState() {
    getCurrentLocation();
    getPolyPoints();
    super.initState();
  }



 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("น้ำตกสาริกา"),
      ),
      body: currentLocation == null
          ? Center(child: Text("Loading"))
          : GoogleMap(
              initialCameraPosition: CameraPosition(
                target: LatLng(
                    currentLocation!.latitude!, currentLocation!.longitude!),
                zoom: 13.5,
              ),
              polylines: {
                Polyline(
                  polylineId: PolylineId("rount"),
                  points: polylineCoordinates,
                  color: primaryColor,
                  width: 6,
                )
              },
              markers: {
                Marker(
                  markerId: const MarkerId("currentlocations"),
                  position: LatLng(
                      currentLocation!.latitude!, currentLocation!.longitude!),
                ),
                Marker(
                  markerId: MarkerId("destination"),
                  position: destination,
                ),
              },
              onMapCreated: (mapController) {
                _contoller.complete(mapController);
              },
            ),
    );
  }
}

class myMapsPhuKraDeung extends StatefulWidget {
  const myMapsPhuKraDeung({Key? key}) : super(key: key);



 @override
  State<myMapsPhuKraDeung> createState() => _myMapsPhuKraDeungState();
}

class _myMapsPhuKraDeungState extends State<myMapsPhuKraDeung> {
  final Completer<GoogleMapController> _contoller = Completer();



 static const LatLng souceLocation =
      LatLng(16.738474849703515, 101.57752557203945);
  static const LatLng destination =
      LatLng(16.872291912735296, 101.71852523518734);



 List<LatLng> polylineCoordinates = [];
  LocationData? currentLocation;



 void getCurrentLocation() async {
    Location location = Location();



   location.getLocation().then(
      (location) {
        currentLocation = location;
      },
    );



   GoogleMapController googleMapController = await _contoller.future;
  }



 void getPolyPoints() async {
    PolylinePoints polylinePoints = PolylinePoints();



   PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
      google_api_key,
      PointLatLng(souceLocation.latitude, destination.longitude),
      PointLatLng(destination.latitude, souceLocation.longitude),
    );



   if (result.points.isEmpty) {
      result.points.forEach((PointLatLng point) =>
          polylineCoordinates.add(LatLng(point.latitude, point.longitude)));
      setState(() {});
    }
  }



 @override
  void initState() {
    getCurrentLocation();
    getPolyPoints();
    super.initState();
  }



 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ภูกระดึง"),
      ),
      body: currentLocation == null
          ? Center(child: Text("Loading"))
          : GoogleMap(
              initialCameraPosition: CameraPosition(
                target: LatLng(
                    currentLocation!.latitude!, currentLocation!.longitude!),
                zoom: 13.5,
              ),
              polylines: {
                Polyline(
                  polylineId: PolylineId("rount"),
                  points: polylineCoordinates,
                  color: primaryColor,
                  width: 6,
                )
              },
              markers: {
                Marker(
                  markerId: const MarkerId("currentlocations"),
                  position: LatLng(
                      currentLocation!.latitude!, currentLocation!.longitude!),
                ),
                Marker(
                  markerId: MarkerId("destination"),
                  position: destination,
                ),
              },
              onMapCreated: (mapController) {
                _contoller.complete(mapController);
              },
            ),
    );
  }
}

class myMapsTLeoSu extends StatefulWidget {
  const myMapsTLeoSu({Key? key}) : super(key: key);



 @override
  State<myMapsTLeoSu> createState() => _myMapsTLeoSuState();
}

class _myMapsTLeoSuState extends State<myMapsTLeoSu> {
  final Completer<GoogleMapController> _contoller = Completer();



 static const LatLng souceLocation =
      LatLng(16.738474849703515, 101.57752557203945);
  static const LatLng destination =
      LatLng(15.927009860688269, 98.7532868593964);



 List<LatLng> polylineCoordinates = [];
  LocationData? currentLocation;



 void getCurrentLocation() async {
    Location location = Location();



   location.getLocation().then(
      (location) {
        currentLocation = location;
      },
    );



   GoogleMapController googleMapController = await _contoller.future;
  }



 void getPolyPoints() async {
    PolylinePoints polylinePoints = PolylinePoints();



   PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
      google_api_key,
      PointLatLng(souceLocation.latitude, destination.longitude),
      PointLatLng(destination.latitude, souceLocation.longitude),
    );



   if (result.points.isEmpty) {
      result.points.forEach((PointLatLng point) =>
          polylineCoordinates.add(LatLng(point.latitude, point.longitude)));
      setState(() {});
    }
  }



 @override
  void initState() {
    getCurrentLocation();
    getPolyPoints();
    super.initState();
  }



 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("น้ำตกทีลอซู"),
      ),
      body: currentLocation == null
          ? Center(child: Text("Loading"))
          : GoogleMap(
              initialCameraPosition: CameraPosition(
                target: LatLng(
                    currentLocation!.latitude!, currentLocation!.longitude!),
                zoom: 13.5,
              ),
              polylines: {
                Polyline(
                  polylineId: PolylineId("rount"),
                  points: polylineCoordinates,
                  color: primaryColor,
                  width: 6,
                )
              },
              markers: {
                Marker(
                  markerId: const MarkerId("currentlocations"),
                  position: LatLng(
                      currentLocation!.latitude!, currentLocation!.longitude!),
                ),
                Marker(
                  markerId: MarkerId("destination"),
                  position: destination,
                ),
              },
              onMapCreated: (mapController) {
                _contoller.complete(mapController);
              },
            ),
    );
  }
}

class myMapsKangHinPerng extends StatefulWidget {
  const myMapsKangHinPerng({Key? key}) : super(key: key);



 @override
  State<myMapsKangHinPerng> createState() => _myMapsKangHinPerngState();
}

class _myMapsKangHinPerngState extends State<myMapsKangHinPerng> {
  final Completer<GoogleMapController> _contoller = Completer();



 static const LatLng souceLocation =
      LatLng(16.738474849703515, 101.57752557203945);
  static const LatLng destination =
      LatLng(14.167730952749622, 101.72883803822089);



 List<LatLng> polylineCoordinates = [];
  LocationData? currentLocation;



 void getCurrentLocation() async {
    Location location = Location();



   location.getLocation().then(
      (location) {
        currentLocation = location;
      },
    );



   GoogleMapController googleMapController = await _contoller.future;
  }



 void getPolyPoints() async {
    PolylinePoints polylinePoints = PolylinePoints();



   PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
      google_api_key,
      PointLatLng(souceLocation.latitude, destination.longitude),
      PointLatLng(destination.latitude, souceLocation.longitude),
    );



   if (result.points.isEmpty) {
      result.points.forEach((PointLatLng point) =>
          polylineCoordinates.add(LatLng(point.latitude, point.longitude)));
      setState(() {});
    }
  }



 @override
  void initState() {
    getCurrentLocation();
    getPolyPoints();
    super.initState();
  }



 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("น้ำตกแก่งหินเพลิง"),
      ),
      body: currentLocation == null
          ? Center(child: Text("Loading"))
          : GoogleMap(
              initialCameraPosition: CameraPosition(
                target: LatLng(
                    currentLocation!.latitude!, currentLocation!.longitude!),
                zoom: 13.5,
              ),
              polylines: {
                Polyline(
                  polylineId: PolylineId("rount"),
                  points: polylineCoordinates,
                  color: primaryColor,
                  width: 6,
                )
              },
              markers: {
                Marker(
                  markerId: const MarkerId("currentlocations"),
                  position: LatLng(
                      currentLocation!.latitude!, currentLocation!.longitude!),
                ),
                Marker(
                  markerId: MarkerId("destination"),
                  position: destination,
                ),
              },
              onMapCreated: (mapController) {
                _contoller.complete(mapController);
              },
            ),
    );
  }
}

class myMapsPhusheFah extends StatefulWidget {
  const myMapsPhusheFah({Key? key}) : super(key: key);



 @override
  State<myMapsPhusheFah> createState() => _myMapsPhusheFahState();
}

class _myMapsPhusheFahState extends State<myMapsPhusheFah> {
  final Completer<GoogleMapController> _contoller = Completer();



 static const LatLng souceLocation =
      LatLng(16.738474849703515, 101.57752557203945);
  static const LatLng destination =
      LatLng(19.850230524508536, 100.4541104180054);



 List<LatLng> polylineCoordinates = [];
  LocationData? currentLocation;



 void getCurrentLocation() async {
    Location location = Location();



   location.getLocation().then(
      (location) {
        currentLocation = location;
      },
    );



   GoogleMapController googleMapController = await _contoller.future;
  }



 void getPolyPoints() async {
    PolylinePoints polylinePoints = PolylinePoints();



   PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
      google_api_key,
      PointLatLng(souceLocation.latitude, destination.longitude),
      PointLatLng(destination.latitude, souceLocation.longitude),
    );



   if (result.points.isEmpty) {
      result.points.forEach((PointLatLng point) =>
          polylineCoordinates.add(LatLng(point.latitude, point.longitude)));
      setState(() {});
    }
  }



 @override
  void initState() {
    getCurrentLocation();
    getPolyPoints();
    super.initState();
  }



 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("วนอุทยานภูชี้ฟ้า"),
      ),
      body: currentLocation == null
          ? Center(child: Text("Loading"))
          : GoogleMap(
              initialCameraPosition: CameraPosition(
                target: LatLng(
                    currentLocation!.latitude!, currentLocation!.longitude!),
                zoom: 13.5,
              ),
              polylines: {
                Polyline(
                  polylineId: PolylineId("rount"),
                  points: polylineCoordinates,
                  color: primaryColor,
                  width: 6,
                )
              },
              markers: {
                Marker(
                  markerId: const MarkerId("currentlocations"),
                  position: LatLng(
                      currentLocation!.latitude!, currentLocation!.longitude!),
                ),
                Marker(
                  markerId: MarkerId("destination"),
                  position: destination,
                ),
              },
              onMapCreated: (mapController) {
                _contoller.complete(mapController);
              },
            ),
    );
  }
}





