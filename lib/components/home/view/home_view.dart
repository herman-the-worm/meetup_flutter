import 'package:flutter/material.dart';

import '../home.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: SizedBox(
          width: 500,
          child: GoToFormButton(
            key: ValueKey('go-to-form-button-widget'),
          ),
        ),
      ),
    );
  }
}
