import 'package:delivery/constants.dart';
import 'package:delivery/models/intro_controller.dart';
import 'package:flutter/material.dart';

class SkipIntro extends StatelessWidget {
  final PageController controller = introController.controller;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Align(
        alignment: Alignment.topRight,
        child: FlatButton(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onPressed: () => controller.animateToPage(
            2,
            curve: Curves.linear,
            duration: Duration(milliseconds: 600),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Skip', style: kIntroSkipStyle),
              Icon(Icons.keyboard_arrow_right, size: 40),
            ],
          ),
        ),
      ),
    );
  }
}
