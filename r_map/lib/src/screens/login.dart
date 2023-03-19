import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:r_map/src/app.dart';

bool _loading = false;

class Login extends StatefulWidget {
  const Login({super.key});
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool _agree = false;
  bool _obscureText = true;
  String _password = '';

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromRGBO(217, 229, 198, 1),
        height: double.infinity,
        width: double.infinity,
        child: CustomPaint(
          painter: _HeaderPaintDiagonal(),
          child: SingleChildScrollView(
            child: Stack(
              alignment: AlignmentDirectional.center,
              children: <Widget>[
                Positioned(
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: <Widget>[
                        const SizedBox(
                          height: 0,
                        ),
                        Card(
                          color: const Color.fromRGBO(255, 255, 255, 1),
                          elevation: 3,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          margin: const EdgeInsets.only(
                              left: 25, right: 25, top: 70),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 35, vertical: 20),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                const SizedBox(
                                  height: 60,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Center(
                                  child: Text(
                                    'Iniciar Sesión',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      right: 50, left: 50, top: 24, bottom: 20),
                                  child: Container(
                                    // height: 24,
                                    // margin: const EdgeInsets.only(top: 3.0, bottom: 10),
                                    decoration: const BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                          width: 1,
                                          color:
                                              Color.fromRGBO(154, 154, 154, 1),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 250,
                                  child: TextFormField(
                                    controller: emailController,
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
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                SizedBox(
                                  width: 250,
                                  child: TextFormField(
                                    controller: passwordController,
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
                                        return 'Please enter some text';
                                      } else if (val.length < 6) {
                                        return 'Password too short.';
                                      }
                                      return null;
                                    },
                                    onSaved: (val) => _password = val!,
                                    obscureText: _obscureText,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                SizedBox(
                                  width: 277,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: <Widget>[
                                      InkWell(
                                        onTap: () {
                                          Navigator.of(context).popAndPushNamed(
                                              '/recuperacionContrasena');
                                        },
                                        child: const Text(
                                          '¿Olvidaste tu contraseña?',
                                          style: TextStyle(
                                            color: Color.fromRGBO(
                                                154, 154, 154, 1),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 15),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Row(
                                    children: <Widget>[
                                      Checkbox(
                                        value: _agree,
                                        activeColor:
                                            const Color.fromRGBO(58, 90, 13, 1),
                                        onChanged: (isChecked) {
                                          setState(() {
                                            _agree = isChecked!;
                                          });
                                        },
                                      ),
                                      const Text(
                                        'Recordarme y mantener la sesión',
                                        style: TextStyle(
                                          fontSize:
                                              13, // Ajusta el tamaño de fuente según tus necesidades
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 20),
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
                                  // onPressed: () {
                                  //   if (_formKey.currentState!.validate()) {
                                  //     // Process data.
                                  //   }
                                  //   Navigator.of(context)
                                  //       .popAndPushNamed('/bienvenida');
                                  // },

                                  onPressed: () async {
                                    if (_formKey.currentState!.validate()) {
                                      try {
                                        await signIn();
                                        // Si la autenticación es exitosa, navega a la pantalla de bienvenida.
                                        Navigator.of(context)
                                            .pushNamed('/bienvenida');
                                      } catch (e) {
                                        // La autenticación falló. Muestra un mensaje de error al usuario.
                                      }
                                    }
                                  },

                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 16, vertical: 8),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        const Text(
                                          'Ingresar',
                                          style: TextStyle(
                                            color:
                                                Color.fromRGBO(27, 45, 67, 1),
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
                                              color: Color.fromRGBO(
                                                  26, 112, 218, 1),
                                            ),
                                          ),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 20),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    side: const BorderSide(
                                        width: 1, color: Colors.black),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    fixedSize: const Size(260, 40),
                                    backgroundColor:
                                        const Color.fromRGBO(255, 255, 255, 1),
                                    textStyle: const TextStyle(
                                        color: Color.fromRGBO(27, 45, 67, 1),
                                        fontSize: 15,
                                        fontStyle: FontStyle.normal),
                                  ),
                                  // onPressed: () => _login(context),
                                  // onPressed: () {},
                                  onPressed: signIn,

                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 16, vertical: 8),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Image.network(
                                            'https://www.pngplay.com/wp-content/uploads/13/Google-Logo-PNG-Photo-Image.png'),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        const Text(
                                          'Continuar con Google',
                                          style: TextStyle(
                                            color:
                                                Color.fromRGBO(27, 45, 67, 1),
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
                                              color: Color.fromRGBO(
                                                  26, 112, 218, 1),
                                            ),
                                          ),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 25),
                                Column(
                                  children: <Widget>[
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: const <Widget>[
                                          Text('¿Aún no tienes una cuenta?'),
                                        ]),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        const Text('Registrate'),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        InkWell(
                                          onTap: () {
                                            Navigator.of(context)
                                                .popAndPushNamed('/registro');
                                          },
                                          child: const Text(
                                            'Aquí',
                                            style: TextStyle(
                                              color:
                                                  Color.fromRGBO(58, 90, 13, 1),
                                              decoration:
                                                  TextDecoration.underline,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 20,
                  child: Container(
                    width: 120,
                    height: 120,
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(228, 239, 237, 1),
                      borderRadius: BorderRadius.all(
                        Radius.circular(100),
                      ), //BorderRadius.all
                    ),
                    child: Center(
                      child: Container(
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          width: 95,
                          height: 95,
                          alignment: Alignment.center,
                          child: Image.asset(
                            'assets/logo.png',
                            width: 64,
                            height: 43,
                          )),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _login(BuildContext context) {
    if (!_loading) {}

    Navigator.of(context).pushNamed(
      '/home',
    );
  }

  _showRegister(BuildContext context) {
    Navigator.of(context).pushNamed(
      '/register',
    );
  }

  Future signIn() async {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => Center(child: CircularProgressIndicator()));

    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );
    } on FirebaseAuthException catch (e) {
      print(e);
    }

    navigatorKey.currentState!.popUntil((route) => route.isFirst);
  }
}

// pintando el lien

class _HeaderPaintDiagonal extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color.fromRGBO(228, 239, 237, 1)
      ..style = PaintingStyle.fill
      ..strokeWidth = 10;
    final path = Path();
    path.lineTo(0, size.height * 0.75);
    path.lineTo(size.width, size.height * 0.32);
    path.lineTo(size.width, 0);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
