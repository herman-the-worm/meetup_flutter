import 'package:formz/formz.dart';

enum UsernameFieldModelValidationError { empty, format }

class UsernameFieldModel
    extends FormzInput<String, UsernameFieldModelValidationError> {
  const UsernameFieldModel.pure() : super.pure('');
  const UsernameFieldModel.dirty([String value = '']) : super.dirty(value);

  @override
  UsernameFieldModelValidationError? validator(String value) {
    if (value.isEmpty == true) {
      return UsernameFieldModelValidationError.empty;
    }
    return null;
  }
}
