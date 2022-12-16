import 'package:flutter/material.dart';

import '../shared.dart';

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
