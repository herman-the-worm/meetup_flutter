import 'package:flutter/material.dart';
import '../shared.dart';

ButtonStyle primaryButtonStyle({
  required Color color,
  double? width,
  bool showLabel = true,
}) {
  return ButtonStyle(
    fixedSize: width != null
        ? MaterialStateProperty.all(
            Size(showLabel ? width : kButtonHeight, kButtonHeight),
          )
        : null,
    shape: MaterialStateProperty.resolveWith((states) {
      if (!showLabel) return const CircleBorder();
      return const StadiumBorder();
    }),
    backgroundColor: MaterialStateProperty.resolveWith(
      (states) {
        return color;
      },
    ),
    elevation: MaterialStateProperty.all(0),
  );
}

ButtonStyle mobileTabBarButtonStyle = ButtonStyle(
  shape: MaterialStateProperty.all(
    RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
  ),
  side: MaterialStateProperty.all(
    BorderSide(color: kBlack.withOpacity(0.5)),
  ),
  backgroundColor: MaterialStateProperty.all(kPrimaryColor),
  padding: MaterialStateProperty.all(const EdgeInsets.all(10)),
  elevation: MaterialStateProperty.all(0),
);
