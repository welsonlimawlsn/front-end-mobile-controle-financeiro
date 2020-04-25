import 'package:fintips_front_end/validators/validator.dart';

class NotEmptyValidator extends Validator {
  NotEmptyValidator({String errorMessage = 'campo obrigatório'}) : super(errorMessage);

  @override
  bool validate(String value) {
    return !(value == null || value.isEmpty);
  }


}