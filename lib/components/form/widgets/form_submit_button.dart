import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';

import '../../../../../shared/shared.dart';

class FormSubmitButtonWidget extends StatelessWidget {
  const FormSubmitButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return BlocBuilder<FormBloc, FormmState>(
      buildWhen: (previous, current) => previous != current,
      builder: (context, state) {
        return SizedBox(
          width: width * 0.9,
          child: state.status.isSubmissionInProgress
              ? const Center(
                  child: SizedBox(width: 400, child: LinearProgressIndicator()))
              : ButtonWidget(
                  onPressed: submitButtonLogic(state.status, () {
                    context.read<FormBloc>().add(
                          const FormEvent.formSubmitted(),
                        );
                  }),
                  buttonText: 'Submit',
                ),
        );
      },
    );
  }
}
