import 'package:flutter/material.dart';

class SeleccionUser extends StatefulWidget {
  const SeleccionUser({super.key});
  @override
  State<SeleccionUser> createState() => _SeleccionUserState();
}

class _SeleccionUserState extends State<SeleccionUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromRGBO(228, 239, 237, 1),
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 150,
              ),
              Image.asset(
                'assets/logo.png',
                height: 159,
              ),
              const Text(
                'Mejorando el planeta juntos',
                style: TextStyle(fontSize: 13),
              ),
              const SizedBox(
                height: 150,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  fixedSize: const Size(260, 40),
                  backgroundColor: const Color.fromRGBO(217, 229, 198, 1),
                  textStyle: const TextStyle(
                      color: Color.fromRGBO(27, 45, 67, 1),
                      fontSize: 15,
                      fontStyle: FontStyle.normal),
                ),
                // onPressed: () => _login(context),
                onPressed: () {
                  Navigator.of(context).popAndPushNamed('/login');
                },
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      Text(
                        'Soy usuario',
                        style: TextStyle(
                            color: Color.fromRGBO(58, 90, 13, 1),
                            fontWeight: FontWeight.w400,
                            fontSize: 14),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  side: const BorderSide(
                      width: 1, color: Color.fromRGBO(58, 90, 13, 1)),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  fixedSize: const Size(260, 40),
                  backgroundColor: const Color.fromRGBO(228, 239, 237, 1),
                  textStyle: const TextStyle(
                      color: Color.fromRGBO(27, 45, 67, 1),
                      fontSize: 15,
                      fontStyle: FontStyle.normal),
                ),
                // onPressed: () => _login(context),
                onPressed: () {},
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      Text(
                        'Ingresar como Administrador',
                        style: TextStyle(
                            color: Color.fromRGBO(58, 90, 13, 1),
                            fontWeight: FontWeight.w500,
                            fontSize: 13.5),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
