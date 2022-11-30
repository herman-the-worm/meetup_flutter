import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../shared.dart';

extension UserProfilePageTextTheme on TextTheme {
  TextStyle get profileViewDoctorName {
    return const TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: kIsWeb ? kBlack : kWhite,
    );
  }

  TextStyle get bodyTextWhite {
    return const TextStyle(
      fontFamily: 'Open Sans',
      fontSize: 16,
      fontWeight: FontWeight.normal,
      color: kWhite,
    );
  }

  TextStyle get subtitleTextStyleWhite {
    return const TextStyle(
      fontFamily: 'Open Sans',
      fontSize: 12,
      fontWeight: FontWeight.normal,
      color: kWhite,
    );
  }

  TextStyle get profileViewLocation {
    return kIsWeb
        ? TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: kBlack.withOpacity(0.4),
          )
        : TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w400,
            color: kWhite.withOpacity(0.5),
          );
  }

  TextStyle get profileViewInfoHeader {
    return const TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w400,
      // color: kIsWeb ? kBlack : kWhite,
    );
  }

  TextStyle get profileViewInfoTitle {
    return TextStyle(
      fontSize: 13,
      fontWeight: FontWeight.w600,
      color: kIsWeb ? kBlack.withOpacity(0.4) : kWhite.withOpacity(0.5),
    );
  }

  TextStyle get profileViewInfoData {
    return const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      height: 1.5,
      color: kIsWeb ? kBlack : kWhite,
    );
  }
}

double subtitleSize = 12;
double hintSize = 14;
double bodySize1 = 16;
double bodySize2 = 18;
double titleSize = 20;

extension CustomTextTheme on TextTheme {
  TextStyle get ratingRedTextStyle {
    return const TextStyle(
      fontWeight: FontWeight.w400,
      color: Colors.red,
      fontSize: 10,
    );
  }

  TextStyle get bottomSheetButtonTextStyle {
    return const TextStyle(
      color: Colors.black,
      fontSize: kIsWeb ? 16 : 22,
      fontWeight: FontWeight.w300,
    );
  }

  TextStyle get displayTitleStyle {
    return TextStyle(
      fontSize: 10,
      color: kWhite.withOpacity(0.4),
    );
  }

//-----SUBTITLE TEXT STYLES-----

  TextStyle get subtitleTextStyleSemiBold {
    return TextStyle(
      fontSize: subtitleSize,
      fontWeight: FontWeight.w600,
      color: kBlack,
    );
  }

  TextStyle get subtitleTextStyle {
    return TextStyle(
      fontSize: subtitleSize,
      fontWeight: FontWeight.normal,
      color: kPrimaryColor,
    );
  }

//-----HINT TEXT STYLES---------

  TextStyle get hintTextStyle {
    return TextStyle(
      fontSize: hintSize,
      fontWeight: FontWeight.normal,
      color: kBlack,
    );
  }

  TextStyle get hintTextStyleBold {
    return TextStyle(
      fontSize: hintSize,
      fontWeight: FontWeight.bold,
      color: kBlack,
    );
  }

  TextStyle get hintTextStyleSemiBold {
    return TextStyle(
      fontSize: hintSize,
      fontWeight: FontWeight.w600,
      color: kBlack,
    );
  }

  TextStyle get hintTextStyleMedium {
    return TextStyle(
      fontSize: hintSize,
      fontWeight: FontWeight.w500,
      color: kBlack,
    );
  }

  TextStyle get buttonTextStyle => hintTextStyleSemiBold.copyWith(
        color: kWhite,
      );

//-----BODY TEXT STYLES 1 ---------

  TextStyle get bodyTextLight {
    return TextStyle(
      color: Colors.black,
      fontSize: bodySize1,
      fontWeight: FontWeight.w300,
    );
  }

  TextStyle get appBarWebButtonTextStyle => bodyTextLight;

  TextStyle get bodyTextStyle {
    return TextStyle(
      fontFamily: 'Open Sans',
      fontSize: bodySize1,
      fontWeight: FontWeight.normal,
      color: kBlack,
    );
  }

  TextStyle get bodyTextSemiBold {
    return const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: kBlack,
    );
  }

  TextStyle get bodyTextBlack2 {
    return const TextStyle(
      fontFamily: 'Open Sans',
      fontSize: 14,
      fontWeight: FontWeight.normal,
      color: kBlack,
    );
  }

  TextStyle get bodyTextBold {
    return TextStyle(
      fontSize: bodySize1,
      fontWeight: FontWeight.w700,
      color: kBlack,
    );
  }

//-----BODY TEXT STYLES 2 ---------

  TextStyle get bodyTextStyle2 {
    return TextStyle(
      fontSize: bodySize2,
      fontWeight: FontWeight.w400,
      color: kBlack,
    );
  }

  TextStyle get popUpInfoTextStyle => bodyTextStyle2.copyWith(
        color: kBlack.withOpacity(0.8),
      );
  TextStyle get appBarTextStyle => bodyTextStyle2;

  TextStyle get bodyText2Bold {
    return TextStyle(
      fontSize: bodySize2,
      fontWeight: FontWeight.w700,
      color: kBlack,
    );
  }

  TextStyle get smallerTitleTextStyle => bodyText2Bold;
  TextStyle get popUpTitleStyle => bodyText2Bold;
  TextStyle get profilePopupTextStyle => bodyText2Bold;

  TextStyle get tapBarTextStyle {
    return const TextStyle(
      fontSize: 10,
      fontWeight: FontWeight.w600,
      color: kBlack,
    );
  }

//-----TITLE TEXT STYLES 2 ---------

  TextStyle get titleTextStyle {
    return const TextStyle(
      fontFamily: 'Open Sans',
      fontSize: 20,
      fontWeight: FontWeight.w400,
      color: kBlack,
    );
  }

  TextStyle get bodyTextLarge => titleTextStyle;

  TextStyle get titleTextStyleBold {
    return const TextStyle(
      fontFamily: 'Open Sans',
      fontSize: 20,
      fontWeight: FontWeight.w700,
      color: kBlack,
    );
  }

//-----------------------------------

  TextStyle get profileTitleTextStyle {
    return const TextStyle(
      fontFamily: 'Open Sans',
      fontSize: 24,
      fontWeight: FontWeight.w700,
      color: kBlack,
    );
  }

  TextStyle get headerBoldTextStyle {
    return const TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.bold,
      color: kBlack,
    );
  }

  TextStyle get bodyTextBoldLarge {
    return const TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.w700,
      color: kPrimaryColor,
    );
  }

  TextStyle get appointmentEventTitleTextStyle {
    return TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w600,
      color: kBlack.withOpacity(0.5),
    );
  }

  TextStyle get calendarHeaderTextStyle {
    return kIsWeb
        ? const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: kBlack,
          )
        : const TextStyle(
            color: kWhite,
            fontFamily: 'Open Sans',
            fontSize: 14,
            fontWeight: FontWeight.bold,
          );
  }

  TextStyle get calendarDowTextStyle {
    return kIsWeb
        ? TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.normal,
            color: kBlack.withOpacity(0.2),
          )
        : TextStyle(
            fontFamily: 'Open Sans',
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: kWhite.withOpacity(0.7),
          );
  }

  TextStyle get calendarDayTextStyle {
    return kIsWeb
        ? TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.normal,
            color: kBlack.withOpacity(0.7),
          )
        : const TextStyle(
            fontFamily: 'Open Sans',
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: kWhite,
          );
  }

  TextStyle get calendarSelectedDayTextStyle {
    return kIsWeb
        ? TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: kBlack.withOpacity(0.7),
          )
        : const TextStyle(
            fontFamily: 'Open Sans',
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: kWhite,
          );
  }
}
