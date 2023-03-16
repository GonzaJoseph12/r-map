import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

final List<String> imgList2 = [
  "assets/recuperar.png",
  "assets/bienvenido.png",
];

class CarouselWithDotsPage extends StatefulWidget {
  const CarouselWithDotsPage({super.key});

  @override
  _CarouselWithDotsPageState createState() => _CarouselWithDotsPageState();
}

class _CarouselWithDotsPageState extends State<CarouselWithDotsPage> {
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    final List<Widget> imageSliders = imgList2
        .map((item) => ClipRRect(
              borderRadius: const BorderRadius.all(
                Radius.circular(5.0),
              ),
              child: Image.asset(
                item,
                scale: 1,
                height: 300,
              ),
            ))
        .toList();
    return Container(
      color: const Color.fromRGBO(228, 239, 237, 1),
      child: Column(
        children: [
          CarouselSlider(
            items: imageSliders,
            options: CarouselOptions(
                viewportFraction: 1,
                height: 250,
                autoPlay: true,
                enlargeCenterPage: true,
                aspectRatio: 2.0,
                autoPlayInterval: const Duration(seconds: 3),
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                scrollDirection: Axis.horizontal,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                }),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: imgList2.map((url) {
              int index = imgList2.indexOf(url);
              return Container(
                width: 8,
                height: 8,
                margin: const EdgeInsets.only(
                  top: 25,
                  left: 3,
                  right: 3,
                ),
                decoration: BoxDecoration(
                  // shape: BoxShape.circle,
                  border: Border.all(
                      color: const Color.fromRGBO(197, 223, 161, 1),
                      width: 1.0,
                      style: BorderStyle.solid),
                  borderRadius: BorderRadius.circular(100),
                  color: _current == index
                      ? const Color.fromRGBO(197, 223, 161, 1)
                      : const Color.fromRGBO(0, 0, 0, 0),
                ),
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}
