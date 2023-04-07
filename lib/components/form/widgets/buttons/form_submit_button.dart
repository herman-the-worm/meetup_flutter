import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../shared/shared.dart';
import '../../../../shared/bloc/form_bloc/form_bloc.dart';
import '../../../../shared/helpers/app_localizations.dart';

class FormSubmitButtonWidget extends StatefulWidget {
  const FormSubmitButtonWidget({Key? key}) : super(key: key);

  @override
  State<FormSubmitButtonWidget> createState() => _FormSubmitButtonWidgetState();
}

class _FormSubmitButtonWidgetState extends State<FormSubmitButtonWidget> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return BlocBuilder<FormBloc, FormmState>(
      builder: (context, state) {
        return SizedBox(
          width: width * 0.9,
          child: ButtonWidget(
            onPressed: submitButtonLogic(state.status, () {
              context.read<FormBloc>().add(
                    const FormEvent.formSubmitted(),
                  );
            }),
            buttonText: AppLocalizations.of(context).formSubmitHint,
          ),
        );
      },
    );
  }
}
