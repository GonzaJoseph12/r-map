// TextFormField(
//                 decoration: const InputDecoration(
//                   hintText: 'Enter your email',
//                 ),
//                 validator: (String? value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Please enter some text';
//                   }
//                   return null;
//                 },
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(vertical: 16.0),
//                 child: ElevatedButton(
//                   onPressed: () {
//                     // Validate will return true if the form is valid, or false if
//                     // the form is invalid.
//                     if (_formKey2.currentState!.validate()) {
//                       // Process data.
//                     }
//                   },
//                   child: const Text('Submit'),
//                 ),
//               ),

// import 'package:flutter/material.dart';

// class FormFieldSample extends StatefulWidget {
//   const FormFieldSample({super.key});
//   @override
//   State<FormFieldSample> createState() => _FormFieldSampleState();
// }

// class _FormFieldSampleState extends State<FormFieldSample> {
//   // Initially password is obscure
//   bool _obscureText = true;

//   String _password = "";

//   // Toggles the password show status
//   void _toggle() {
//     setState(() {
//       _obscureText = !_obscureText;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//       appBar: new AppBar(
//         title: new Text("Sample"),
//       ),
//       body: new Container(
//         child: new Column(
//           children: <Widget>[
//             new TextFormField(
//               decoration: const InputDecoration(
//                   labelText: 'Password',
//                   icon: const Padding(
//                       padding: const EdgeInsets.only(top: 15.0),
//                       child: const Icon(Icons.lock))),
//               validator: (val) =>
//                   val!.length < 6 ? 'Password too short.' : null,
//               onSaved: (val) => _password = val!,
//               obscureText: _obscureText,
//             ),
//             new ElevatedButton(
//                 onPressed: _toggle,
//                 child: new Text(_obscureText ? "Show" : "Hide"))
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// class Example extends StatelessWidget {
//   const Example({super.key});

//   static const String _title = 'Flutter Code Sample';

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: _title,
//       home: Scaffold(
//         appBar: AppBar(title: const Text(_title)),
//         body: const Center(
//           child: MyStatefulWidget(),
//         ),
//       ),
//     );
//   }
// }

// enum SingingCharacter { lafayette, jefferson }

// class MyStatefulWidget extends StatefulWidget {
//   const MyStatefulWidget({super.key});

//   @override
//   State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
// }

// class _MyStatefulWidgetState extends State<MyStatefulWidget> {
//   SingingCharacter? _character = SingingCharacter.lafayette;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: <Widget>[
//         ListTile(
//           // title: Text(SingingCharacter.lafayette.toString()),
//           leading: Radio<SingingCharacter>(
//             value: SingingCharacter.lafayette,
//             groupValue: _character,
//             onChanged: (SingingCharacter? value) {
//               setState(() {
//                 _character = value;
//               });
//             },
//           ),
//         ),
//         ListTile(
//           // title: const Text('Thomas Jefferson'),
//           leading: Radio<SingingCharacter>(
//             value: SingingCharacter.jefferson,
//             groupValue: _character,
//             onChanged: (SingingCharacter? value) {
//               setState(() {
//                 _character = value;
//               });
//             },
//           ),
//         ),

//       ],
//     );

//   }

// }
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../components/carousel.dart';

final List<String> imgList = [
  "https://cdn.pixabay.com/photo/2017/01/08/13/58/cube-1963036__340.jpg",
  "https://cdn.pixabay.com/photo/2015/03/25/23/46/cube-689619__340.jpg",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJqqqTEDG47DmRff3nNLGXTq5CpMgiPWaVfw56m-Ulnb86AT005TvuIaQB58jJURMKlHk&usqp=CAU"
];

class CarouselSliderExample extends StatelessWidget {
  const CarouselSliderExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                "Carousel With Image",
                style: TextStyle(
                  color: Colors.green[700],
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            CarouselSlider(
              items: imgList
                  .map((item) => Container(
                        child: Center(
                          child: Image.network(
                            item,
                            fit: BoxFit.cover,
                            width: 1000,
                          ),
                        ),
                      ))
                  .toList(),
              options: CarouselOptions(
                autoPlay: true,
                aspectRatio: 2.0,
                enlargeCenterPage: true,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            CarouselWithDotsPage(),
          ],
        ),
      ),
      // ListView(children: [
      //   CarouselSlider(
      //     items: [
      //       Container(
      //         margin: const EdgeInsets.all(8.0),
      //         decoration: BoxDecoration(
      //           borderRadius: BorderRadius.circular(10.0),
      //           image: const DecorationImage(
      //             image: NetworkImage(
      //                 "https://cdn.pixabay.com/photo/2017/01/08/13/58/cube-1963036__340.jpg"),
      //             fit: BoxFit.cover,
      //           ),
      //         ),
      //       ),
      //       Container(
      //         margin: const EdgeInsets.all(8.0),
      //         decoration: BoxDecoration(
      //           borderRadius: BorderRadius.circular(10.0),
      //           image: const DecorationImage(
      //             image: NetworkImage(
      //                 "https://cdn.pixabay.com/photo/2015/03/25/23/46/cube-689619__340.jpg"),
      //             fit: BoxFit.cover,
      //           ),
      //         ),
      //       ),
      //       Container(
      //         margin: const EdgeInsets.all(8.0),
      //         decoration: BoxDecoration(
      //           borderRadius: BorderRadius.circular(10.0),
      //           image: const DecorationImage(
      //             image: NetworkImage(
      //                 "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJqqqTEDG47DmRff3nNLGXTq5CpMgiPWaVfw56m-Ulnb86AT005TvuIaQB58jJURMKlHk&usqp=CAU"),
      //             fit: BoxFit.cover,
      //           ),
      //         ),
      //       ),
      //     ],
      //     options: CarouselOptions(
      //       height: 380.0,
      //       enlargeCenterPage: true,
      //       autoPlay: true,
      //       aspectRatio: 16 / 9,
      //       autoPlayCurve: Curves.fastOutSlowIn,
      //       enableInfiniteScroll: true,
      //       autoPlayAnimationDuration: const Duration(milliseconds: 800),
      //       viewportFraction: 1,
      //     ),
      //   ),
      // ]),
    );
  }
}
