import 'package:flutter/material.dart';
import 'package:r_map/src/screens/bienvenida.dart';
import 'package:r_map/src/screens/confirmacion_contrasena_reestablecida.dart';
import 'package:r_map/src/screens/example.dart';
import 'package:r_map/src/components/carousel.dart';
import 'package:r_map/src/screens/login.dart';
import 'package:r_map/src/screens/404.dart';
import 'package:r_map/src/screens/recuperacion_contrasena.dart';
import 'package:r_map/src/screens/registro.dart';
import 'package:r_map/src/screens/reestablecer_contrasena.dart';
import 'package:r_map/src/screens/seleccion_user.dart';
import 'package:r_map/src/screens/select_establishment.dart';
import 'package:r_map/src/screens/dashboard.dart';

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
                // return const SeleccionUser();
                // return const dashboard();
                return const Establishment();
              case "/login":
                return const Login();
              case "/registro":
                return const Registro();
              case "/bienvenida":
                return const Bienvenida();
              case "/recuperacionContrasena":
                return const RecuperacionContrasena();
              case "/reestablecerContrasena":
                return const ReestablecerContrasena();
              case "/confirmacionContrasenaRestablecida":
                return const ConfirmacionContrasenaRestablecida();
              default:
                return const PageNotFound();
            }
          },
        );
      },
    );
  }
}
