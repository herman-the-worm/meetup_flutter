import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../home.dart';

@RoutePage()
class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SizedBox(
            width: 500,
            child: GoToFormButton(
              key: ValueKey('go-to-form-button-widget'),
            ),
          ),
        ),
      ),
    );
  }
}
