import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:r_map/src/components/drawer.dart';

class MyPosts extends StatefulWidget {
  const MyPosts({super.key});

  @override
  State<MyPosts> createState() => _MyPostsState();
}

class _MyPostsState extends State<MyPosts> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        body: Container(
            color: const Color.fromRGBO(227, 239, 237, 1),
            height: double.infinity,
            width: double.infinity,
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: SingleChildScrollView(
                    child: Column(children: <Widget>[
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {
                                Navigator.of(context)
                                    .popAndPushNamed('/establishment');
                              },
                              icon: Icon(Icons.arrow_back),
                            ),
                            Text('Mis Publicaciones',
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                )),
                          ],
                        ),
                        IconButton(
                          onPressed: () {
                            _scaffoldKey.currentState!.openDrawer();
                          },
                          icon: Icon(Icons.menu),
                        ),
                      ],
                    ),
                  ),
                  //PRIMERA FILA

                  SizedBox(
                    height: 15,
                  ),

                  Card(
                    elevation: 4.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    margin: EdgeInsets.symmetric(horizontal: 25.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.person, size: 24.0),
                              SizedBox(
                                  width:
                                      10.0), // Agregar un SizedBox con una anchura fija
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Juan Roberto',
                                        style: TextStyle(fontSize: 12.0)),
                                    Text('Establecimiento Av Rosales',
                                        style: TextStyle(fontSize: 12.0)),
                                    Text('14/03/2023',
                                        style: TextStyle(fontSize: 12.0)),
                                  ],
                                ),
                              ),
                              Icon(Icons.more_vert, size: 24.0),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 140.0,
                          // width: 90,
                          child: Image.asset(
                            'assets/person_r.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 4.0),
                              Text(
                                  'Un lindo día para reciclar por un planeta mejor',
                                  style: TextStyle(fontSize: 12.0)),
                              SizedBox(height: 4.0),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(
                    height: 15,
                  ),

                  Card(
                    elevation: 4.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    margin: EdgeInsets.symmetric(horizontal: 25.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.person, size: 24.0),
                              SizedBox(
                                  width:
                                      10.0), // Agregar un SizedBox con una anchura fija
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Fabiana Diaz',
                                        style: TextStyle(fontSize: 12.0)),
                                    Text('Establecimiento Av Rosales',
                                        style: TextStyle(fontSize: 12.0)),
                                    Text('14/03/2023',
                                        style: TextStyle(fontSize: 12.0)),
                                  ],
                                ),
                              ),
                              Icon(Icons.more_vert, size: 24.0),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 140.0,
                          // width: 90,
                          child: Image.asset(
                            'assets/person_r.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 4.0),
                              Text(
                                  'Un lindo día para reciclar por un planeta mejor',
                                  style: TextStyle(fontSize: 12.0)),
                              SizedBox(height: 4.0),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(
                    height: 15,
                  ),

                  Card(
                    elevation: 4.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    margin: EdgeInsets.symmetric(horizontal: 25.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.person, size: 24.0),
                              SizedBox(
                                  width:
                                      10.0), // Agregar un SizedBox con una anchura fija
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Pedro Garcia',
                                        style: TextStyle(fontSize: 12.0)),
                                    Text('Establecimiento Av Rosales',
                                        style: TextStyle(fontSize: 12.0)),
                                    Text('14/03/2023',
                                        style: TextStyle(fontSize: 12.0)),
                                  ],
                                ),
                              ),
                              Icon(Icons.more_vert, size: 24.0),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 140.0,
                          // width: 90,
                          child: Image.asset(
                            'assets/person_r.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 4.0),
                              Text(
                                  'Un lindo día para reciclar por un planeta mejor',
                                  style: TextStyle(fontSize: 12.0)),
                              SizedBox(height: 4.0),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                ]
                ),
                ),
                ),
                ),
                drawer: MyDrawer(),
                );
  }
}
