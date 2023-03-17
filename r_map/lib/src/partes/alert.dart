import 'package:flutter/material.dart';

class Alert extends StatelessWidget {
  const Alert({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          contentPadding:
              const EdgeInsets.only(top: 30, left: 30, right: 30, bottom: 10),
          content: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(228, 239, 237, 1),
                  borderRadius: BorderRadius.all(
                    Radius.circular(100),
                  ), //BorderRadius.all
                ),
                width: 28,
                height: 28,
                child: const Icon(
                  Icons.check_circle_outline,
                  size: 20,
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              const Flexible(
                child: Text(
                    'Te hemos enviado un email con indicaciones para reestablecer tu contraseña. Por favor, revisa tu bandeja de entrada.'),
              ),
            ],
          ),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 50, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(27, 45, 67, 1),
                      foregroundColor: const Color.fromRGBO(228, 239, 237, 1),
                      padding: const EdgeInsets.all(16.0),
                      textStyle: const TextStyle(fontSize: 15),
                      shape: const StadiumBorder(),
                    ),
                    onPressed: () => Navigator.pop(context, 'OK'),
                    child: const Text('OK'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      child: const Text('Show Dialog'),
    );
  }
}
