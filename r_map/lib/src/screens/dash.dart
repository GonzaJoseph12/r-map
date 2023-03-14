import 'package:flutter/material.dart';

class dash extends StatelessWidget {
  const dash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container(
    width: 375,
    height: 800,
    color: Color(0xffe3efec),
    child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:[
            Container(
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
            SizedBox(height: 1.26),
            Container(
                width: 330,
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20, ),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:[
                        Container(
                            width: double.infinity,
                            height: 24,
                            child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:[
                                    Container(
                                        width: 24,
                                        height: 24,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(8),
                                        ),
                                        child: FlutterLogo(size: 24),
                                    ),
                                    SizedBox(width: 12),
                                    Expanded(
                                        child: SizedBox(
                                            child: Text(
                                                "Nueva visita",
                                                style: TextStyle(
                                                    color: Color(0xff151619),
                                                    fontSize: 16,
                                                    fontFamily: "Lato",
                                                    fontWeight: FontWeight.w700,
                                                ),
                                            ),
                                        ),
                                    ),
                                ],
                            ),
                        ),
                    ],
                ),
            ),
            SizedBox(height: 1.26),
            Container(
                width: 28,
                height: 28,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                ),
                child: FlutterLogo(size: 28),
            ),
            SizedBox(height: 1.26),
            Container(
                width: 312,
                height: 50,
                child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:[
                        Container(
                            width: 312,
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(24),
                                boxShadow: [
                                    BoxShadow(
                                        color: Color(0x3f000000),
                                        blurRadius: 4,
                                        offset: Offset(0, 4),
                                    ),
                                ],
                                color: Color(0xffeaeaea),
                            ),
                            padding: const EdgeInsets.only(left: 49, right: 31, top: 12, bottom: 14, ),
                            child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children:[
                                    Container(
                                        width: 232,
                                        height: 24,
                                        child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children:[
                                                Text(
                                                    "Universidad Nacional “San Luis Gonzaga”, I...",
                                                    style: TextStyle(
                                                        color: Color(0xff9a9a9a),
                                                        fontSize: 12,
                                                        fontFamily: "Lato",
                                                        fontWeight: FontWeight.w500,
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
            SizedBox(height: 1.26),
            Container(
                width: 20,
                height: 20,
                child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:[
                        Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                            ),
                            child: FlutterLogo(size: 20),
                        ),
                    ],
                ),
            ),
            SizedBox(height: 1.26),
            Container(
                width: 375,
                height: 282.38,
                child: FlutterLogo(size: 282.37652587890625),
            ),
            SizedBox(height: 1.26),
            Text(
                "Establecimientos cercanos a ti",
                style: TextStyle(
                    color: Color(0xff1b2d43),
                    fontSize: 18,
                    fontFamily: "Lato",
                    fontWeight: FontWeight.w500,
                ),
            ),
            SizedBox(height: 1.26),
            Container(
                width: 104,
                height: 2,
                color: Color(0xffc5dfa1),
            ),
            SizedBox(height: 1.26),
            Container(
                width: 292,
                height: 200,
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:[
                        Container(
                            width: 292,
                            height: 44,
                            child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children:[
                                    Container(
                                        width: 292,
                                        height: double.infinity,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            color: Color(0xfff1f1f1),
                                        ),
                                        padding: const EdgeInsets.only(left: 12, right: 11, top: 6, bottom: 10, ),
                                        child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children:[
                                                Container(
                                                    width: 269.70,
                                                    height: 32,
                                                    child: Row(
                                                        mainAxisSize: MainAxisSize.min,
                                                        mainAxisAlignment: MainAxisAlignment.end,
                                                        crossAxisAlignment: CrossAxisAlignment.center,
                                                        children:[
                                                            Container(
                                                                width: 25.48,
                                                                height: 24,
                                                                decoration: BoxDecoration(
                                                                    borderRadius: BorderRadius.circular(8),
                                                                ),
                                                                child: FlutterLogo(size: 24),
                                                            ),
                                                            SizedBox(width: 7.43),
                                                            Container(
                                                                width: 236.79,
                                                                height: 32,
                                                                child: Stack(
                                                                    children:[Positioned.fill(
                                                                        child: Align(
                                                                            alignment: Alignment.bottomLeft,
                                                                            child: SizedBox(
                                                                                width: 236.79,
                                                                                child: Text(
                                                                                    "Dirección del lugar",
                                                                                    style: TextStyle(
                                                                                        color: Color(0xff9a9a9a),
                                                                                        fontSize: 10,
                                                                                    ),
                                                                                ),
                                                                            ),
                                                                        ),
                                                                    ),
                                                                    Positioned.fill(
                                                                        child: Align(
                                                                            alignment: Alignment.topLeft,
                                                                            child: SizedBox(
                                                                                width: 236.79,
                                                                                child: Text(
                                                                                    "Nombre del establecimiento",
                                                                                    style: TextStyle(
                                                                                        color: Color(0xff3a5a0c),
                                                                                        fontSize: 13,
                                                                                        fontFamily: "Lato",
                                                                                        fontWeight: FontWeight.w700,
                                                                                    ),
                                                                                ),
                                                                            ),
                                                                        ),
                                                                    ),],
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
                        SizedBox(height: 8),
                        Container(
                            width: 292,
                            height: 44,
                            child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children:[
                                    Container(
                                        width: 292,
                                        height: double.infinity,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            color: Color(0xffd8e5c6),
                                        ),
                                        padding: const EdgeInsets.only(left: 12, right: 11, top: 6, bottom: 10, ),
                                        child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children:[
                                                Container(
                                                    width: 269.70,
                                                    height: 32,
                                                    child: Row(
                                                        mainAxisSize: MainAxisSize.min,
                                                        mainAxisAlignment: MainAxisAlignment.end,
                                                        crossAxisAlignment: CrossAxisAlignment.center,
                                                        children:[
                                                            Container(
                                                                width: 25.48,
                                                                height: 24,
                                                                decoration: BoxDecoration(
                                                                    borderRadius: BorderRadius.circular(8),
                                                                ),
                                                                child: FlutterLogo(size: 24),
                                                            ),
                                                            SizedBox(width: 7.43),
                                                            Container(
                                                                width: 236.79,
                                                                height: 32,
                                                                child: Stack(
                                                                    children:[Positioned.fill(
                                                                        child: Align(
                                                                            alignment: Alignment.bottomLeft,
                                                                            child: SizedBox(
                                                                                width: 236.79,
                                                                                child: Text(
                                                                                    "Dirección del lugar",
                                                                                    style: TextStyle(
                                                                                        color: Color(0xff9a9a9a),
                                                                                        fontSize: 10,
                                                                                    ),
                                                                                ),
                                                                            ),
                                                                        ),
                                                                    ),
                                                                    Positioned.fill(
                                                                        child: Align(
                                                                            alignment: Alignment.topLeft,
                                                                            child: SizedBox(
                                                                                width: 236.79,
                                                                                child: Text(
                                                                                    "Nombre del establecimiento",
                                                                                    style: TextStyle(
                                                                                        color: Color(0xff3a5a0c),
                                                                                        fontSize: 13,
                                                                                        fontFamily: "Lato",
                                                                                        fontWeight: FontWeight.w700,
                                                                                    ),
                                                                                ),
                                                                            ),
                                                                        ),
                                                                    ),],
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
                        SizedBox(height: 8),
                        Container(
                            width: 292,
                            height: 44,
                            child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children:[
                                    Container(
                                        width: 292,
                                        height: double.infinity,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            color: Color(0xfff1f1f1),
                                        ),
                                        padding: const EdgeInsets.only(left: 12, right: 11, top: 6, bottom: 10, ),
                                        child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children:[
                                                Container(
                                                    width: 269.70,
                                                    height: 32,
                                                    child: Row(
                                                        mainAxisSize: MainAxisSize.min,
                                                        mainAxisAlignment: MainAxisAlignment.end,
                                                        crossAxisAlignment: CrossAxisAlignment.center,
                                                        children:[
                                                            Container(
                                                                width: 25.48,
                                                                height: 24,
                                                                decoration: BoxDecoration(
                                                                    borderRadius: BorderRadius.circular(8),
                                                                ),
                                                                child: FlutterLogo(size: 24),
                                                            ),
                                                            SizedBox(width: 7.43),
                                                            Container(
                                                                width: 236.79,
                                                                height: 32,
                                                                child: Stack(
                                                                    children:[Positioned.fill(
                                                                        child: Align(
                                                                            alignment: Alignment.bottomLeft,
                                                                            child: SizedBox(
                                                                                width: 236.79,
                                                                                child: Text(
                                                                                    "Dirección del lugar",
                                                                                    style: TextStyle(
                                                                                        color: Color(0xff9a9a9a),
                                                                                        fontSize: 10,
                                                                                    ),
                                                                                ),
                                                                            ),
                                                                        ),
                                                                    ),
                                                                    Positioned.fill(
                                                                        child: Align(
                                                                            alignment: Alignment.topLeft,
                                                                            child: SizedBox(
                                                                                width: 236.79,
                                                                                child: Text(
                                                                                    "Nombre del establecimiento",
                                                                                    style: TextStyle(
                                                                                        color: Color(0xff3a5a0c),
                                                                                        fontSize: 13,
                                                                                        fontFamily: "Lato",
                                                                                        fontWeight: FontWeight.w700,
                                                                                    ),
                                                                                ),
                                                                            ),
                                                                        ),
                                                                    ),],
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
                        SizedBox(height: 8),
                        Container(
                            width: 292,
                            height: 44,
                            child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children:[
                                    Container(
                                        width: 292,
                                        height: double.infinity,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            color: Color(0xfff1f1f1),
                                        ),
                                        padding: const EdgeInsets.only(left: 12, right: 11, top: 6, bottom: 10, ),
                                        child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children:[
                                                Container(
                                                    width: 269.70,
                                                    height: 32,
                                                    child: Row(
                                                        mainAxisSize: MainAxisSize.min,
                                                        mainAxisAlignment: MainAxisAlignment.end,
                                                        crossAxisAlignment: CrossAxisAlignment.center,
                                                        children:[
                                                            Container(
                                                                width: 25.48,
                                                                height: 24,
                                                                decoration: BoxDecoration(
                                                                    borderRadius: BorderRadius.circular(8),
                                                                ),
                                                                child: FlutterLogo(size: 24),
                                                            ),
                                                            SizedBox(width: 7.43),
                                                            Container(
                                                                width: 236.79,
                                                                height: 32,
                                                                child: Stack(
                                                                    children:[Positioned.fill(
                                                                        child: Align(
                                                                            alignment: Alignment.bottomLeft,
                                                                            child: SizedBox(
                                                                                width: 236.79,
                                                                                child: Text(
                                                                                    "Dirección del lugar",
                                                                                    style: TextStyle(
                                                                                        color: Color(0xff9a9a9a),
                                                                                        fontSize: 10,
                                                                                    ),
                                                                                ),
                                                                            ),
                                                                        ),
                                                                    ),
                                                                    Positioned.fill(
                                                                        child: Align(
                                                                            alignment: Alignment.topLeft,
                                                                            child: SizedBox(
                                                                                width: 236.79,
                                                                                child: Text(
                                                                                    "Nombre del establecimiento",
                                                                                    style: TextStyle(
                                                                                        color: Color(0xff3a5a0c),
                                                                                        fontSize: 13,
                                                                                        fontFamily: "Lato",
                                                                                        fontWeight: FontWeight.w700,
                                                                                    ),
                                                                                ),
                                                                            ),
                                                                        ),
                                                                    ),],
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
                    ],
                ),
            ),
            SizedBox(height: 1.26),
            Container(
                width: 375,
                height: 45,
                color: Color(0xffe3efec),
            ),
            SizedBox(height: 1.26),
            Container(
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
        ],
    ),
));
  }
}