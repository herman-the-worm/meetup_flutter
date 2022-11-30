import 'package:flutter/material.dart';

import '../../shared.dart';

class ColoredButton extends StatelessWidget {
  const ColoredButton({
    required this.child,
    required this.color,
    this.onPressed,
    Key? key,
  }) : super(key: key);

  final Widget child;
  final Color color;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 46,
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: buttonStyle,
        child: child,
      ),
    );
  }

  ButtonStyle get buttonStyle {
    return ButtonStyle(
      shape: MaterialStateProperty.all(const StadiumBorder()),
      elevation: MaterialStateProperty.all(0),
      backgroundColor: MaterialStateProperty.resolveWith(
        (states) {
          if (states.contains(MaterialState.pressed)) {
            return color.withOpacity(0.5);
          } else if (states.contains(MaterialState.disabled)) {
            return kDisabledColor;
          }
          return color;
        },
      ),
    );
  }
}
