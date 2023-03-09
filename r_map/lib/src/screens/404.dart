import 'package:flutter/material.dart';

class PageNotFound extends StatefulWidget {
  const PageNotFound({super.key});

  @override
  _PageNotFoundState createState() => _PageNotFoundState();
}

class _PageNotFoundState extends State<PageNotFound> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text('Page not found'),
    );
  }
}
