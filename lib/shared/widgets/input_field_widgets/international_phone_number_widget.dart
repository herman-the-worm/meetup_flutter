import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

import '../../shared.dart';

class InternationalPhoneNumberWidget extends StatelessWidget {
  final ValueChanged<PhoneNumber> onInputChanged;
  final ValueChanged<bool> onInputValidated;
  final PhoneNumber phoneNumber;
  final Key? formKey;
  final FocusNode? focusNode;
  final TextEditingController? controller;

  const InternationalPhoneNumberWidget({
    Key? key,
    required this.onInputChanged,
    required this.onInputValidated,
    required this.phoneNumber,
    this.formKey,
    this.controller,
    this.focusNode,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InternationalPhoneNumberInput(
      textFieldController: controller,
      spaceBetweenSelectorAndTextField: 10.0,
      key: formKey,
      textStyle: Theme.of(context).textTheme.headline5,
      inputDecoration: InputDecoration(
        contentPadding: const EdgeInsets.all(10.0),
        border: OutlineInputBorder(
          borderRadius: kBorderRadius50,
          borderSide: const BorderSide(color: Colors.lightBlue),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: kBorderRadius50,
          borderSide: const BorderSide(color: Colors.lightBlue),
        ),
        hintStyle: Theme.of(context).textTheme.hintTextStyle,
        filled: true,
        fillColor: Colors.white,
        hintText: 'Please enter value',
      ),
      initialValue: phoneNumber,
      onInputChanged: onInputChanged,
      selectorConfig: const SelectorConfig(
        selectorType: PhoneInputSelectorType.DROPDOWN,
        setSelectorButtonAsPrefixIcon: true,
        trailingSpace: false,
        showFlags: true,
      ),
      ignoreBlank: true,
      autoValidateMode: AutovalidateMode.onUserInteraction,
      errorMessage: 'Invalid phone number',
      selectorTextStyle: Theme.of(context).textTheme.headline5,
      keyboardAction: TextInputAction.done,
      countries: countryCodes,
    );
  }
}
