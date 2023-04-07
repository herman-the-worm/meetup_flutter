import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meetup_flutter/shared/helpers/app_localizations.dart';

import '../../../../../../shared/shared.dart';
import '../../../../shared/bloc/form_bloc/form_bloc.dart';

class FormPasswordFieldWidget extends StatefulWidget {
  const FormPasswordFieldWidget({Key? key}) : super(key: key);

  @override
  _FormPasswordFieldWidgetState createState() =>
      _FormPasswordFieldWidgetState();
}

class _FormPasswordFieldWidgetState extends State<FormPasswordFieldWidget> {
  final TextEditingController _controller = TextEditingController();
  final FocusNode _focusNode = FocusNode();
  bool _hidePassword = true;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return BlocBuilder<FormBloc, FormmState>(
      buildWhen: (previous, current) =>
          previous.passwordFieldModel != current.passwordFieldModel,
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFieldHeadingWidget(
                key: Key('text-field-heading_widget'),
                text: AppLocalizations.of(context).formPasswordHeading),
            SizedBox(height: kIsWeb ? 6 : height * 0.01),
            TextFieldWidget(
              focusNode: _focusNode,
              controller: _controller,
              widgetKey: const ValueKey('form_passwordInput_textField'),
              textAlign: TextAlign.left,
              onChanged: (value) => context
                  .read<FormBloc>()
                  .add(FormEvent.formPasswordChanged(value)),
              hintText: AppLocalizations.of(context).formPasswordHint,
              border: noBorder,
              obscureText: _hidePassword,
              suffixIcon: Padding(
                padding: kPaddingRight6,
                child: IconButton(
                  key: const Key('obscure-password-field-button'),
                  onPressed: () {
                    setState(() => _hidePassword = !_hidePassword);
                  },
                  icon: _hidePassword
                      ? const Icon(
                          Icons.visibility_off,
                          color: Colors.grey,
                        )
                      : const Icon(
                          Icons.visibility,
                          color: Colors.black,
                        ),
                ),
              ),
              errorText: _passwordError(state.passwordFieldModel),
            ),
          ],
        );
      },
    );
  }

  String? _passwordError(PasswordFieldModel value) {
    if (value.pure) {
      return null;
    }
    if (value.error == PasswordFieldModelValidationError.empty) {
      return AppLocalizations.of(context).formPasswordEmpty;
    }
    if (value.error == PasswordFieldModelValidationError.complexity) {
      return AppLocalizations.of(context).formPasswordInvalid;
    }
    return null;
  }
}
