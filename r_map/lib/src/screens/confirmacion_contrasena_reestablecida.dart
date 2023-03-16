import 'package:flutter/material.dart';

class ConfirmacionContrasenaRestablecida extends StatefulWidget {
  const ConfirmacionContrasenaRestablecida({super.key});

  @override
  State<ConfirmacionContrasenaRestablecida> createState() =>
      _ConfirmacionContrasenaRestablecidaState();
}

class _ConfirmacionContrasenaRestablecidaState
    extends State<ConfirmacionContrasenaRestablecida> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromRGBO(228, 239, 237, 1),
        height: 800,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(35),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: const <Widget>[
                  Icon(
                    Icons.lock_person,
                    color: Color.fromRGBO(118, 154, 41, 1),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Contraseña restablecida',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                        color: Color.fromRGBO(21, 22, 25, 1)),
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'Tu contraseña ha sido actualizada correctamente. Ya puedes iniciar sesión en tu cuenta.',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Color.fromRGBO(21, 22, 25, 1)),
              ),
              const SizedBox(
                height: 25,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  fixedSize: const Size(260, 40),
                  backgroundColor: const Color.fromRGBO(27, 45, 67, 1),
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
                        'Iniciar sesión',
                        style: TextStyle(
                            color: Color.fromRGBO(228, 239, 237, 1),
                            fontWeight: FontWeight.w500,
                            fontSize: 14),
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
