import 'package:flutter/material.dart';

bool _loading = false;

class RecuperacionContrasena extends StatefulWidget {
  const RecuperacionContrasena({super.key});
  @override
  State<RecuperacionContrasena> createState() => _RecuperacionContrasenaState();
}

class _RecuperacionContrasenaState extends State<RecuperacionContrasena> {
  final GlobalKey<FormState> _formKey2 = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromRGBO(217, 229, 198, 1),
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          // alignment: AlignmentDirectional.center,
          children: <Widget>[
            Positioned(
              top: 0,
              child: Image.asset(
                'assets/gree-natural1.png',
                color: const Color.fromRGBO(180, 205, 171, 0.7),
                height: 267,
              ),
            ),
            Positioned(
              child: Form(
                key: _formKey2,
                child: Column(
                  children: <Widget>[
                    Container(
                      width: 375,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: const Color.fromRGBO(255, 255, 255, 1),
                      ),
                      margin: const EdgeInsets.only(top: 240),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 35, right: 35, bottom: 20, top: 40),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            SizedBox(
                              width: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Image.asset(
                                        'assets/recuperarUser.png',
                                        height: 146,
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 25,
                                  ),
                                  const Text(
                                    'Olvidé mi contraseña',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Text(
                                    'Te enviaremos un email con instrucciones de como reestablecer tu contraseña',
                                    style: TextStyle(fontSize: 14),
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  SizedBox(
                                    width: 277,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        TextFormField(
                                          decoration: InputDecoration(
                                            hintText:
                                                'Escribe tu correo aquí...',
                                            fillColor: const Color.fromRGBO(
                                                239, 239, 234, 1),
                                            filled: true,
                                            enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                              borderSide: const BorderSide(
                                                  color: Color.fromRGBO(
                                                      217, 219, 214, 1),
                                                  width: 2.0),
                                            ),
                                          ),
                                          validator: (val) {
                                            if (val == null || val.isEmpty) {
                                              return 'Campo vacío';
                                            }
                                            return null;
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 25),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                fixedSize: const Size(260, 40),
                                backgroundColor:
                                    const Color.fromRGBO(227, 239, 237, 1),
                                textStyle: const TextStyle(
                                    color: Color.fromRGBO(27, 45, 67, 1),
                                    fontSize: 15,
                                    fontStyle: FontStyle.normal),
                              ),
                              // onPressed: () => _login(context),
                              onPressed: () {
                                if (_formKey2.currentState!.validate()) {
                                  // Process data.
                                }
                              },
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 8),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    const Text(
                                      'Enviar',
                                      style: TextStyle(
                                        color: Color.fromRGBO(27, 45, 67, 1),
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    if (_loading)
                                      Container(
                                        height: 20,
                                        width: 20,
                                        margin: const EdgeInsets.only(left: 20),
                                        child: const CircularProgressIndicator(
                                          color:
                                              Color.fromRGBO(26, 112, 218, 1),
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(height: 35),
                            DefaultTextStyle(
                              style: const TextStyle(
                                fontSize: 12,
                                color: Colors.black,
                              ),
                              child: SizedBox(
                                width: 277,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    const Text(
                                        '¿Ya tienes una cuenta? Inicia sesión'),
                                    TextButton(
                                      onPressed: () {},
                                      child: const Text(
                                        'Aquí',
                                        style: TextStyle(
                                          color: Color.fromRGBO(58, 90, 13, 1),
                                          decoration: TextDecoration.underline,
                                          fontSize: 11,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(height: 25),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Positioned(
                top: 140,
                child: SizedBox(
                  width: 365,
                  child: Padding(
                    padding: EdgeInsets.only(left: 25),
                    child: Text(
                      'Recuperación',
                      style: TextStyle(
                        color: Color.fromRGBO(58, 90, 13, 1),
                        fontSize: 33,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                )),
            Positioned(
              top: 25,
              left: 10,
              child: Container(
                width: 60,
                height: 60,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(217, 229, 198, 1),
                  borderRadius: BorderRadius.all(
                    Radius.circular(100),
                  ), //BorderRadius.all
                ),
                child: IconButton(
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    size: 30,
                    color: Color.fromRGBO(58, 90, 13, 1),
                  ),
                  onPressed: () {
                    Navigator.of(context).popAndPushNamed('/login');
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
