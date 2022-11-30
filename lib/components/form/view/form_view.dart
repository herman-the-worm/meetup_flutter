import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meetup_flutter/shared/repository/base_repository.dart';
import 'package:meetup_flutter/shared/repository/form_repository.dart';
import 'package:meetup_flutter/shared/shared.dart';

import '../form.dart';

class FormPage extends StatelessWidget {
  const FormPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return BlocProvider(
      create: (context) =>
          FormBloc(FormRepository(context.read<BaseRepository>().dioClient)),
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
              onPressed: () => context.router.navigateBack(),
            )),
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const FormPhoneNumberFieldWidget(
                key: ValueKey('form-phone-number-field-widget'),
              ),
              SizedBox(height: kIsWeb ? 20 : height * 0.025),
              const FormPasswordFieldWidget(
                key: ValueKey('form-password-field-widget'),
              ),
              SizedBox(height: kIsWeb ? 20 : height * 0.025),
              const FormSubmitButtonWidget(key: ValueKey('form-button-submit')),
            ],
          ),
        ),
      ),
    );
  }
}
