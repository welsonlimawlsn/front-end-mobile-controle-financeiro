import 'package:fintips_front_end/validators/validator.dart';

class EmailValidator extends Validator {

  final RegExp _email = RegExp(r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
  EmailValidator({String errorMessage = "e-mail invalido"}) : super(errorMessage);

  @override
  bool validate(String value) {
    if (value != null && value.isNotEmpty) {
      return _email.hasMatch(value);
    }
    return true;
  }

}