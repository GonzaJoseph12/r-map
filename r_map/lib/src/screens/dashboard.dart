import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

bool _loading = false;

class DashboardWidget extends StatefulWidget {
  const DashboardWidget({super.key});

  @override
  State<DashboardWidget> createState() => _DashboardWidgetState();
}

class _DashboardWidgetState extends State<DashboardWidget> {
  bool _agree = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromRGBO(217, 229, 198, 1),
        height: double.infinity,
        width: double.infinity,
        child: CustomPaint(
          painter: _HeaderPaintDiagonal(),
        child: Stack(
        children:[
            Positioned.fill(
                child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                        width: 375,
                        height: 28,
                        color: Colors.white,
                        padding: const EdgeInsets.only(left: 152, right: 151, top: 18, bottom: 8, ),
                        child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children:[
                                Container(
                                    width: 72,
                                    height: 2,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: Color(0xff151619),
                                    ),
                                ),
                            ],
                        ),
                    ),
                ),
            ),
            Positioned.fill(
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                        width: 375,
                        height: 44,
                        color: Color(0x00ffffff),
                        padding: const EdgeInsets.only(left: 30, right: 15, top: 16, bottom: 8, ),
                        child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children:[
                                Text(
                                    "17:26",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Color(0xff151619),
                                        fontSize: 14,
                                        fontFamily: "Inter",
                                        fontWeight: FontWeight.w500,
                                    ),
                                ),
                                SizedBox(width: 227.67),
                                Container(
                                    width: 66.66,
                                    height: 11.34,
                                    child: Stack(
                                        children:[Container(
                                            width: 24.33,
                                            height: 11.33,
                                            child: Stack(
                                                children:[Container(
                                                    width: 18,
                                                    height: 7.33,
                                                    decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(1.33),
                                                        color: Color(0xff151619),
                                                    ),
                                                ),],
                                            ),
                                        ),],
                                    ),
                                ),
                            ],
                        ),
                    ),
                ),
            ),
            Positioned(
                left: 324,
                top: 69,
                child: Container(
                    width: 28,
                    height: 28,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                    ),
                    // child: FlutterLogo(size: 28),
                ),
            ),
            Positioned(
                left: 21,
                top: 67,
                child: Container(
                    width: 90,
                    height: 61,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                    ),
                    // child: FlutterLogo(size: 61),
                ),
            ),
            Positioned(
                left: 30,
                top: 63,
                child: Container(
                    width: 60,
                    height: 45,
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children:[
                            Container(
                                width: 31,
                                height: 23,
                                child: Stack(
                                    children:[Positioned.fill(
                                        child: Align(
                                            alignment: Alignment.topLeft,
                                            child: Container(
                                                width: 31,
                                                height: 20.54,
                                                decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(8),
                                                    border: Border.all(color: Colors.white, width: 1, ),
                                                    color: Colors.black,
                                                ),
                                                padding: const EdgeInsets.only(left: 19, right: 9, top: 2, bottom: 15, ),
                                                child: Row(
                                                    mainAxisSize: MainAxisSize.min,
                                                    mainAxisAlignment: MainAxisAlignment.end,
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children:[
                                                        Container(
                                                            width: 3.49,
                                                            height: 3.70,
                                                            decoration: BoxDecoration(
                                                                shape: BoxShape.circle,
                                                                color: Colors.white,
                                                            ),
                                                        ),
                                                    ],
                                                ),
                                            ),
                                        ),
                                    ),
                                    Positioned(
                                        left: 15.50,
                                        top: 0,
                                        child: Container(
                                            width: 10.85,
                                            height: 16.02,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(8),
                                                border: Border.all(color: Colors.white, width: 1, ),
                                                color: Colors.black,
                                            ),
                                        ),
                                    ),],
                                ),
                            ),
                            SizedBox(
                                width: 60,
                                height: 22,
                                child: Text(
                                    "RMAP",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                    ),
                                ),
                            ),
                        ],
                    ),
                ),
            ),
            Positioned(
                left: 30,
                top: 147,
                child: Container(
                    width: 166,
                    height: 210,
                    child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children:[
                            Container(
                                width: 166,
                                height: 210,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(24),
                                    color: Colors.white,
                                ),
                                padding: const EdgeInsets.only(top: 28, bottom: 19, ),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children:[
                                        Container(
                                            width: 70,
                                            height: 24,
                                            child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children:[
                                                    Container(
                                                        width: 24,
                                                        height: 24,
                                                        decoration: BoxDecoration(
                                                            borderRadius: BorderRadius.circular(8),
                                                        ),
                                                        // child: FlutterLogo(size: 24),
                                                    ),
                                                    Container(
                                                        width: 24,
                                                        height: 24,
                                                        decoration: BoxDecoration(
                                                            borderRadius: BorderRadius.circular(8),
                                                        ),
                                                        // child: FlutterLogo(size: 24),
                                                    ),
                                                    Container(
                                                        width: 24,
                                                        height: 24,
                                                        decoration: BoxDecoration(
                                                            borderRadius: BorderRadius.circular(8),
                                                        ),
                                                        // child: FlutterLogo(size: 24),
                                                    ),
                                                ],
                                            ),
                                        ),
                                        SizedBox(height: 11.67),
                                        Text(
                                            "Mis logros",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: Color(0xff1b2d43),
                                                fontSize: 18,
                                                fontFamily: "Lato",
                                                fontWeight: FontWeight.w700,
                                            ),
                                        ),
                                        SizedBox(height: 11.67),
                                        SizedBox(
                                            width: 122,
                                            child: Text(
                                                "Revisa tu nivel de acuerdo a tus depósitos.",
                                                style: TextStyle(
                                                    color: Color(0xff454545),
                                                    fontSize: 12,
                                                ),
                                            ),
                                        ),
                                        SizedBox(height: 11.67),
                                        Container(
                                            ////////////BOTON
                                        ),
                                    ],
                                ),
                            ),
                        ],
                    ),
                ),
            ),
            Positioned(
                left: 209,
                top: 160,
                child: Container(
                    width: 136,
                    height: 184,
                    child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children:[
                            Container(
                                width: 136,
                                height: 184,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(24),
                                    color: Color(0xffd8e5c6),
                                ),
                                padding: const EdgeInsets.only(left: 22, right: 15, top: 24, bottom: 15, ),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children:[
                                        Container(
                                            width: 24,
                                            height: 24,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(8),
                                            ),
                                            // child: FlutterLogo(size: 24),
                                        ),
                                        SizedBox(height: 9.67),
                                        SizedBox(
                                            width: 92,
                                            child: Text(
                                                "Mis publicaciones",
                                                style: TextStyle(
                                                    color: Color(0xff3a5a0c),
                                                    fontSize: 14,
                                                    fontFamily: "Lato",
                                                    fontWeight: FontWeight.w700,
                                                ),
                                            ),
                                        ),
                                        SizedBox(height: 9.67),
                                        SizedBox(
                                            width: 91,
                                            child: Text(
                                                "Revisa publicaciones de tus visitas a los establecimientos",
                                                style: TextStyle(
                                                    color: Color(0xff454545),
                                                    fontSize: 9,
                                                ),
                                            ),
                                        ),
                                        SizedBox(height: 9.67),
                                        Container(
                                            width: 25,
                                            height: 25,
                                            child: Stack(
                                                children:[
                                                    Container(
                                                        width: 25,
                                                        height: 25,
                                                        decoration: BoxDecoration(
                                                            shape: BoxShape.circle,
                                                            color: Color(0xff3a5a0c),
                                                        ),
                                                    ),
                                                    Positioned.fill(
                                                        child: Align(
                                                            alignment: Alignment.center,
                                                            child: Container(
                                                                width: 12.50,
                                                                height: 12.50,
                                                                decoration: BoxDecoration(
                                                                    borderRadius: BorderRadius.circular(8),
                                                                ),
                                                                // child: FlutterLogo(size: 12.5),
                                                            ),
                                                        ),
                                                    ),
                                                ],
                                            ),
                                        ),
                                    ],
                                ),
                            ),
                        ],
                    ),
                ),
            ),
            Positioned(
                left: 146,
                top: 461,
                child: Container(
                    width: 209,
                    height: 152,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                    ),
                    // child: FlutterLogo(size: 152),
                ),
            ),
            Positioned(
                left: 47,
                top: 454,
                child: Container(
                    width: 121,
                    height: 204,
                    child: Stack(
                        children:[Positioned(
                            left: 0,
                            top: 7,
                            child: Container(
                                width: 11,
                                height: 194,
                                child: Stack(
                                    children:[
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
                            left: 28,
                            top: 49,
                            child: SizedBox(
                                width: 73,
                                height: 91,
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
                            child: Align(
                                alignment: Alignment.bottomRight,
                                child: SizedBox(
                                    width: 93,
                                    height: 52,
                                    child: Text(
                                        "Te mostramos el establecimiento más cerca",
                                        style: TextStyle(
                                            color: Color(0xff454545),
                                            fontSize: 12,
                                        ),
                                    ),
                                ),
                            ),
                        ),],
                    ),
                ),
            ),
            Positioned(
                left: 37,
                top: 388,
                child: Container(
                    width: 301,
                    height: 36,
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:[
                            SizedBox(
                                width: 301,
                                child: Text(
                                    "Inicia una nueva visita",
                                    style: TextStyle(
                                        color: Color(0xff1b2d43),
                                        fontSize: 18,
                                        fontFamily: "Lato",
                                        fontWeight: FontWeight.w500,
                                    ),
                                ),
                            ),
                            SizedBox(height: 12),
                            Container(
                                width: 104,
                                height: 2,
                                color: Color(0xffc5dfa1),
                            ),
                        ],
                    ),
                ),
            ),
            Positioned(
                left: 139,
                top: 673,
                child: Container(
                    width: 191,
                    height: 40,
                    child: Stack(
                        children:[Container(
                            width: 191,
                            height: 40,
                            child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:[
                                    Expanded(
                                        child: Container(
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(20),
                                                color: Color(0xffd8e5c6),
                                            ),
                                            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8, ),
                                            child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children:[
                                                    SizedBox(
                                                        width: 110,
                                                        child: Text(
                                                            "Iniciar visita",
                                                            style: TextStyle(
                                                                color: Color(0xff3a5a0c),
                                                                fontSize: 16,
                                                                fontFamily: "Inter",
                                                                fontWeight: FontWeight.w500,
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
                            left: 134,
                            top: 6,
                            child: Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                ),
                                // child: FlutterLogo(size: 30),
                            ),
                        ),],
                    ),
                ),
            ),
        ],
    ),
        ),
      ),
    );
  }

  _login(BuildContext context) {
    if (!_loading) {}

    Navigator.of(context).pushNamed(
      '/home',
    );
  }

  _showRegister(BuildContext context) {
    Navigator.of(context).pushNamed(
      '/register',
    );
  }
}

// pintando el lien

class _HeaderPaintDiagonal extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color.fromRGBO(228, 239, 237, 1)
      ..style = PaintingStyle.fill
      ..strokeWidth = 10;
    final path = Path();
    path.lineTo(0, size.height * 0.75);
    path.lineTo(size.width, size.height * 0.32);
    path.lineTo(size.width, 0);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
