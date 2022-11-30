import 'package:formz/formz.dart';

enum PhoneNumberFieldModelValidationError { empty, format }

class PhoneNumberFieldModel
    extends FormzInput<String, PhoneNumberFieldModelValidationError> {
  const PhoneNumberFieldModel.pure(this.valid) : super.pure('');
  const PhoneNumberFieldModel.dirty(this.valid, [String value = ''])
      : super.dirty(value);

  @override
  final bool valid;

  @override
  PhoneNumberFieldModelValidationError? validator(String value) {
    if (value.isEmpty == true) {
      return PhoneNumberFieldModelValidationError.empty;
    }
    if (!valid) {
      return PhoneNumberFieldModelValidationError.format;
    }
    return null;
  }
}
