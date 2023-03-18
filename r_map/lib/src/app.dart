import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:r_map/src/screens/bienvenida.dart';
import 'package:r_map/src/screens/confirmacion_contrasena_reestablecida.dart';
import 'package:r_map/src/screens/example.dart';
import 'package:r_map/src/components/carousel.dart';
import 'package:r_map/src/screens/login.dart';
import 'package:r_map/src/screens/404.dart';
import 'package:r_map/src/screens/recuperacion_contrasena.dart';
import 'package:r_map/src/screens/recycling_information.dart';
import 'package:r_map/src/screens/registro.dart';
import 'package:r_map/src/screens/reestablecer_contrasena.dart';
import 'package:r_map/src/screens/seleccion_user.dart';
import 'package:r_map/src/screens/select_establishment.dart';
import 'package:r_map/src/screens/dashboard.dart';


final navigatorKey = GlobalKey<NavigatorState>();
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
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
                return const SeleccionUser();
              case "/login":
              return StreamBuilder<User?>(
                stream: FirebaseAuth.instance.authStateChanges(),
                builder: (context, snapshot) {
                  // if(snapshot.connectionState == ConnectionState.waiting){
                  //   return Center(child: CircularProgressIndicator());
                  // }else if(snapshot.hasError){
                  //   return Center(child: Text("Algo salio mal"));
                  // }else 
                  
                  
                  if (!snapshot.hasData) {
                    return Login();
                  } else {
                    return Bienvenida();
                  }
                },
              );
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
              case "/irdashboard":
                return const dashboard();
              case "/establishment":
                return const Establishment();
              case "/recycling":
                return const InfoRecycling();
              default:
                return const PageNotFound();
            }
          },
        );
      },
    );
  }
}