import 'package:flutter/material.dart';
import 'package:r_map/src/screens/inicio.dart';
import 'package:r_map/src/screens/404.dart';
import 'package:r_map/src/screens/registro.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.cyan.shade300,
      ),
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
          builder: (BuildContext context) {
            switch (settings.name) {
              case "/":
                return const Registro();
              case "/login":
                return const Login();
              default:
                return const PageNotFound();
            }
          },
        );
      },
    );
  }
}
