import 'package:flutter/material.dart';
import 'package:r_map/src/components/carousel.dart';

class Bienvenida extends StatefulWidget {
  const Bienvenida({super.key});

  @override
  State<Bienvenida> createState() => _BienvenidaState();
}

class _BienvenidaState extends State<Bienvenida> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromRGBO(228, 239, 237, 1),
        height: 800,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 70),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                'Bienvenido',
                style: TextStyle(
                  fontSize: 33,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 1,
              ),
              const Text(
                'Nombre Usuario',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const CarouselWithDotsPage(),
                    const SizedBox(height: 50),
                    const Text(
                      'What Is Lorem Ipsum?',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Container(
                          width: 60,
                          height: 60,
                          decoration: const BoxDecoration(
                            color: Color.fromRGBO(217, 229, 198, 1),
                            borderRadius: BorderRadius.all(
                              Radius.circular(100),
                            ), //BorderRadius.all
                          ),
                          child: IconButton(
                            icon: const Icon(
                              Icons.arrow_forward,
                              size: 35,
                              color: Color.fromRGBO(58, 90, 13, 1),
                            ),
                            onPressed: () {
                              Navigator.of(context)
                                  .popAndPushNamed('/editarPerfil');
                            },
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
