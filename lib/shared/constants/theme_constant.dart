import 'package:flutter/material.dart';

import '../shared.dart';

ThemeData themeDataMobile = ThemeData(
  fontFamily: 'Open Sans',
  primaryColor: kPrimaryColor,
  scaffoldBackgroundColor: kScaffoldBackgroundColor,
  appBarTheme: const AppBarTheme(
    centerTitle: true,
    titleTextStyle: TextStyle(color: Colors.white),
    backgroundColor: kAppBarColor,
    elevation: 0,
  ),
  textTheme: const TextTheme(
      headline1: TextStyle(
        fontSize: 30,
        color: kPrimaryColor,
        fontWeight: FontWeight.bold,
      ),
      headline2: TextStyle(
        fontSize: 24,
        color: Colors.white,
      ),
      headline3: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        color: Colors.white,
      ),
      headline4: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: kPrimaryColor,
      ),
      headline5: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: Colors.black,
      ),
      // Title for text fields
      headline6: TextStyle(
        color: Colors.white,
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
      bodyText1: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: Colors.grey,
      ),
      bodyText2: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: Colors.black,
      ),
      button: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: kPrimaryColor,
      ),
      subtitle1: TextStyle(
        fontWeight: FontWeight.w400,
        color: Colors.black26,
        fontSize: 14,
      ),
      subtitle2: TextStyle(
        fontWeight: FontWeight.w400,
        color: Colors.black26,
        fontSize: 12,
      )),
);

ButtonStyle buttonStylePrimary = ButtonStyle(
  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
    RoundedRectangleBorder(
      borderRadius: kBorderRadius50,
    ),
  ),
  backgroundColor: MaterialStateProperty.resolveWith(
    (states) {
      if (states.contains(MaterialState.pressed)) {
        return kPrimaryColor;
      } else if (states.contains(MaterialState.disabled)) {
        return kDisabledColorButton;
      }
      return kPrimaryColor;
    },
  ),
  elevation: MaterialStateProperty.all(0),
);

ButtonStyle buttonStyleSecondary = ButtonStyle(
  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
    RoundedRectangleBorder(
      borderRadius: kBorderRadius50,
    ),
  ),
  backgroundColor: MaterialStateProperty.resolveWith(
    (states) {
      if (states.contains(MaterialState.pressed)) {
        return kDisabledColorButton;
      } else if (states.contains(MaterialState.disabled)) {
        return kDisabledColorButton;
      }
      return Colors.black;
    },
  ),
  elevation: MaterialStateProperty.all(0),
);

ButtonStyle buttonStyleBlack = ButtonStyle(
  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
    RoundedRectangleBorder(
      borderRadius: kBorderRadius50,
    ),
  ),
  backgroundColor: MaterialStateProperty.resolveWith(
    (states) {
      if (states.contains(MaterialState.pressed)) {
        return Colors.black;
      } else if (states.contains(MaterialState.disabled)) {
        return Colors.black;
      }
      return Colors.black;
    },
  ),
  elevation: MaterialStateProperty.all(0),
);

const noBorder = OutlineInputBorder(
  borderRadius: BorderRadius.all(
    Radius.circular(
      50.0,
    ),
  ),
  borderSide: BorderSide.none,
);

const border = OutlineInputBorder(
  borderSide: BorderSide(color: kPrimaryColor),
  borderRadius: BorderRadius.all(Radius.circular(50.0)),
);
