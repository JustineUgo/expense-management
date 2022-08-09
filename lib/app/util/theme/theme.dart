import 'package:flutter/material.dart';
import 'package:nubiaville_management/app/util/color/color.dart';
import 'package:nubiaville_management/app/util/dimension/dimension.dart';

ThemeData themeData() {
  TextTheme _textTheme(TextTheme base) {
    return base.copyWith(
      /*App bar titles*/
      headline1: base.headline1!.copyWith(
          fontFamily: 'AlbertSans',
          fontSize: 20.0,
          color: white,
          fontWeight: FontWeight.w700),
      headline2: base.headline2!.copyWith(
          fontFamily: 'AlbertSans',
          fontSize: 18.0,
          color: white,
          fontWeight: FontWeight.w600),
      headline3: base.headline3!.copyWith(
          fontFamily: 'AlbertSans',
          fontSize: 16.0,
          color: white,
          fontWeight: FontWeight.w400),
      headline4: base.headline4!.copyWith(
          fontFamily: 'AlbertSans',
          fontSize: 14.0,
          color: white,
          fontWeight: FontWeight.w500),
      headline5: base.headline5!.copyWith(
          fontFamily: 'AlbertSans',
          fontSize: 14.0,
          color: white,
          fontWeight: FontWeight.w400),
      headline6: base.headline6!.copyWith(
          fontFamily: 'AlbertSans',
          fontSize: 12.0,
          color: white,
          fontWeight: FontWeight.w400),
    );
  }

  InputDecorationTheme _inputDecorationTheme(TextTheme base) {
    return InputDecorationTheme(
      labelStyle: base.headline5!.copyWith(color: grey),
      contentPadding: EdgeInsets.all(Dimensions.baseBorderRadius * 1.5),
      isDense: true,
      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: grey),
          borderRadius: BorderRadius.all(
              Radius.circular(Dimensions.baseBorderRadius / 2))),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: grey, width: 2),
        borderRadius:
            BorderRadius.all(Radius.circular(Dimensions.baseBorderRadius / 2)),
      ),
      errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.red),
          borderRadius: BorderRadius.all(
              Radius.circular(Dimensions.baseBorderRadius / 2))),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.red, width: 2),
        borderRadius:
            BorderRadius.all(Radius.circular(Dimensions.baseBorderRadius / 2)),
      ),
    );
  }

  final ThemeData base = ThemeData.light();
  return base.copyWith(
    //PRIMARY COLOR.
    primaryColor: primary,

    //FAB
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: primary,
      foregroundColor: white,
    ),

    //TEXT FIELDS
    inputDecorationTheme: _inputDecorationTheme(base.textTheme),

    //TEXT THEME
    textTheme: _textTheme(base.textTheme),

    iconTheme: IconThemeData(size: 16.0, color: white),
  );
}
