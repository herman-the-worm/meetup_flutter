import 'package:flutter/material.dart';

import '../shared.dart';

ThemeData themeDataWeb = ThemeData(
  fontFamily: 'Open Sans',
  primaryColor: kWebPrimaryColor,
  scaffoldBackgroundColor: kWebScaffoldMainBackgroundColor,
  appBarTheme: const AppBarTheme(
    centerTitle: true,
    titleTextStyle: TextStyle(color: kBlack),
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
    ),
  ),
);

ButtonStyle webButtonStylePrimary = ButtonStyle(
  shape: MaterialStateProperty.all(webBorderPrimary),
  backgroundColor: MaterialStateProperty.resolveWith(
    (states) {
      if (states.contains(MaterialState.pressed)) {
        return kWhite;
      } else if (states.contains(MaterialState.disabled)) {
        return kDisabledColor;
      }
      return kWhite;
    },
  ),
  elevation: MaterialStateProperty.all(0),
);

ButtonStyle appBarButtonStyle(bool isSelected) => ButtonStyle(
      minimumSize: MaterialStateProperty.all(Size.zero),
      padding: MaterialStateProperty.all(EdgeInsets.zero),
      shape: MaterialStateProperty.all(
        const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          side: BorderSide.none,
        ),
      ),
      backgroundColor: MaterialStateProperty.resolveWith(
        (states) {
          if (states.contains(MaterialState.pressed)) {
            return kPrimaryColor.withOpacity(0.2);
          } else if (states.contains(MaterialState.disabled)) {
            return kDisabledColor;
          }
          return isSelected
              ? kPrimaryColor.withOpacity(0.2)
              : kWebScaffoldMainBackgroundColor;
        },
      ),
      elevation: MaterialStateProperty.all(0),
    );

ButtonStyle appBarButtonStyle2(bool isSelected) => ButtonStyle(
      fixedSize: MaterialStateProperty.all(const Size(60, 60)),
      shape: MaterialStateProperty.all(
        const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          side: BorderSide.none,
        ),
      ),
      backgroundColor: MaterialStateProperty.resolveWith(
        (states) {
          if (states.contains(MaterialState.pressed)) {
            return kPrimaryColor.withOpacity(0.2);
          } else if (states.contains(MaterialState.disabled)) {
            return kDisabledColor;
          }
          return isSelected
              ? kPrimaryColor.withOpacity(0.2)
              : Colors.black.withOpacity(0.05);
        },
      ),
      elevation: MaterialStateProperty.all(0),
    );

ButtonStyle appBarButtonStyle3 = ButtonStyle(
  shape: MaterialStateProperty.all(
    RoundedRectangleBorder(
      borderRadius: kBorderRadius,
      side: BorderSide.none,
    ),
  ),
  backgroundColor: MaterialStateProperty.resolveWith(
    (states) {
      if (states.contains(MaterialState.pressed)) {
        return kPrimaryColor.withOpacity(0.6);
      } else if (states.contains(MaterialState.disabled)) {
        return kDisabledColor;
      }
      return kPrimaryColor.withOpacity(0.4);
    },
  ),
  elevation: MaterialStateProperty.all(0),
);

const webBorderPrimary = RoundedRectangleBorder(
  borderRadius: BorderRadius.all(Radius.circular(50.0)),
  side: BorderSide(color: kPrimaryColor),
);

const kWebAppBarHeight = 60.0;
//const kWebDefaultPadding = 50.0;
const kWebPageDefaultPadding = EdgeInsets.only(left: 50, right: 50, bottom: 50);
