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
  final LatLng _center = const LatLng(37.7749, -122.4194);
  final Set<Marker> _markers = {};

  @override
  void initState() {
    _markers.add(
      Marker(
        markerId: MarkerId('id'),
        position: _center,
        infoWindow: InfoWindow(
          title: 'San Francisco',
          snippet: 'The Golden City',
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
                //PRIMERA FILA
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.arrow_back),
                          ),
                          Text('Nueva Visita'),
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
                //FILA BUSCADOR
//AQUI QUIERO QUE VALLA EL MAPA
                Expanded(
                  child: GoogleMap(
                    initialCameraPosition: CameraPosition(
                      target: LatLng(-33.4489, -70.6693),
                      zoom: 12,
                    ),
                  ),
                ),
                Expanded(
  child: GoogleMap(
    onMapCreated: _onMapCreated,
    markers: _markers,
    initialCameraPosition: CameraPosition(
      target: LatLng(-33.4489, -70.6693),
      zoom: 12,
    ),
  ),
),

//TEXTO Y LINEA
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
                  height: 5,
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

//TEXTO Y LINEA
//cards
Container(
  padding: EdgeInsets.symmetric(horizontal: 40.0),
  child: Column(
    children: [
      Card(
        elevation: 2, // agrega sombra
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.location_on, size: 30.0, color: const Color.fromRGBO(197, 223, 161, 1),),
              ),
              SizedBox(width: 4.0),
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
                    SizedBox(height: 4.0),
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
    ],
  ),
),
Container(
  padding: EdgeInsets.symmetric(horizontal: 40.0),
  child: Column(
    children: [
      Card(
        color: const Color.fromRGBO(217, 229, 198, 1),
        elevation: 2, // agrega sombra
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.location_on, size: 30.0, color: const Color.fromRGBO(197, 223, 161, 1),),
              ),
              SizedBox(width: 4.0),
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
                    SizedBox(height: 4.0),
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
    ],
  ),
),
Container(
  padding: EdgeInsets.symmetric(horizontal: 40.0),
  child: Column(
    children: [
      Card(
        // color: const Color.fromRGBO(217, 229, 198, 1),
        elevation: 2, // agrega sombra
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.location_on, size: 30.0, color: const Color.fromRGBO(197, 223, 161, 1),),
              ),
              SizedBox(width: 4.0),
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
                    SizedBox(height: 4.0),
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
    ],
  ),
),

//cards
              ],
            ),
          ),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
