import 'package:flutter/material.dart';
import 'package:r_map/src/components/drawer.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Establishment extends StatefulWidget {
  // const Establishment({super.key});
  const Establishment({Key? key}) : super(key: key);
  @override
  State<Establishment> createState() => _EstablishmentState();
}

class _EstablishmentState extends State<Establishment> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  //map
  GoogleMapController? _mapController;
  final LatLng _center = const LatLng(-14.064320, -75.728937);
  final Set<Marker> _markers = {};

  @override
  void initState() {
    _markers.add(
      Marker(
        markerId: MarkerId('id'),
        position: _center,
        infoWindow: InfoWindow(
          title: 'Plaza de armas',
          snippet: 'Plaza de armas',
        ),
      ),
    );
    super.initState();
  }

  void _onMapCreated(GoogleMapController controller) {
    _mapController = controller;
  }

  //map
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
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.of(context)
                                  .popAndPushNamed('/bienvenida');
                            },
                            icon: Icon(Icons.arrow_back),
                          ),
                          Text('Nueva visita',
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
                  margin: EdgeInsets.only(right: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(width: 10),
                      Icon(Icons.currency_bitcoin_sharp),
                      Text('500'),
                    ],
                  ),
                ),
                //FILA MONEDA
                SizedBox(
                  height: 5,
                ),
                //FILA BUSCADOR
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 30.0, vertical: 8.0),
                  child: Container(
                    height: 50.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Icon(Icons.location_on),
                        ),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Ingrese su ubicación',
                              border: InputBorder.none,
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
                //FILA BUSCADOR
                SizedBox(
                  height: 260,
                  child: GoogleMap(
                    onMapCreated: _onMapCreated,
                    markers: _markers,
                    initialCameraPosition: CameraPosition(
                      target: LatLng(-14.064320, -75.728937),
                      zoom: 16,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),

                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 40),
                      child: Text(
                        'Establecimientos cercanos a ti',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ],
                ),

                SizedBox(
                  height: 15,
                ),

                // LINEA
                Row(
                  children: [
                    Container(
                      width: 200,
                      height: 2,
                      margin: EdgeInsets.only(left: 40),
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

                
                //DESPLAZ
//    SingleChildScrollView(
//   child: Padding(
//     padding: EdgeInsets.symmetric(horizontal: 35.0,vertical: 0),
//     child: SizedBox(
//       height: 150, // Ajusta la altura máxima de la sección de tarjetas
//       child: ListView.builder(
//         itemCount: 5,
//         itemBuilder: (BuildContext context, int index) {
//           return Card(
//             elevation: 2,
//             child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Row(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Container(
//                     padding: EdgeInsets.all(4.0),
//                     child: Icon(
//                       Icons.location_on,
//                       size: 25.0,
//                       color: const Color.fromRGBO(197, 223, 161, 1),
//                     ),
//                   ),
//                   SizedBox(width: 3.0),
//                   Expanded(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           "Nombre del establecimiento",
//                           style: TextStyle(
//                             fontSize: 17.0,
//                             fontWeight: FontWeight.bold,
//                             color: const Color.fromRGBO(58, 90, 13, 1),
//                           ),
//                         ),
//                         SizedBox(height: 3.0),
//                         Text(
//                           "Dirección del lugar",
//                           style: TextStyle(
//                             fontSize: 13.0,
//                             color: Colors.grey[700],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           );
//         },
//       ),
//     ),
//   ),
// ),
SingleChildScrollView(
  child: Padding(
    padding: EdgeInsets.symmetric(horizontal: 35.0,vertical: 0),
    child: SizedBox(
      height: 150, // Ajusta la altura máxima de la sección de tarjetas
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.symmetric(vertical: 0.0),
            child: InkWell(
              onTap: () {
                Navigator.of(context).popAndPushNamed('/recycling');
              },
              child: Card(
                elevation: 2,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(4.0),
                        child: Icon(
                          Icons.location_on,
                          size: 25.0,
                          color: const Color.fromRGBO(197, 223, 161, 1),
                        ),
                      ),
                      SizedBox(width: 3.0),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Nombre del establecimiento",
                              style: TextStyle(
                                fontSize: 17.0,
                                fontWeight: FontWeight.bold,
                                color: const Color.fromRGBO(58, 90, 13, 1),
                              ),
                            ),
                            SizedBox(height: 3.0),
                            Text(
                              "Dirección del lugar",
                              style: TextStyle(
                                fontSize: 13.0,
                                color: Colors.grey[700],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    ),
  ),
),


                //DESPLAZ

              ],
            ),
          ),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
