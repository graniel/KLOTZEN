import 'package:flutter/material.dart';
import 'package:klotzen/src/styles/text_styles.dart';
import 'package:klotzen/src/constants/strings.dart';

class AppTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Image.asset(
          'icons/android.png',
          scale: 4.0,
        ),

        // App name (Shots)
        Text(
          AppStrings.appTitle,
          style: TextStyles.title,
        ),
      ],
    );
  }
}
