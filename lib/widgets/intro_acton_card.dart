import 'package:delivery/constants.dart';
import 'package:flutter/material.dart';

class IntroActionCard extends StatelessWidget {
  final String title;
  final String image;
  final double fontSize;

  const IntroActionCard({Key key, this.title, this.fontSize, this.image})
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
            FlatButton(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              onPressed: () {
                print('go');
              },
              child: Container(
                decoration: BoxDecoration(color: Color(0xFF62319E)),
                alignment: Alignment.center,
                height: 50,
                child: Text(
                  this.title ?? '',
                  style: kIntroTitleStyle.copyWith(
                      fontSize: this.fontSize, color: Color(0xFFEFEAF5)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
