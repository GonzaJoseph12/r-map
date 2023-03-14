
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'package:flutter/material.dart';

// bool _loading = false;

// class HomeWidget extends StatefulWidget {
//   const HomeWidget({super.key});

//   @override
//   State<HomeWidget> createState() => _HomeWidgetState();
// }

// class _HomeWidgetState extends State<HomeWidget> {
//   bool _agree = false;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//       ),
//     );
//   }

//   _login(BuildContext context) {
//     if (!_loading) {}

//     Navigator.of(context).pushNamed(
//       '/home',
//     );
//   }

//   _showRegister(BuildContext context) {
//     Navigator.of(context).pushNamed(
//       '/register',
//     );
//   }
// }

// // pintando el lien

// class _HeaderPaintDiagonal extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     final paint = Paint()
//       ..color = const Color.fromRGBO(228, 239, 237, 1)
//       ..style = PaintingStyle.fill
//       ..strokeWidth = 10;
//     final path = Path();
//     path.lineTo(0, size.height * 0.75);
//     path.lineTo(size.width, size.height * 0.32);
//     path.lineTo(size.width, 0);
//     canvas.drawPath(path, paint);
//   }

//   @override
//   bool shouldRepaint(CustomPainter oldDelegate) {
//     return false;
//   }
// }

// class MapScreen extends StatefulWidget {
//   @override
//   _MapScreenState createState() => _MapScreenState();
// }

// class _MapScreenState extends State<MapScreen> {
//   Completer<GoogleMapController> _controller = Completer();
//   static const LatLng _center = const LatLng(37.77483, -122.41942);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: GoogleMap(
//         onMapCreated: (GoogleMapController controller) {
//           _controller.complete(controller);
//         },
//         initialCameraPosition: CameraPosition(
//           target: _center,
//           zoom: 11.0,
//         ),
//       ),
//     );
//   }
// }