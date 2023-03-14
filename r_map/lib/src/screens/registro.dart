import 'package:flutter/material.dart';

bool _loading = false;

class Registro extends StatefulWidget {
  const Registro({super.key});
  @override
  State<Registro> createState() => _RegistroState();
}

class _RegistroState extends State<Registro> {
  final GlobalKey<FormState> _formKey2 = GlobalKey<FormState>();
  bool _agree1 = false;
  bool _agree2 = false;
  bool _obscureText = true;
  String _password = '';

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
              child: Form(
                key: _formKey2,
                child: Column(
                  children: <Widget>[
                    Container(
                      width: 375,
                      height: 640,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: const Color.fromRGBO(255, 255, 255, 1),
                      ),
                      margin: const EdgeInsets.only(top: 160),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 35, right: 35, bottom: 20, top: 40),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            SizedBox(
                              width: 277,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  const Text(
                                    'Usuario',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w500),
                                  ),
                                  const SizedBox(
                                    height: 7,
                                  ),
                                  TextFormField(
                                    decoration: InputDecoration(
                                      hintText: 'Nombre de usuario',
                                      fillColor: const Color.fromRGBO(
                                          239, 239, 234, 1),
                                      filled: true,
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(15),
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
                            const SizedBox(
                              height: 20,
                            ),
                            SizedBox(
                              width: 277,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  const Text(
                                    'Correo electrónico',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w500),
                                  ),
                                  const SizedBox(
                                    height: 7,
                                  ),
                                  TextFormField(
                                    decoration: InputDecoration(
                                      hintText: 'Correo electrónico',
                                      fillColor: const Color.fromRGBO(
                                          239, 239, 234, 1),
                                      filled: true,
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(15),
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
                            const SizedBox(
                              height: 20,
                            ),
                            SizedBox(
                              width: 277,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  const Text(
                                    'Correo electrónico',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w500),
                                  ),
                                  const SizedBox(
                                    height: 7,
                                  ),
                                  TextFormField(
                                    decoration: InputDecoration(
                                      suffixIcon: IconButton(
                                        icon: const Icon(Icons.remove_red_eye),
                                        onPressed: () {
                                          setState(() {
                                            _obscureText = !_obscureText;
                                          });
                                        },
                                      ),
                                      hintText: 'Contraseña',
                                      fillColor: const Color.fromRGBO(
                                          239, 239, 234, 1),
                                      filled: true,
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(15),
                                        borderSide: const BorderSide(
                                            color: Color.fromRGBO(
                                                217, 219, 214, 1),
                                            width: 2.0),
                                      ),
                                    ),
                                    validator: (val) {
                                      if (val == null || val.isEmpty) {
                                        return 'Campo vacío';
                                      } else if (val.length < 6) {
                                        return 'Password too short.';
                                      }
                                      return null;
                                    },
                                    onSaved: (val) => _password = val!,
                                    obscureText: _obscureText,
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 25),
                            DefaultTextStyle(
                              style: const TextStyle(
                                fontSize: 12,
                                color: Colors.black,
                              ),
                              child: SizedBox(
                                width: 277,
                                child: Row(
                                  children: <Widget>[
                                    Checkbox(
                                      value: _agree1,
                                      activeColor:
                                          const Color.fromRGBO(58, 90, 13, 1),
                                      onChanged: (isChecked) {
                                        setState(() {
                                          _agree1 = isChecked!;
                                        });
                                      },
                                    ),
                                    const Text('Acepto los'),
                                    TextButton(
                                      onPressed: () {},
                                      child: const Text(
                                        'términos y condiciones',
                                        style: TextStyle(
                                          color: Color.fromRGBO(58, 90, 13, 1),
                                          decoration: TextDecoration.underline,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            DefaultTextStyle(
                              style: const TextStyle(
                                fontSize: 12,
                                color: Colors.black,
                              ),
                              child: SizedBox(
                                width: 277,
                                child: Wrap(
                                  crossAxisAlignment: WrapCrossAlignment.center,
                                  alignment: WrapAlignment.start,
                                  children: <Widget>[
                                    Checkbox(
                                        value: _agree2,
                                        activeColor:
                                            const Color.fromRGBO(58, 90, 13, 1),
                                        onChanged: (isChecked) {
                                          setState(() {
                                            _agree2 = isChecked!;
                                          });
                                        }),
                                    const Text(
                                        'Recordarme y mantener la sesión iniciada.'),
                                  ],
                                ),
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
                                      'Registrase',
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
                            const SizedBox(
                              height: 70,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Positioned(
                top: 95,
                child: SizedBox(
                  width: 365,
                  child: Padding(
                    padding: EdgeInsets.only(left: 25),
                    child: Text(
                      'Registro',
                      style: TextStyle(
                        color: Color.fromRGBO(58, 90, 13, 1),
                        fontSize: 28,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                )),
            Positioned(
              bottom: 30,
              left: 20,
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
                    Icons.arrow_back,
                    size: 40,
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

// pintando el lien


