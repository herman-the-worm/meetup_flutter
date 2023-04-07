import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../shared/bloc/form_bloc/form_bloc.dart';
import '../../../../shared/helpers/app_localizations.dart';
import '../../../../shared/shared.dart';

class FormUsernameFieldWidget extends StatefulWidget {
  const FormUsernameFieldWidget({Key? key}) : super(key: key);

  @override
  _FormUsernameFieldWidgetState createState() =>
      _FormUsernameFieldWidgetState();
}

class _FormUsernameFieldWidgetState extends State<FormUsernameFieldWidget> {
  final TextEditingController _controller = TextEditingController();
  final FocusNode _focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return BlocBuilder<FormBloc, FormmState>(
      buildWhen: (previous, current) =>
          previous.usernameFieldModel != current.usernameFieldModel,
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFieldHeadingWidget(
              key: Key('text-field-heading_widget'),
              text: AppLocalizations.of(context).formUsernameHeading,
            ),
            SizedBox(
              height: kIsWeb ? 6 : height * 0.01,
            ),
            TextFieldWidget(
              focusNode: _focusNode,
              controller: _controller,
              widgetKey: const ValueKey('form_usernameInput_textField'),
              textAlign: TextAlign.left,
              onChanged: (value) => context
                  .read<FormBloc>()
                  .add(FormEvent.formUsernameChanged(value)),
              hintText: AppLocalizations.of(context).formUsernameHint,
              border: noBorder,
              errorText: _usernameError(state.usernameFieldModel),
            ),
          ],
        );
      },
    );
  }

  String? _usernameError(UsernameFieldModel value) {
    if (value.pure) {
      return null;
    }
    if (value.error == PasswordFieldModelValidationError.empty) {
      return AppLocalizations.of(context).formUsernameEmpty;
    }
    return null;
  }
}
