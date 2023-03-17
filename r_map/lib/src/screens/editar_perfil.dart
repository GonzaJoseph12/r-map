import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

bool _loading = false;

class EditarPerfil extends StatefulWidget {
  const EditarPerfil({super.key});
  @override
  State<EditarPerfil> createState() => _EditarPerfilState();
}

class _EditarPerfilState extends State<EditarPerfil> {
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
              child: Column(
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    height: 525,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: const Color.fromRGBO(255, 255, 255, 1),
                    ),
                    margin: const EdgeInsets.only(top: 230),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 35, right: 35, bottom: 20, top: 40),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          const SizedBox(height: 20),
                          ListTile(
                            onTap: () {
                              Navigator.of(context)
                                  .popAndPushNamed('/editarInfoPersonal');
                            },
                            contentPadding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            title: Padding(
                              padding: const EdgeInsets.only(left: 32.0),
                              child: Container(
                                decoration: const BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: Colors.grey,
                                      width: 0.5,
                                    ),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 8, horizontal: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const <Widget>[
                                      Text('Información personal'),
                                      Icon(
                                        Icons.arrow_forward_ios,
                                        size: 16,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          ListTile(
                            onTap: () {
                              // Update the UI based on drawer item selected
                            },
                            contentPadding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            title: Padding(
                              padding: const EdgeInsets.only(left: 32.0),
                              child: Container(
                                decoration: const BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: Colors.grey,
                                      width: 0.5,
                                    ),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 8, horizontal: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const <Widget>[
                                      Text('Mis publicaciones'),
                                      Icon(
                                        Icons.arrow_forward_ios,
                                        size: 16,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          ListTile(
                            onTap: () {
                              // Update the UI based on drawer item selected
                            },
                            contentPadding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            title: Padding(
                              padding: const EdgeInsets.only(left: 32.0),
                              child: Container(
                                decoration: const BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: Colors.grey,
                                      width: 0.5,
                                    ),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 8, horizontal: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const <Widget>[
                                      Text('Cambiar contraseña'),
                                      Icon(
                                        Icons.arrow_forward_ios,
                                        size: 16,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
                // top: 100,
                child: Column(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(top: 90),
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Column(
                      children: <Widget>[
                        Container(
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromRGBO(112, 188, 197, 1),
                          ),
                          child: Image.asset(
                            'assets/avatar.png',
                            height: 81,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          'Juan Roberto',
                          style: TextStyle(
                            color: Color.fromRGBO(58, 90, 13, 1),
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )),
            Positioned(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 60,
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              IconButton(
                                icon: const Icon(
                                  Icons.arrow_back_ios,
                                  size: 25,
                                  color: Color.fromRGBO(58, 90, 13, 1),
                                ),
                                onPressed: () {
                                  Navigator.of(context)
                                      .popAndPushNamed('/login');
                                },
                              ),
                            ],
                          ),
                          Row(
                            children: const <Widget>[
                              Icon(
                                CupertinoIcons.checkmark_shield_fill,
                                color: Color.fromRGBO(202, 171, 9, 1),
                                size: 18,
                              ),
                              SizedBox(
                                width: 7,
                              ),
                              Text(
                                '100',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 16),
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
          ],
        ),
      ),
    );
  }
}
