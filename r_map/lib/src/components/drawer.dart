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
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 15, top: 60),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(4.0),
                    alignment: Alignment.topCenter, // Agregar esta línea
                    child: Image.asset(
                      'assets/profile.png',
                      width: 80.0,
                      height: 80.0,
                    ),
                  ),
                  SizedBox(width: 4.0),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(top: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Juan Roberto",
                            style: TextStyle(
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                              color: const Color.fromRGBO(58, 90, 13, 1),
                            ),
                          ),
                          SizedBox(height: 2.0),
                          Text(
                            user.email!,
                            style: TextStyle(
                              fontSize: 13.0,
                              color: Colors.grey[700],
                            ),
                          ),
                          SizedBox(height: 10.0),
                          Row(
                            children: [
                              Icon(Icons.currency_bitcoin,
                                  color: Colors.yellow, size: 25.0),
                              SizedBox(width: 4.0),
                              Text(
                                "100",
                                style: TextStyle(
                                  fontSize: 13.0,
                                  color: Colors.grey[700],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 4.0),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 130.0),
                                child: IconButton(
                                  icon: Icon(Icons.edit),
                                  onPressed: () {},
                                ),
                              ),
                              SizedBox(width: 4.0),
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
          SizedBox(
            height: 20,
          ),
          ListTile(
            onTap: () {
              // Update the UI based on drawer item selected
            },
            contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
            title: Padding(
              padding: EdgeInsets.only(left: 32.0),
              child: Row(
                children: [
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
                margin: EdgeInsets.only(left: 30),
                decoration: BoxDecoration(
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
          SizedBox(
            height: 0,
          ),
          ListTile(
            onTap: () {
              // Update the UI based on drawer item selected
            },
            contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
            title: Padding(
              padding: EdgeInsets.only(left: 32.0),
              child: Row(
                children: [
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
                margin: EdgeInsets.only(left: 30),
                decoration: BoxDecoration(
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
          SizedBox(
            height: 0,
          ),
          ListTile(
            onTap: () {
              // Update the UI based on drawer item selected
            },
            contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
            title: Padding(
              padding: EdgeInsets.only(left: 32.0),
              child: Row(
                children: [
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
                margin: EdgeInsets.only(left: 30),
                decoration: BoxDecoration(
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
          SizedBox(
            height: 0,
          ),
          ListTile(
            onTap: () {
              // Update the UI based on drawer item selected
            },
            contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
            title: Padding(
              padding: EdgeInsets.only(left: 32.0),
              child: Row(
                children: [
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
                margin: EdgeInsets.only(left: 30),
                decoration: BoxDecoration(
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
          SizedBox(
            height: 0,
          ),
          ListTile(
            onTap: () {
              // Update the UI based on drawer item selected
            },
            contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
            title: Padding(
              padding: EdgeInsets.only(left: 32.0),
              child: Row(
                children: [
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
                margin: EdgeInsets.only(left: 30),
                decoration: BoxDecoration(
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
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 100, left: 190.0),
                child: Row(
                  children: [
                    Text(
                      'Salir',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(width: 8),
                    IconButton(
                      icon: Icon(
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
              SizedBox(width: 4.0),
            ],
          )
        ],
      ),
    );
  }
}
