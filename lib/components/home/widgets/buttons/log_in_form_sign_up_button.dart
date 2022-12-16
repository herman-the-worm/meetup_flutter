import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../shared/shared.dart';

class GoToFormButton extends StatelessWidget {
  const GoToFormButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: width,
      child: ButtonWidget(
        onPressed: () => context.go('/intro'),
        buttonText: 'Open Form',
        btnStyle: kIsWeb ? webButtonStylePrimary : null,
        textStyle: kIsWeb
            ? Theme.of(context)
                .textTheme
                .hintTextStyleSemiBold
                .copyWith(color: kPrimaryColor)
            : null,
      ),
    );
  }
}
