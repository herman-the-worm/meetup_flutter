import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';

import '../../../shared/bloc/authentication_bloc/authentication_bloc.dart';
import '../../../shared/bloc/form_bloc/form_bloc.dart';
import '../../../shared/helpers/app_localizations.dart';
import '../../../shared/repository/authentication_repository/authentication_repository.dart';
import '../../../shared/routes/router.dart';
import '../../components.dart';
import '../form.dart';

class FormViewBodyWidget extends StatelessWidget {
  const FormViewBodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FormBloc, FormmState>(
      listener: (context, state) {
        if (state.status.isSubmissionFailure) {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(
                  content:
                      Text(AppLocalizations.of(context).authenticationFailure)),
            );
        } else if (state.status.isSubmissionSuccess) {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(
                  content:
                      Text(AppLocalizations.of(context).authenticationSuccess)),
            );
          context.read<AuthenticationBloc>().add(
              AuthenticationStatusChanged(AuthenticationStatus.authenticated));
          context.router.replaceAll([AuthorizedRouter()]);
        }
      },
      builder: (context, state) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            FormUsernameFieldWidget(
              key: ValueKey('form-username-field-widget'),
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
        );
      },
    );
  }
}
