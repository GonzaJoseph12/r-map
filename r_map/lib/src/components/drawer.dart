import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;
    return Drawer(
      backgroundColor: const Color.fromRGBO(227, 239, 237, 1),
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Container(
            height: 200,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 1), // changes position of shadow
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 15, top: 60),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(4.0),
                    alignment: Alignment.topCenter, // Agregar esta línea
                    child: Image.asset(
                      'assets/profile.png',
                      width: 80.0,
                      height: 80.0,
                    ),
                  ),
                  const SizedBox(width: 4.0),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(top: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            user.email!.split("@")[0].toUpperCase(),
                            style: const TextStyle(
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(58, 90, 13, 1),
                            ),
                          ),
                          const SizedBox(height: 2.0),
                          Text(
                            user.email!,
                            style: TextStyle(
                              fontSize: 13.0,
                              color: Colors.grey[700],
                            ),
                          ),
                          const SizedBox(height: 10.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const <Widget>[
                              SizedBox(width: 10),
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
                          const SizedBox(height: 4.0),
                          Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 130.0),
                                child: IconButton(
                                  icon: const Icon(Icons.edit),
                                  onPressed: () {
                                    Navigator.of(context)
                                        .popAndPushNamed('/editarPerfil');
                                  },
                                ),
                              ),
                              const SizedBox(width: 4.0),
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
          const SizedBox(
            height: 20,
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).popAndPushNamed('/irdashboard');
            },
            contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
            title: Padding(
              padding: const EdgeInsets.only(left: 32.0),
              child: Row(
                children: const <Widget>[
                  Icon(Icons.home),
                  SizedBox(width: 16.0),
                  Text('Inicio'),
                ],
              ),
            ),
          ),
          Row(
            children: [
              Container(
                width: 230,
                height: 2,
                margin: const EdgeInsets.only(left: 30),
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.grey,
                      width: 0.5,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 0,
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).popAndPushNamed('/establishment');
            },
            contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
            title: Padding(
              padding: const EdgeInsets.only(left: 32.0),
              child: Row(
                children: const <Widget>[
                  Icon(Icons.pin_drop_outlined),
                  SizedBox(width: 16.0),
                  Text('Nueva visita'),
                ],
              ),
            ),
          ),
          Row(
            children: [
              Container(
                width: 230,
                height: 2,
                margin: const EdgeInsets.only(left: 30),
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.grey,
                      width: 0.5,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 0,
          ),
          ListTile(
            onTap: () {
              // Update the UI based on drawer item selected
            },
            contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
            title: Padding(
              padding: const EdgeInsets.only(left: 32.0),
              child: Row(
                children: const <Widget>[
                  Icon(Icons.dynamic_feed_rounded),
                  SizedBox(width: 16.0),
                  Text('Feeds'),
                ],
              ),
            ),
          ),
          Row(
            children: [
              Container(
                width: 230,
                height: 2,
                margin: const EdgeInsets.only(left: 30),
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.grey,
                      width: 0.5,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 0,
          ),
          ListTile(
            onTap: () {
              // Update the UI based on drawer item selected
            },
            contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
            title: Padding(
              padding: const EdgeInsets.only(left: 32.0),
              child: Row(
                children: const <Widget>[
                  Icon(Icons.arrow_circle_up_rounded),
                  SizedBox(width: 16.0),
                  Text('Ranking'),
                ],
              ),
            ),
          ),
          Row(
            children: [
              Container(
                width: 230,
                height: 2,
                margin: const EdgeInsets.only(left: 30),
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.grey,
                      width: 0.5,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 0,
          ),
          ListTile(
            onTap: () {
              // Update the UI based on drawer item selected
            },
            contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
            title: Padding(
              padding: const EdgeInsets.only(left: 32.0),
              child: Row(
                children: const <Widget>[
                  Icon(Icons.accessibility_new_outlined),
                  SizedBox(width: 16.0),
                  Text('Ayúdanos a mejorar'),
                ],
              ),
            ),
          ),
          Row(
            children: [
              Container(
                width: 230,
                height: 2,
                margin: const EdgeInsets.only(left: 30),
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.grey,
                      width: 0.5,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 100, left: 190.0),
                child: Row(
                  children: <Widget>[
                    const Text(
                      'Salir',
                      style: TextStyle(fontSize: 16),
                    ),
                    const SizedBox(width: 8),
                    IconButton(
                      icon: const Icon(
                        Icons.exit_to_app_sharp,
                        color: Colors.black,
                        size: 35,
                      ),
                      onPressed: () {
                        FirebaseAuth.instance.signOut();
                        Navigator.of(context).popAndPushNamed('/login');
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 4.0),
            ],
          )
        ],
      ),
    );
  }
}
