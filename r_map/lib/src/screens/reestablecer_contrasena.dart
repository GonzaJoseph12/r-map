import 'package:flutter/material.dart';

bool _loading = false;

class ReestablecerContrasena extends StatefulWidget {
  const ReestablecerContrasena({super.key});
  @override
  State<ReestablecerContrasena> createState() => _ReestablecerContrasenaState();
}

class _ReestablecerContrasenaState extends State<ReestablecerContrasena> {
  final GlobalKey<FormState> _formKey2 = GlobalKey<FormState>();
  bool _color = true;
  bool _colorconfirm = true;
  bool _obscureText = true;
  String _password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: const Color.fromRGBO(217, 229, 198, 1),
        child: SingleChildScrollView(
          child: Stack(
            // alignment: AlignmentDirectional.center,
            children: <Widget>[
              Positioned(
                top: 0,
                child: Image.asset(
                  'assets/gree-natural1.png',
                  color: const Color.fromRGBO(180, 205, 171, 0.7),
                  height: 300,
                ),
              ),
              Positioned(
                child: Form(
                  key: _formKey2,
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: 420,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: const Color.fromRGBO(255, 255, 255, 1),
                        ),
                        margin: const EdgeInsets.only(top: 210),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 35, right: 35, bottom: 20, top: 40),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              const SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                width: 277,
                                child: Row(
                                  children: const <Widget>[
                                    Text(
                                      'Restablecimiento de contraseña',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                        color: Color.fromRGBO(27, 45, 67, 1),
                                      ),
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
                                      'Ingresa tu nueva contraseña',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          color:
                                              Color.fromRGBO(102, 110, 122, 1)),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    TextFormField(
                                      decoration: InputDecoration(
                                        suffixIcon: IconButton(
                                          icon: Icon(
                                            Icons.check_circle,
                                            color: _color
                                                ? Colors.green
                                                : Colors.red,
                                          ),
                                          onPressed: () {
                                            setState(() {
                                              _obscureText = !_obscureText;
                                            });
                                          },
                                        ),
                                        hintText: 'Nueva contraseña',
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
                                        } else if (val.length < 6) {
                                          return 'Password too short.';
                                        }
                                        return null;
                                      },
                                      onSaved: (val) => _password = val!,
                                      obscureText: _obscureText,
                                      onChanged: (value) {
                                        if (value.isEmpty) {
                                          setState(() {
                                            _color = false;
                                          });
                                        }
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
                                      'Confirmar contraseña',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          color:
                                              Color.fromRGBO(102, 110, 122, 1)),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    TextFormField(
                                      decoration: InputDecoration(
                                        suffixIcon: IconButton(
                                          icon: Icon(
                                            Icons.check_circle,
                                            color: _colorconfirm
                                                ? Colors.green
                                                : Colors.red,
                                          ),
                                          onPressed: () {
                                            setState(() {
                                              _obscureText = !_obscureText;
                                            });
                                          },
                                        ),
                                        hintText: 'Nueva contraseña',
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
                                        } else if (val.length < 6) {
                                          return 'Password too short.';
                                        }
                                        return null;
                                      },
                                      onSaved: (val) => _password = val!,
                                      obscureText: _obscureText,
                                      onChanged: (value) {
                                        if (value.isEmpty) {
                                          setState(() {
                                            _colorconfirm = false;
                                          });
                                        }
                                      },
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 35),
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
                                  Navigator.of(context).popAndPushNamed(
                                      '/confirmacionContrasenaRestablecida');
                                },
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16, vertical: 8),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      const Text(
                                        'Cambiar contraseña',
                                        style: TextStyle(
                                          color: Color.fromRGBO(27, 45, 67, 1),
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      if (_loading)
                                        Container(
                                          height: 20,
                                          width: 20,
                                          margin:
                                              const EdgeInsets.only(left: 20),
                                          child:
                                              const CircularProgressIndicator(
                                            color:
                                                Color.fromRGBO(26, 112, 218, 1),
                                          ),
                                        ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 50,
                              ),
                              const SizedBox(height: 35),
                              DefaultTextStyle(
                                style: const TextStyle(
                                  fontSize: 10,
                                  color: Color.fromRGBO(94, 94, 94, 1),
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
                                            color:
                                                Color.fromRGBO(58, 90, 13, 1),
                                            decoration:
                                                TextDecoration.underline,
                                            fontSize: 11,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Positioned(
                  top: 150,
                  child: SizedBox(
                    width: 365,
                    child: Padding(
                      padding: EdgeInsets.only(left: 25),
                      child: Text(
                        'Restablece tu contraseña',
                        style: TextStyle(
                          color: Color.fromRGBO(58, 90, 13, 1),
                          fontSize: 24,
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
      ),
    );
  }
}
