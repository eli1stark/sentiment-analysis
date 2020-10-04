import 'package:flutter/material.dart';
import 'package:sentiment_analysis/screens/splash_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sentiment Ananlysis',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: SplashPage(),
    );
  }
}

