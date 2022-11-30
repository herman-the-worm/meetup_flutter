import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

import '../../shared.dart';

class InternationalPhoneNumberWidget extends StatefulWidget {
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
  _InternationalPhoneNumberWidgetState createState() => _InternationalPhoneNumberWidgetState();
}

class _InternationalPhoneNumberWidgetState extends State<InternationalPhoneNumberWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return InternationalPhoneNumberInput(
      textFieldController: widget.controller,
      spaceBetweenSelectorAndTextField: 10.0,
      key: widget.formKey,
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
      initialValue: widget.phoneNumber,
      onInputChanged: widget.onInputChanged,
      onInputValidated: widget.onInputValidated,
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
      keyboardType: kIsWeb ? TextInputType.none : TextInputType.text,
      keyboardAction: TextInputAction.done,
      countries: countryCodes,
    );
  }

  //120793
  @override
  void dispose() {
    super.dispose();
  }
}
