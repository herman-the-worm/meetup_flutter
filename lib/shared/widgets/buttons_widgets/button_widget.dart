import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../shared.dart';

class ButtonWidget extends StatefulWidget {
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
  State<ButtonWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height ??
          (kIsWeb ? 46 : MediaQuery.of(context).size.height * 0.06),
      width: widget.width ?? MediaQuery.of(context).size.width,
      child: ElevatedButton(
        onPressed: widget.onPressed,
        child: widget.child ??
            Text(
              kIsWeb ? widget.buttonText! : widget.buttonText!.toUpperCase(),
              overflow: TextOverflow.visible,
              style: widget.textStyle ??
                  Theme.of(context).textTheme.buttonTextStyle,
            ),
        style: widget.btnStyle ?? buttonStylePrimary,
      ),
    );
  }
}
