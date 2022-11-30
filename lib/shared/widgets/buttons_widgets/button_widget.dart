import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../shared.dart';

class ButtonWidget extends StatelessWidget {
  final void Function()? onPressed;
  final String? buttonText;
  final ButtonStyle? btnStyle;
  final TextStyle? textStyle;
  final Widget? child;
  final double? height;
  final double? width;

  const ButtonWidget(
      {Key? key,
      this.onPressed,
      this.buttonText,
      this.btnStyle,
      this.textStyle,
      this.child,
      this.height,
      this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:
          height ?? (kIsWeb ? 46 : MediaQuery.of(context).size.height * 0.06),
      width: width ?? MediaQuery.of(context).size.width,
      child: ElevatedButton(
        onPressed: onPressed,
        child: child ??
            Text(
              kIsWeb ? buttonText! : buttonText!.toUpperCase(),
              overflow: TextOverflow.visible,
              style: textStyle ?? Theme.of(context).textTheme.buttonTextStyle,
            ),
        style: btnStyle ?? buttonStylePrimary,
      ),
    );
  }
}
