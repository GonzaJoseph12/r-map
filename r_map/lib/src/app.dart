import 'package:flutter/material.dart';
import 'package:r_map/src/screens/inicio.dart';
import 'package:r_map/src/screens/404.dart';
import 'package:r_map/src/screens/dashboard.dart';
import 'package:r_map/src/screens/map_try.dart';
import 'package:r_map/src/mmap.dart';
import 'package:r_map/src/screens/dash.dart';
class MyApp extends StatelessWidget {
    // const MyApp({super.key});
    const MyApp({Key? key}) : super(key: key); //CODIGO MODIFICADO
    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        title: 'Material App',
        theme: ThemeData(
          brightness: Brightness.light,
          primaryColor: Colors.cyan.shade300,
        ),
        onGenerateRoute: (RouteSettings settings) {
          return MaterialPageRoute(
            builder: (BuildContext context) {
              switch (settings.name) {
                case "/":
                  // return const HomeWidget();
                    return const dash();
                  // return const DashboardWidget();
                  // return const MapSample();
                  // return MapScreen();
                default:
                  return const PageNotFound();
              }
            },
          );
        },
      );
  }
}
