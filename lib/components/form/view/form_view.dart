import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../shared/bloc/form_bloc/form_bloc.dart';
import '../../../shared/shared.dart';
import '../form.dart';

class FormPage extends StatelessWidget {
  const FormPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return BlocProvider(
      create: (context) => getIt.get<FormBloc>(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
            title: const Text('Form'),
            leading: IconButton(
              key: const Key('page-back-button'),
              icon: const Icon(
                Icons.arrow_back_ios_rounded,
                color: Colors.white,
              ),
              onPressed: () => context.go('/'),
            )),
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              FormPhoneNumberFieldWidget(
                key: ValueKey('form-phone-number-field-widget'),
              ),
              SizedBox(height: 20),
              Flexible(
                child: FormPasswordFieldWidget(
                  key: ValueKey('form-password-field-widget'),
                ),
              ),
              SizedBox(height: 20),
              Flexible(
                  child: FormSubmitButtonWidget(
                      key: ValueKey('form-button-submit'))),
            ],
          ),
        ),
      ),
    );
  }
}
