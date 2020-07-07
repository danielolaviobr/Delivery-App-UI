import 'package:delivery/models/intro_controller.dart';
import 'package:delivery/widgets/intro_acton_card.dart';
import 'package:delivery/widgets/intro_card.dart';
import 'package:delivery/widgets/skip_intro.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroScreen extends StatefulWidget {
  static String id = '/intro';

  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  PageController _controller = introController.controller;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageView(
          controller: _controller,
          children: [
            IntroCard(
              image: 'assets/images/delivery.png',
              title: 'Track your package',
              fontSize: 35,
            ),
            IntroCard(
              image: 'assets/images/people.png',
              title: 'Keep on with your day',
              fontSize: 30,
            ),
            IntroActionCard(
              image: 'assets/images/talking.png',
              title: "Lets start",
              fontSize: 30,
            ),
          ],
        ),
        SkipIntro(),
        Padding(
          padding: const EdgeInsets.only(bottom: 15.0),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: SlideEffect(
                dotColor: Color(0xFF9675BE),
                activeDotColor: Color(0xFF61309C),
              ),
            ),
          ),
        )
        //PageCounter(),
      ],
    );
  }
}
