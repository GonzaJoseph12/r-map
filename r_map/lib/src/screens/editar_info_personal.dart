import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

bool _loading = false;

class EditarInfoPersonal extends StatefulWidget {
  const EditarInfoPersonal({super.key});
  @override
  State<EditarInfoPersonal> createState() => _EditarInfoPersonalState();
}

class _EditarInfoPersonalState extends State<EditarInfoPersonal> {
  final GlobalKey<FormState> _formKey2 = GlobalKey<FormState>();
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
                      width: double.infinity,
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
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: const Color.fromRGBO(228, 239, 237, 1),
                              ),
                              height: 113,
                              width: 289,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 30, vertical: 10),
                                child: Row(children: <Widget>[
                                  Container(
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color.fromRGBO(112, 188, 197, 1),
                                    ),
                                    child: Image.asset(
                                      'assets/avatar.png',
                                      height: 70,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 25,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      const Text(
                                        'JUAN ROBERTO',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700),
                                      ),
                                      const Text(
                                        'juancito123@gmail.com',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w300,
                                            fontSize: 10),
                                      ),
                                      const SizedBox(
                                        height: 6,
                                      ),
                                      Row(
                                        children: const <Widget>[
                                          Icon(
                                            CupertinoIcons
                                                .checkmark_shield_fill,
                                            color:
                                                Color.fromRGBO(202, 171, 9, 1),
                                            size: 18,
                                          ),
                                          SizedBox(
                                            width: 7,
                                          ),
                                          Text(
                                            '100',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 16),
                                          ),
                                        ],
                                      ),
                                    ],
                                  )
                                ]),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            SizedBox(
                              width: 277,
                              child: Row(
                                children: const <Widget>[
                                  Text(
                                    'Foto de perfil',
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
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    fixedSize: const Size(133, 40),
                                    backgroundColor:
                                        const Color.fromRGBO(227, 239, 237, 1),
                                    textStyle: const TextStyle(
                                        color: Color.fromRGBO(27, 45, 67, 1),
                                        fontSize: 15,
                                        fontStyle: FontStyle.normal),
                                  ),
                                  // onPressed: () => _login(context),
                                  onPressed: () {
                                    Navigator.of(context).popAndPushNamed(
                                        '/confirmacionContrasenaRestablecida');
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 16, vertical: 8),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        const Text(
                                          'Eliminar',
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
                                const SizedBox(
                                  width: 10,
                                ),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                    fixedSize: const Size(133, 40),
                                    backgroundColor:
                                        const Color.fromRGBO(217, 229, 198, 1),
                                    textStyle: const TextStyle(
                                        color: Color.fromRGBO(27, 45, 67, 1),
                                        fontSize: 15,
                                        fontStyle: FontStyle.normal),
                                  ),
                                  // onPressed: () => _login(context),
                                  onPressed: () => showDialog<String>(
                                    context: context,
                                    builder: (BuildContext context) =>
                                        AlertDialog(
                                      shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(24),
                                        ),
                                      ),
                                      contentPadding: const EdgeInsets.only(
                                          top: 30,
                                          left: 30,
                                          right: 30,
                                          bottom: 5),
                                      content: SizedBox(
                                        height: 60,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: const <Widget>[
                                            Flexible(
                                              child: Text(
                                                'Permisos de Galería',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 8,
                                            ),
                                            Flexible(
                                              child: Text(
                                                '¿Deseas activar el permiso a la galería de tu dispositivo?',
                                                style: TextStyle(fontSize: 11),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      actions: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              bottom: 8.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              SizedBox(
                                                height: 40,
                                                width: 135,
                                                child: TextButton(
                                                  style: TextButton.styleFrom(
                                                    backgroundColor:
                                                        const Color.fromRGBO(
                                                            214, 216, 219, 1),
                                                    foregroundColor:
                                                        const Color.fromRGBO(
                                                            27, 45, 67, 1),
                                                    padding:
                                                        const EdgeInsets.all(
                                                            16.0),
                                                    textStyle: const TextStyle(
                                                        fontSize: 15),
                                                    shape:
                                                        const StadiumBorder(),
                                                  ),
                                                  onPressed: () => Navigator.of(
                                                          context)
                                                      .popAndPushNamed(
                                                          '/reestablecerContrasena'),
                                                  child: const Text('Rechazar'),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 40,
                                                width: 135,
                                                child: TextButton(
                                                  style: TextButton.styleFrom(
                                                    backgroundColor:
                                                        const Color.fromRGBO(
                                                            27, 45, 67, 1),
                                                    foregroundColor:
                                                        const Color.fromRGBO(
                                                            228, 239, 237, 1),
                                                    padding:
                                                        const EdgeInsets.all(
                                                            16.0),
                                                    textStyle: const TextStyle(
                                                        fontSize: 15),
                                                    shape:
                                                        const StadiumBorder(),
                                                  ),
                                                  onPressed: () => Navigator.of(
                                                          context)
                                                      .popAndPushNamed(
                                                          '/reestablecerContrasena'),
                                                  child: const Text('Aceptar'),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 16, vertical: 8),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        const Text(
                                          'Cambiar',
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
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            SizedBox(
                              width: 277,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  const Text(
                                    'Nombre de usuario',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      color: Color.fromRGBO(27, 45, 67, 1),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  TextFormField(
                                    decoration: InputDecoration(
                                      hintText: 'Usuario',
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
                                      // } else if (val.length < 6) {
                                      //   return 'Password too short.';
                                      // }
                                      return null;
                                    },
                                    onSaved: (val) => _password = val!,
                                    onChanged: (value) {},
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
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      color: Color.fromRGBO(27, 45, 67, 1),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  TextFormField(
                                    decoration: InputDecoration(
                                      hintText: 'Email',
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
                                    onChanged: (value) {},
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
                                    const Color.fromRGBO(118, 154, 41, 1),
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
                                      'Actualizar',
                                      style: TextStyle(
                                        color: Color.fromRGBO(255, 255, 255, 1),
                                        fontWeight: FontWeight.w400,
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
                            const SizedBox(height: 20),
                            DefaultTextStyle(
                              style: const TextStyle(
                                fontSize: 10,
                                color: Color.fromRGBO(94, 94, 94, 1),
                              ),
                              child: SizedBox(
                                width: 277,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const <Widget>[
                                    Icon(
                                      CupertinoIcons.checkmark_alt,
                                      color: Color.fromRGBO(118, 154, 41, 1),
                                      size: 20,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      'Tus datos se actualizaron correctamente',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Color.fromRGBO(94, 94, 94, 1),
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
            Positioned(
                top: 150,
                child: SizedBox(
                  width: 365,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Row(
                      children: const <Widget>[
                        Icon(
                          CupertinoIcons.pen,
                          size: 30,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Información Personal',
                          style: TextStyle(
                            color: Color.fromRGBO(58, 90, 13, 1),
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
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
