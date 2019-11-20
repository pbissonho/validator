import 'validator_contract.dart';

class MatchsValidator implements Validator<String> {
  final String pattern;

  MatchsValidator(this.pattern);

  @override
  bool validate(String value) {
    RegExp regExp = RegExp(pattern);
    return regExp.hasMatch(value ?? "");
  }
}

class EmailValidator implements Validator<String> {
  EmailValidator();
  static const String pattern =
      r"^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$";
  @override
  bool validate(String value) {
    return MatchsValidator(pattern).validate(value);
  }
}

class UrlValidator implements Validator<String> {
  static const String pattern =
      r"^(http:\/\/www\.|https:\/\/www\.|http:\/\/|https:\/\/)[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?$";

  UrlValidator();

  @override
  bool validate(String value) {
    return MatchsValidator(pattern).validate(value);
  }
}

class DigitValidator implements Validator<String> {
  static const String pattern = r"^\d+$";

  DigitValidator();

  @override
  bool validate(String value) {
    return MatchsValidator(pattern).validate(value);
  }
}
