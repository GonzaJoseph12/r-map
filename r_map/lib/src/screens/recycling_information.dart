import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:r_map/src/components/drawer.dart';
import 'package:r_map/src/partes/vista_emergente.dart';

class InfoRecycling extends StatefulWidget {
  const InfoRecycling({Key? key}) : super(key: key);

  @override
  State<InfoRecycling> createState() => _InfoRecyclingState();
}

class _InfoRecyclingState extends State<InfoRecycling> {
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
                  padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
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
                          Text('Información del reciclaje',
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
                //FILA MONEDA
                Container(
                  margin: const EdgeInsets.only(right: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
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
                ),
                //FILA MONEDA
                SizedBox(
                  height: 5,
                ),
                //CARD INFORMATIVA
                SizedBox(
                  height: 140.0,
                  width: 330.0,
                  child: Card(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 40.0, top: 22),
                          child: Text(
                            'Nombre del establecimiento',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Padding(
                          padding: const EdgeInsets.only(left: 14.0, right: 5),
                          child: Text(
                            'Dirección del establecimiento seleccionado',
                            style: TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Padding(
                          padding: const EdgeInsets.only(left: 210),
                          child: Text(
                            'Ica, Perú',
                            style: TextStyle(
                              fontSize: 14.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(
                  height: 10,
                ),
                //TEXTO
                Padding(
                  padding: const EdgeInsets.only(left: 45, right: 28),
                  child: Text(
                    'Para validar que estás reciclando en el establecimiento debes subir una foto en la sección inferior.',
                    style: TextStyle(
                      fontSize: 15.0,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                //FOTO
                Container(
                  width: 300.0,
                  height: 140.0,
                  decoration: BoxDecoration(
                    border: Border.all(
                        width: 1.0,
                        color: Colors.grey,
                        style: BorderStyle.solid),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Center(
                    child: Image.asset(
                      'assets/logo.png',
                      height: 50.0,
                      width: 50.0,
                      // fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                //SECCIÓN COMENTARIOS
                Padding(
                  padding: EdgeInsets.only(left: 55, right: 55),
                  child: Container(
                    height: 45.0,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(239, 239, 240, 1),
                      // color: Colors.white,
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(left: 25.0),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Deja tu comentario aquí...',
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(
                  height: 15,
                ),
                Container(
                  width: 140,
                  height: 45,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(228, 239, 237, 1),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: const Color.fromRGBO(58, 90, 13, 1),
                      width: 2,
                    ),
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.file_upload,
                          color: const Color.fromRGBO(58, 90, 13, 1),
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Subir foto',
                          style: TextStyle(
                            color: const Color.fromRGBO(58, 90, 13, 1),
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 290, top: 10),
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(197, 223, 161, 1),
                        borderRadius: BorderRadius.circular(30.0),
                      ),
//                           child: IconButton(
//   icon: Icon(Icons.info_rounded),
//   color: const Color.fromRGBO(118, 154, 41, 1),
//   onPressed: () {
//     showModalBottomSheet(
//       context: context,
//       builder: (BuildContext context) {
//         return Container(
//           height: 200.0,
//           color: Colors.white,
//           child: Center(
//             child: Text('Contenido de la vista emergente'),
//           ),
//         );
//       },
//     );
//   },
//   padding: EdgeInsets.all(10.0),
// ),

//

                      child: IconButton(
                        icon: Icon(Icons.info_rounded),
                        color: const Color.fromRGBO(118, 154, 41, 1),
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return Align(
                                // alignment: Alignment.center,
                                child: VistaEmergente(),
                              );
                            },
                          );
                        },
                        padding: EdgeInsets.all(10.0),
                      ),

//
                    ),
                  ],
                ),
              ],
            ))),
      ),
      drawer: MyDrawer(),
    );
  }
}
