import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:keyboard_actions/keyboard_actions.dart';

import '../../shared.dart';

class TextFieldWidget extends StatefulWidget {
  final Key widgetKey;
  final double? width;
  final double? height;
  final TextAlign textAlign;
  final ValueChanged<String> onChanged;
  final String hintText;
  final String? errorText;
  final TextInputType? keyboardType;
  final int? maxLines;
  final int? maxLength;
  final EdgeInsetsGeometry? contentPadding;
  final OutlineInputBorder? border;
  final TextEditingController? controller;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final bool obscureText;
  final Color? fillColor;
  final void Function()? onEditingCompleted;
  final void Function(String)? onSubmitted;
  final bool? enabled;
  final FocusNode? focusNode;
  final InputBorder? enabledBorder;
  final InputBorder? focusedBorder;
  final int? errorMaxLines;
  final bool? readOnly;
  final bool? disposeFocusNode;
  final bool? expands;

  const TextFieldWidget({
    Key? key,
    required this.widgetKey,
    this.width,
    this.height,
    required this.textAlign,
    required this.onChanged,
    required this.hintText,
    this.errorText,
    this.keyboardType,
    this.maxLines,
    this.maxLength,
    this.contentPadding,
    this.border,
    this.controller,
    this.suffixIcon,
    this.prefixIcon,
    this.obscureText = false,
    this.fillColor,
    this.onEditingCompleted,
    this.onSubmitted,
    this.enabled = true,
    this.focusNode,
    this.enabledBorder,
    this.focusedBorder,
    this.errorMaxLines,
    this.readOnly,
    this.disposeFocusNode = true,
    this.expands,
  }) : super(key: key);

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    Widget customTextField = TextField(
      expands: widget.expands ?? false,
      focusNode: widget.focusNode,
      enabled: widget.enabled,
      readOnly: widget.readOnly ?? false,
      onSubmitted: widget.onSubmitted,
      onEditingComplete: widget.onEditingCompleted,
      obscureText: widget.obscureText,
      autocorrect: !widget.obscureText,
      controller: widget.controller,
      maxLines: widget.expands == null ? widget.maxLines ?? 1 : null,
      maxLength: widget.maxLength,
      keyboardType: widget.keyboardType ?? TextInputType.text,
      textInputAction: TextInputAction.done,
      textAlign: widget.textAlign,
      style: Theme.of(context).textTheme.headline5,
      key: widget.widgetKey,
      onChanged: widget.onChanged,
      decoration: InputDecoration(
        contentPadding: widget.contentPadding ?? const EdgeInsets.only(left: 20, right: 20),
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        border: kIsWeb
            ? widget.border ??
                OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.lightBlue),
                  borderRadius: BorderRadius.circular(20),
                )
            : widget.border,
        enabledBorder: kIsWeb
            ? widget.enabledBorder ??
                OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.lightBlue),
                  borderRadius: BorderRadius.circular(20),
                )
            : widget.enabledBorder ?? Theme.of(context).inputDecorationTheme.enabledBorder,
        disabledBorder: kIsWeb
            ? widget.border ??
                OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.lightBlue),
                  borderRadius: BorderRadius.circular(20),
                )
            : widget.border,
        focusedBorder: kIsWeb
            ? widget.focusedBorder ??
                OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.lightBlue),
                  borderRadius: BorderRadius.circular(20),
                )
            : widget.focusedBorder ?? Theme.of(context).inputDecorationTheme.focusedBorder,
        focusedErrorBorder: kIsWeb
            ? OutlineInputBorder(
                borderSide: const BorderSide(color: kRed),
                borderRadius: BorderRadius.circular(20),
              )
            : widget.border,
        hintStyle: kIsWeb
            ? Theme.of(context).textTheme.hintTextStyle.copyWith(
                  color: kBlack.withOpacity(
                    0.3,
                  ),
                )
            : Theme.of(context).textTheme.hintTextStyle,
        filled: true,
        fillColor: widget.fillColor ?? kWhite,
        hintText: widget.hintText,
        errorText: widget.errorText,
        errorStyle: Theme.of(context).textTheme.hintTextStyle.copyWith(color: kRed),
        suffixIcon: widget.suffixIcon,
        prefixIcon: widget.prefixIcon,
        errorMaxLines: widget.errorMaxLines,
      ),
    );

    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: (widget.keyboardType == TextInputType.number && !kIsWeb && Platform.isIOS)
          ? KeyboardActions(
              disableScroll: true,
              autoScroll: false,
              config: KeyboardActionsConfig(
                keyboardActionsPlatform: KeyboardActionsPlatform.ALL,
                actions: [
                  KeyboardActionsItem(focusNode: FocusNode()),
                ],
                defaultDoneWidget: const Text(
                  'Done',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              child: customTextField,
            )
          : customTextField,
    );
  }

  @override
  void dispose() {
    if (widget.disposeFocusNode == true) {
      widget.focusNode?.dispose();
    }
    super.dispose();
  }
}
