import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../shared.dart';

class TextFieldHeadingWidget extends StatelessWidget {
  final String text;

  const TextFieldHeadingWidget({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.subtitleTextStyleSemiBold.copyWith(
            color: kIsWeb ? kBlack : kWhite,
          ),
    );
  }
}
