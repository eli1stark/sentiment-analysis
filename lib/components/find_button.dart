import 'package:flutter/material.dart';
import 'package:sentiment_analysis/components/styles.dart';

class FindButton extends StatelessWidget {
  FindButton({
    @required this.onTap,
  });

  final Function onTap;

  @override
  Widget build(BuildContext context) {
    // device size
    final size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: size.width - 180,
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(
          horizontal: 24.0,
          vertical: 17.0,
        ),
        decoration: BoxDecoration(
          color: customGreen,
          borderRadius: BorderRadius.circular(6.0),
        ),
        child: Text(
          'Find Emotion',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
          ),
        ),
      ),
    );
  }
}
