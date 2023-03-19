import 'package:flutter/material.dart';
import 'package:r_map/src/components/drawer.dart';

class dashboard extends StatefulWidget {
  const dashboard({super.key});

  @override
  State<dashboard> createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 0),
        child: Container(
          color: const Color.fromRGBO(227, 239, 237, 1),
          height: double.infinity,
          width: double.infinity,
          child: CustomPaint(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Image.asset(
                          'assets/logo.png',
                          width: 65.0,
                          height: 65.0,
                        ),
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

                Container(
                  margin: EdgeInsets.only(right: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(width: 10),
                      Icon(Icons.shield_rounded, color: Colors.yellow),
                      Text('500'),
                    ],
                  ),
                ),

                SizedBox(
                  height: 12,
                ),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    margin: EdgeInsets.only(right: 10),
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: 160,
                          margin: EdgeInsets.only(right: 0, left: 18),
                          height: 205,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20.0))),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 19, top: 22),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Icon(Icons.star, color: Colors.yellow),
                                    Icon(Icons.star, color: Colors.yellow),
                                    Icon(Icons.star, color: Colors.yellow),
                                  ],
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "Mis logros",
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Revisa tu nivel de\nacuerdo a tus\ndepósitos",
                                  style: TextStyle(
                                      fontSize: 11, color: Colors.black),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      child: Padding(
                                          padding: const EdgeInsets.only(
                                              left: 76, top: 15),
                                          child: Column(
                                            children: <Widget>[
                                              SizedBox(height: 0),
                                              Container(
                                                width: 35,
                                                height: 35,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            50),
                                                    color: const Color.fromRGBO(
                                                        217, 229, 198, 1)),
                                                child: GestureDetector(
                                                  onTap: () {
                                                    // Acción que se realiza al presionar el botón
                                                  },
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            0.0),
                                                    child: Transform.rotate(
                                                      angle: 3.14159265359,
                                                      child: IconButton(
                                                        icon: Icon(Icons
                                                            .arrow_back_ios_new_sharp),
                                                        onPressed: () {},
                                                        color: const Color
                                                                .fromRGBO(
                                                            58, 90, 13, 1),
                                                        iconSize: 20,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          )),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 160,
                          margin: EdgeInsets.only(right: 0, left: 10),
                          height: 205,
                          decoration: BoxDecoration(
                              color: const Color.fromRGBO(217, 229, 198, 1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20.0))),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 19, top: 22),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Icon(Icons.photo_library_sharp,
                                        color: Colors.green),
                                  ],
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "Ver\npublicaciones",
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Revisa publicaciones\nde tus visitas a los establecimientos",
                                  style: TextStyle(
                                      fontSize: 11, color: Colors.black),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 76, bottom: 0),
                                      child: GestureDetector(
                                        onTap: () {
                                          Navigator.of(context).popAndPushNamed('/posts');
                                        },
                                        child: Container(
                                          width: 35,
                                          height: 35,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            color: const Color.fromRGBO(
                                                58, 90, 13, 1),
                                          ),
                                          child: Transform.rotate(
                                            angle: 3.14159265359,
                                            child: IconButton(
                                              icon: Icon(Icons
                                                  .arrow_back_ios_new_sharp),
                                              onPressed: () {

                                                Navigator.of(context).popAndPushNamed('/posts');
                                              },
                                              color: Colors.white,
                                              iconSize: 20,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),

                                    // ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 160,
                          margin: EdgeInsets.only(right: 10, left: 10),
                          height: 205,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20.0))),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 19, top: 26),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Icon(Icons.currency_bitcoin,
                                        color: Colors.blue),
                                  ],
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "Mi\npuntaje",
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Revisa tus puntos por reciclar en los lugares cercanos",
                                  style: TextStyle(
                                      fontSize: 11, color: Colors.black),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 76, bottom: 0),
                                      child: GestureDetector(
                                        onTap: () {
                                          // Acción que se realiza al presionar el botón
                                        },
                                        child: Container(
                                          width: 35,
                                          height: 35,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            color: const Color.fromRGBO(
                                                217, 229, 198, 1),
                                          ),
                                          child: Transform.rotate(
                                            angle: 3.14159265359,
                                            child: IconButton(
                                              icon: Icon(Icons
                                                  .arrow_back_ios_new_sharp),
                                              onPressed: () {},
                                              color: const Color.fromRGBO(
                                                  58, 90, 13, 1),
                                              iconSize: 20,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),

                                    // ),
                                  ],
                                )
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

                //INICIA UNA NUEVA VISITA
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        'Inicia una nueva visita',
                        style: TextStyle(fontSize: 22),
                      ),
                    ),
                  ],
                ),

                SizedBox(
                  height: 5,
                ),

                // LINEA
                Row(
                  children: [
                    Container(
                      width: 220,
                      height: 2,
                      margin: EdgeInsets.only(left: 20),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: const Color.fromRGBO(197, 223, 161, 1),
                            width: 2,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(
                  height: 10,
                ),

//TIMELINE

                Row(
                  children: [
                    Expanded(
                      child: Container(
                        width: 121,
                        height: 204,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 45,
                              top: 7,
                              child: Container(
                                width: 11,
                                height: 194,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 4,
                                      top: 7,
                                      child: Container(
                                        width: 3,
                                        height: 182,
                                        color: Color(0xffc5dfa1),
                                      ),
                                    ),
                                    Positioned.fill(
                                      child: Align(
                                        alignment: Alignment.topLeft,
                                        child: Container(
                                          width: 11,
                                          height: 11,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Color(0xffc5dfa1),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 0,
                                      top: 91,
                                      child: Container(
                                        width: 11,
                                        height: 11,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color(0xffc5dfa1),
                                        ),
                                      ),
                                    ),
                                    Positioned.fill(
                                      child: Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Container(
                                          width: 11,
                                          height: 11,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Color(0xffc5dfa1),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned.fill(
                              child: Align(
                                alignment: Alignment.topCenter,
                                child: SizedBox(
                                  width: 68,
                                  height: 40,
                                  child: Text(
                                    "Click en Iniciar Visita",
                                    style: TextStyle(
                                      color: Color(0xff454545),
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 70,
                              top: 59,
                              child: SizedBox(
                                width: 73,
                                height: 70,
                                child: Text(
                                  "Ingresar ubicación o permitir acceso al de tu dispositivo",
                                  style: TextStyle(
                                    color: Color(0xff454545),
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ),
                            Positioned.fill(
                              right: 43,
                              child: Align(
                                alignment: Alignment.bottomRight,
                                child: SizedBox(
                                  width: 93,
                                  height: 42,
                                  child: Text(
                                    "Te mostramos el establecimiento más cerca",
                                    style: TextStyle(
                                      color: Color(0xff454545),
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Image.asset('assets/icon/re-min.png'),
                    ),
                  ],
                ),

                SizedBox(
                  height: 10,
                ),



Padding(
  padding: EdgeInsets.only(left: 180),
  child: GestureDetector(
    onTap: () {
      Navigator.of(context).popAndPushNamed('/establishment');
    },
    child: Container(
      width: 180, // Ajusta el ancho del botón según tus necesidades
      height: 40, // Ajusta el alto del botón según tus necesidades
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color(0xffd8e5c6),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 0.05,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Iniciar visita",
            style: TextStyle(
              color: Color(0xff3a5a0c),
              fontSize: 18,
              fontFamily: "Inter",
              fontWeight: FontWeight.w500,
            ),
          ),
          Icon(
            Icons.arrow_forward,
            color: Color(0xff3a5a0c),
            size: 30,
          ),
        ],
      ),
    ),
  ),
),

                //FIN TIMELINE
              ],
            ),
          ),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
