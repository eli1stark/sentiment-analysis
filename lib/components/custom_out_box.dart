import 'package:flutter/material.dart';
import 'package:sentiment_analysis/components/styles.dart';

class CustomOutBox extends StatelessWidget {
  CustomOutBox({
    @required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: customGradient,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 24.0,
      ),
      child: child,
    );
  }
}
