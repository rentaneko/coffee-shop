import 'package:flutter/material.dart';
import 'package:skincare_app/share/styles/coffee.color.dart';
import 'package:skincare_app/share/utils/utils.dart';

class CoffeeTheme {
  get lighTheme => ThemeData(
        primaryColor: CoffeeColors.brandColor,
        textTheme: TextTheme(
          headline1: TextStyle(
            fontSize: responsiveHeight(22),
            color: CoffeeColors.dark,
            fontFamily: 'RobotoMono',
            fontWeight: FontWeight.w700,
          ),
          headline2: TextStyle(
            fontSize: responsiveHeight(16),
            color: CoffeeColors.paragraph,
            fontFamily: 'RobotoMono',
            fontWeight: FontWeight.w400,
          ),
          headline3: TextStyle(
            fontSize: responsiveHeight(16),
            color: CoffeeColors.info,
            fontFamily: 'RobotoMono',
            fontWeight: FontWeight.w400,
          ),
          bodyText1: TextStyle(
            fontSize: responsiveHeight(20),
            color: CoffeeColors.paragraph,
            fontFamily: 'RobotoMono',
            fontWeight: FontWeight.w400,
          ),
          button: TextStyle(
            color: CoffeeColors.light,
            fontWeight: FontWeight.w600,
            fontFamily: 'RobotoMono',
            fontSize: responsiveHeight(14),
          ),
        ),
        textButtonTheme: const TextButtonThemeData(),
      );

  get darkTheme => ThemeData();
}
