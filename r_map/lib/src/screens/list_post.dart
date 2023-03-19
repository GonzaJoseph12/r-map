import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:r_map/src/components/drawer.dart';

class Posts extends StatefulWidget {
  const Posts({super.key});

  @override
  State<Posts> createState() => _PostsState();
}

class _PostsState extends State<Posts> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;
    return Scaffold(
      key: _scaffoldKey,
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
                    height: 493,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      color: const Color.fromRGBO(255, 255, 255, 1),
                    ),
                    margin: const EdgeInsets.only(top: 190),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 0, right: 50, bottom: 20, top: 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          const SizedBox(height: 20),
                          ListTile(
                            contentPadding:
                                const EdgeInsets.symmetric(horizontal: 0.0),
                            title: Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(left: 20),
                                        child: Text(
                                          'Marzo 2023',
                                          style: TextStyle(fontSize: 18),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20),
                                        child: Row(
                                          children: [
                                            Image.asset(
                                              'assets/person_r.jpg',
                                              width: 100,
                                              height: 100,
                                            ),
                                            SizedBox(width: 10),
                                            Image.asset(
                                              'assets/person_r.jpg',
                                              width: 100,
                                              height: 100,
                                            ),
                                            SizedBox(width: 10),
                                            Image.asset(
                                              'assets/person_r.jpg',
                                              width: 100,
                                              height: 100,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          ListTile(
                            contentPadding:
                                const EdgeInsets.symmetric(horizontal: 0.0),
                            title: Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(left: 20),
                                        child: Text(
                                          'Febrero 2023',
                                          style: TextStyle(fontSize: 18),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20),
                                        child: Row(
                                          children: [
                                            Image.asset(
                                              'assets/person_r.jpg',
                                              width: 100,
                                              height: 100,
                                            ),
                                            SizedBox(width: 10),
                                            Image.asset(
                                              'assets/person_r.jpg',
                                              width: 100,
                                              height: 100,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          ListTile(
                            contentPadding:
                                const EdgeInsets.symmetric(horizontal: 0.0),
                            title: Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(left: 20),
                                        child: Text(
                                          'Enero 2023',
                                          style: TextStyle(fontSize: 18),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20),
                                        child: Row(
                                          children: [
                                            Image.asset(
                                              'assets/person_r.jpg',
                                              width: 100,
                                              height: 100,
                                            ),
                                            SizedBox(width: 10),
                                            Image.asset(
                                              'assets/person_r.jpg',
                                              width: 100,
                                              height: 100,
                                            ),
                                            SizedBox(width: 10),
                                            Image.asset(
                                              'assets/person_r.jpg',
                                              width: 100,
                                              height: 100,
                                            ),
                                          ],
                                        ),
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
                ],
              ),
            ),
            Positioned(
                // top: 100,
                child: Column(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(top: 110),
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Row(
                      children: <Widget>[
                        Container(
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromRGBO(112, 188, 197, 1),
                          ),
                          child: const Icon(
                            Icons.camera_alt_rounded,
                            color: Colors.white,
                          ),
                          padding: const EdgeInsets.all(8),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          'Mis publicaciones',
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
                    height: 120,
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
                          InkWell(
                            onTap: () {
                              _scaffoldKey.currentState!.openDrawer();
                            },
                            child: Row(
                              children: const <Widget>[
                                Icon(
                                  Icons.menu,
                                  color: Colors.black,
                                  size: 24,
                                ),
                                SizedBox(
                                  width: 7,
                                ),
                              ],
                            ),
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
      drawer: MyDrawer(),
    );
  }
}
