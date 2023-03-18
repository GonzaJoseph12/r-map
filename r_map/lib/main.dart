import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:r_map/src/app.dart';
import 'package:firebase_core/firebase_core.dart';
// void main() => runApp(const MyApp());

Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}