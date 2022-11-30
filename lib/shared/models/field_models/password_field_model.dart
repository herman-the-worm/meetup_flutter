import 'package:formz/formz.dart';

enum PasswordFieldModelValidationError { empty, complexity }

class PasswordFieldModel
    extends FormzInput<String, PasswordFieldModelValidationError> {
  const PasswordFieldModel.pure() : super.pure('');

  const PasswordFieldModel.dirty([String value = '']) : super.dirty(value);

  @override
  PasswordFieldModelValidationError? validator(String value) {
    RegExp validation = RegExp(
        r"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,10}$");

    if (value.isEmpty) {
      return PasswordFieldModelValidationError.empty;
    } else if (!validation.hasMatch(value)) {
      return PasswordFieldModelValidationError.complexity;
    } else {
      return null;
    }
  }
}
