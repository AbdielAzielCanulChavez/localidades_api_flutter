import 'package:fluttercrud/home/home_screen.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: true,
        home: PaginaPrincipal()
    );

  }
}
