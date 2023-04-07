import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../../../../shared/shared.dart';
import '../../../../shared/helpers/app_localizations.dart';

class GoToFormButton extends StatelessWidget {
  const GoToFormButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: width * 0.8,
        child: ButtonWidget(
          onPressed: () => context.router.push(const FormRoute()),
          buttonText: AppLocalizations.of(context).openForm,
          btnStyle: kIsWeb ? webButtonStylePrimary : null,
          textStyle: kIsWeb
              ? Theme.of(context)
                  .textTheme
                  .hintTextStyleSemiBold
                  .copyWith(color: kPrimaryColor)
              : null,
        ),
      ),
    );
  }
}
