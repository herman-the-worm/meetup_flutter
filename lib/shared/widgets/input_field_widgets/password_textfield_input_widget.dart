import 'package:flutter/material.dart';

import '../../shared.dart';

class PasswordTextFieldInputWidget extends StatefulWidget {
  final TextEditingController controller;
  final bool showPassword;
  final ValueChanged<String> onChanged;
  final VoidCallback onPressed;
  final Widget viewIcon;
  final PasswordFieldModel password;
  final Key passwordKey;
  const PasswordTextFieldInputWidget({
    Key? key,
    required this.controller,
    required this.showPassword,
    required this.onChanged,
    required this.onPressed,
    required this.viewIcon,
    required this.password,
    required this.passwordKey,
  }) : super(key: key);

  @override
  _PasswordTextFieldInputWidgetState createState() =>
      _PasswordTextFieldInputWidgetState();
}

class _PasswordTextFieldInputWidgetState
    extends State<PasswordTextFieldInputWidget> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      style: Theme.of(context).textTheme.headline1!.copyWith(
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
      obscureText: widget.showPassword,
      key: widget.passwordKey,
      onChanged: widget.onChanged,
      decoration: InputDecoration(
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          borderSide: BorderSide.none,
        ),
        hintStyle: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: Colors.grey,
        ),
        filled: true,
        fillColor: Colors.white,
        hintText: 'Enter password',
        errorText: _passwordError(widget.password),
        errorStyle: Theme.of(context).textTheme.subtitle1!.copyWith(
              color: Colors.red,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
        //TODO:
        suffixIcon: Padding(
          padding: kPaddingRight6,
          child: IconButton(
            onPressed: widget.onPressed,
            icon: widget.viewIcon,
          ),
        ),
      ),
    );
  }

  String? _passwordError(PasswordFieldModel value) {
    if (value.pure) {
      return null;
    }
    if (value.error == PasswordFieldModelValidationError.empty) {
      return 'Wrong password';
    }
    return null;
  }
}
