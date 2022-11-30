import 'package:flutter/material.dart';

import '../../shared.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    required this.child,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  final Widget child;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 46,
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: buttonStylePrimary,
        child: child,
      ),
    );
  }
}
