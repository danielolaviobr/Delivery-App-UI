import 'package:delivery/constants.dart';
import 'package:delivery/models/intro_controller.dart';
import 'package:flutter/material.dart';

class IntroCard extends StatelessWidget {
  final String image;
  final String title;
  final double fontSize;

  IntroCard({Key key, @required this.image, this.title, this.fontSize})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFFEFEAF5),
        child: Column(
          children: [
            SizedBox(height: 50),
            SizedBox(height: 100),
            Container(
              padding: EdgeInsets.all(10),
              width: double.infinity,
              height: 300,
              child: Image.asset(this.image),
            ),
            SizedBox(height: 100),
            Container(
              alignment: Alignment.center,
              height: 50,
              width: double.infinity,
              child: Text(
                this.title ?? '',
                style: kIntroTitleStyle.copyWith(fontSize: this.fontSize),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
