// import 'package:flutter/material.dart';

// import 'package:flutter/material.dart';
// import 'package:firebase_database/firebase_database.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';

// class MyMapScreen extends StatefulWidget {
//   @override
//   _MyMapScreenState createState() => _MyMapScreenState();
// }

// class _MyMapScreenState extends State<MyMapScreen> {
//   List<Point> _points = [];

//   @override
//   void initState() {
//     super.initState();
//     _loadPoints();
//   }

//   Future<void> _loadPoints() async {
//     final database = FirebaseDatabase.instance.reference();
//     final pointsRef = database.child('points');

//     pointsRef.onValue.listen((event) {
//       final data = event.snapshot.value;
//       if (data == null) {
//         return;
//       }

//       final points = Map<String, dynamic>.from(data).values.toList();
//       setState(() {
//         _points = points.map((pointData) => Point.fromMap(pointData)).toList();
//       });
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('My Map'),
//       ),
//       body: GoogleMap(
//         initialCameraPosition: CameraPosition(
//           target: LatLng(0, 0),
//           zoom: 12,
//         ),
//         markers: _points.map((point) {
//           return Marker(
//             markerId: MarkerId(point.id),
//             position: LatLng(point.latitude, point.longitude),
//             infoWindow: InfoWindow(
//               title: point.name,
//             ),
//           );
//         }).toSet(),
//       ),
//     );
//   }
// }

// class Point {
//   final String id;
//   final double latitude;
//   final double longitude;
//   final String name;

//   Point({
//     required this.id,
//     required this.latitude,
//     required this.longitude,
//     required this.name,
//   });

//   factory Point.fromMap(Map<String, dynamic> map) {
//     return Point(
//       id: map['id'],
//       latitude: map['latitude'],
//       longitude: map['longitude'],
//       name: map['name'],
//     );
//   }
// }

////////////////2

// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';


// class MapScreen extends StatefulWidget {
//   @override
//   _MapScreenState createState() => _MapScreenState();
// }

// class _MapScreenState extends State<MapScreen> {
//   List<MarkerData> _markerDataList = [];

//   Future<void> _loadMarkerData() async {
//   final snapshot = await FirebaseFirestore.instance.collection('puntos_reciclaje').get();
//   final docs = snapshot.docs;
//   final markerDataList = docs.map((doc) => MarkerData.fromFirestore(doc)).toList();
//   setState(() {
//     _markerDataList = markerDataList;
//   });
// }

//   @override
//   void initState() {
//     super.initState();
//     _loadMarkerData();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: GoogleMap(
//         initialCameraPosition: CameraPosition(
//           target: LatLng(37.4220, -122.0841),
//           zoom: 10,
//         ),
//         markers: _markerDataList.map((markerData) => Marker(
//           markerId: MarkerId(markerData.id),
//           position: LatLng(markerData.latitude, markerData.longitude),
//           infoWindow: InfoWindow(
//             title: markerData.title,
//           ),
//         )).toSet(),
//       ),
//     );
//   }
// }

// class MarkerData {
//   final String id;
//   final double latitude;
//   final double longitude;
//   final String title;

//   MarkerData({
//     required this.id,
//     required this.latitude,
//     required this.longitude,
//     required this.title,
//   });

//   factory MarkerData.fromFirestore(DocumentSnapshot doc) {
//     final data = doc.data() as Map<String, dynamic>;
//     return MarkerData(
//       id: doc.id,
//       latitude: data['latitude'] as double,
//       longitude: data['longitude'] as double,
//       title: data['title'] as String,
//     );
//   }
// }


//////////////////
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

// import 'package:firebase_core/firebase_core.dart';
// import 'firebase_options.dart';



class MapScreen extends StatefulWidget {
  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  List<MarkerData> _markerDataList = [];

  @override
  void initState() {
    super.initState();
    _loadMarkerData();
  }

  Future<void> _loadMarkerData() async {
    final snapshot = await FirebaseFirestore.instance
        .collection('puntos_reciclaje')
        .get();
    final docs = snapshot.docs;
    final markerDataList =
        docs.map((doc) => MarkerData.fromFirestore(doc)).toList();
    setState(() {
      _markerDataList = markerDataList;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: LatLng(-14.075534, -75.734756),
          zoom: 14,
        ),
        markers: _markerDataList
            .map(
              (markerData) => Marker(
                markerId: MarkerId(markerData.id),
                position: LatLng(markerData.latitude, markerData.longitude),
                infoWindow: InfoWindow(
                  title: markerData.title,
                ),
              ),
            )
            .toSet(),
      ),
    );
  }
}

class MarkerData {
  final String id;
  final double latitude;
  final double longitude;
  final String title;

  MarkerData({
    required this.id,
    required this.latitude,
    required this.longitude,
    required this.title,
  });

  factory MarkerData.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;
    return MarkerData(
      id: doc.id,
      latitude: data['latitude'] as double,
      longitude: data['longitude'] as double,
      title: data['name'] as String, // Cambiar 'title' por 'name'
    );
  }
}

/////////////
// import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:r_map/src/cone.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';



// import 'package:firebase_core/firebase_core.dart';
// import 'firebase_options.dart';




// class MyMapWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return StreamBuilder<QuerySnapshot>(
//       stream: puntosReciclajeStream,
//       builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
//         if (!snapshot.hasData) {
//           return Center(child: CircularProgressIndicator());
//         }

//         final puntosReciclaje = snapshot.data.docs;

//         return GoogleMap(
//           initialCameraPosition: CameraPosition(
//             target: LatLng(-34.6063856, -58.435113),
//             zoom: 12,
//           ),
//           markers: Set<Marker>.from(
//             puntosReciclaje.map(
//               (puntoReciclaje) => Marker(
//                 markerId: MarkerId(puntoReciclaje.id),
//                 position: LatLng(
//                   puntoReciclaje.data()['latitud'],
//                   puntoReciclaje.data()['longitud'],
//                 ),
//                 infoWindow: InfoWindow(
//                   title: puntoReciclaje.data()['nombre'],
//                 ),
//               ),
//             ),
//           ),
//         );
//       },
//     );
//   }
// }