import 'package:flutter/material.dart';

import '../shared.dart';

AppBar kAppBarWhite({
  String? title,
  List<Widget>? actions,
  IconButton? leading,
  bool? resizeToAvoidBottomInset,
  double? elevation,
  BuildContext? context,
}) {
  return AppBar(
    backgroundColor: kScaffoldBackgroundColor,
    title: Text(
      title ?? '',
      style:
          Theme.of(context!).textTheme.appBarTextStyle.copyWith(color: kWhite),
    ),
    iconTheme: const IconThemeData(color: kBlack),
    actions: actions,
    leading: leading,
    elevation: elevation ?? 0,
  );
}

AppBar kAppBarBlack({
  String? title,
  List<Widget>? actions,
  IconButton? leading,
  bool? resizeToAvoidBottomInset,
  double? elevation,
  BuildContext? context,
}) {
  return AppBar(
    title: Text(
      title ?? '',
      style:
          Theme.of(context!).textTheme.appBarTextStyle.copyWith(color: kBlack),
    ),
    iconTheme: const IconThemeData(color: kBlack),
    actions: actions,
    leading: leading,
    elevation: elevation ?? 0,
  );
}

double kPaddingHorizontal(BuildContext context) {
  return MediaQuery.of(context).size.width * 0.025;
}

double kPaddingVertical(BuildContext context) {
  return MediaQuery.of(context).size.height * 0.025;
}

BorderRadius kBorderRadius = BorderRadius.circular(20.0);
BorderRadius kTextFieldBorderRadius = BorderRadius.circular(15);

const scaffoldKey = Key('scaffoldKey');
