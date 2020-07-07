import 'package:delivery/constants.dart';
import 'package:delivery/screens/intro_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Delivery());
}

class Delivery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFFCEA2FD),
        primarySwatch: kSwatchColor,
      ),
      routes: {
        IntroScreen.id: (context) => IntroScreen(),
      },
      initialRoute: IntroScreen.id,
    );
  }
}
