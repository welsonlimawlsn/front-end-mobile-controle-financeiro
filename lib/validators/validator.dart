abstract class Validator {
  final String errorMessage;

  Validator(this.errorMessage);

  bool validate(String value);
}

