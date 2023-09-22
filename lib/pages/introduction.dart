import 'package:dota_statz/components/widgets.dart';
import 'package:dota_statz/pages/homepage.dart';
import 'package:flutter/material.dart';
import 'package:animated_glitch/animated_glitch.dart';
import 'package:page_transition/page_transition.dart';

class IntroductionPage extends StatefulWidget {
  const IntroductionPage({super.key});

  @override
  State<IntroductionPage> createState() => _IntroductionPageState();
}

class _IntroductionPageState extends State<IntroductionPage> {
  final _controller = AnimatedGlitchController(
    frequency: const Duration(milliseconds: 200),
    level: 0.7,
    distortionShift: const DistortionShift(count: 3),
  );

  @override
  void dispose() {
    _controller;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AnimatedGlitch(
          filters: [
            GlitchColorFilter(
              blendMode: BlendMode.color,
              color: Colors.blue.shade900,
            )
          ],
          controller: _controller,
          child: Image.asset(
            'assets/images/bg_main.jpg',
            fit: BoxFit.cover,
          ),
        ),
        Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.black.withOpacity(0.4),
        ),
        Column(
          children: [
            Container(),
            Expanded(
              child: Container(),
            ),
            MainButton(
              onPressed: () {
                Navigator.push(
                    context,
                    PageTransition(
                        duration: Duration(milliseconds: 500),
                        type: PageTransitionType.fade,
                        child: HomePage()));
              },
            ),
            SizedBox(
              height: 50,
            )
          ],
        ),
      ],
    );
  }
}
