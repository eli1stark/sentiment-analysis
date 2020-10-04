import 'package:flutter/material.dart';
import 'package:sentiment_analysis/components/styles.dart';
import 'package:sentiment_analysis/screens/home.dart';
import 'package:splashscreen/splashscreen.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 2,
      navigateAfterSeconds: Home(),
      title: Text(
        'Sentiment Analysis',
        style: TextStyle(
          fontSize: 30.0,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      image: Image.asset('assets/theater.png'),
      gradientBackground: customGradient,
    );
  }
}
