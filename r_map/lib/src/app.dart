import 'package:flutter/material.dart';
import 'package:r_map/src/screens/inicio.dart';
import 'package:r_map/src/screens/404.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
                return const HomeWidget();
              default:
                return const PageNotFound();
            }
          },
        );
      },
    );
  }
}
