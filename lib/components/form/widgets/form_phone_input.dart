import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

import '../../../shared/bloc/form_bloc/form_bloc.dart';
import '../../../shared/shared.dart';

class FormPhoneNumberFieldWidget extends StatefulWidget {
  const FormPhoneNumberFieldWidget({Key? key}) : super(key: key);

  @override
  _FormPhoneNumberFieldWidgetState createState() =>
      _FormPhoneNumberFieldWidgetState();
}

class _FormPhoneNumberFieldWidgetState
    extends State<FormPhoneNumberFieldWidget> {
  PhoneNumber _phoneNumber = PhoneNumber(
    isoCode: isoCode,
  );

  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    // return BlocBuilder<FormBloc, FormmState>(
    //   buildWhen: (previous, current) =>
    //       previous.phoneNumber != current.phoneNumber,
    //   builder: (context, state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TextFieldHeadingWidget(
          key: Key('text-field-heading_widget'),
          text: 'Login',
        ),
        SizedBox(
          height: kIsWeb ? 6 : height * 0.01,
        ),
        InternationalPhoneNumberWidget(
          formKey: const Key('form_phone-number_widget'),
          controller: _controller,
          onInputChanged: (PhoneNumber value) {
            _phoneNumber = value;
          },
          onInputValidated: (value) => context.read<FormBloc>().add(
                FormEvent.formPhoneNumberChanged(
                  _phoneNumber.phoneNumber.toString(),
                  value,
                ),
              ),
          phoneNumber: _phoneNumber,
        ),
      ],
    );
    //   },
    // );
  }
}
