import 'package:formz/formz.dart';

submitButtonLogic(
  FormzStatus _,
  void Function() __,
) {
  if (_.isPure || _.isInvalid) {
    return null;
  } else if (_.isSubmissionInProgress) {
    return null;
  } else {
    return __;
  }
}
