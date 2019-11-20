import '../../validator_x.dart';
import 'validator_contract.dart';

class SpaceValidator implements Validator<String> {
  SpaceValidator();

  @override
  bool validate(String value) {
    return isWhiteSpace(value);
  }

  static bool _hasOnySpaces(String value) {
    var result = true;

    value.codeUnits.forEach((value) {
      if (value != " ".codeUnitAt(0)) {
        result = false;
      }
    });

    return result;
  }

  static bool isWhiteSpace(String value) {
    return _hasOnySpaces(value);
  }
}

class EmptyValidator implements Validator<String> {
  EmptyValidator();

  @override
  bool validate(String value) {
    return isEmpty(value);
  }

  static bool isEmpty(String value) {
    return (value.isEmpty);
  }
}

class NotEmptyValidator implements Validator<String> {
  NotEmptyValidator();

  @override
  bool validate(String value) {
    return isNotEmpty(value);
  }

  static bool isNotEmpty(String value) {
    return (value.isNotEmpty);
  }
}

class HasMinLengthValidator implements Validator<String> {
  final int min;
  HasMinLengthValidator(this.min);

  @override
  bool validate(String value) {
    return (value.length >= min);
  }

  static bool hasMinLength(int min, String value) {
    return (value.length >= min);
  }
}

class HasMaxLengthValidator implements Validator<String> {
  final int max;
  HasMaxLengthValidator(this.max);

  @override
  bool validate(String value) {
    return hasMaxLength(max, value);
  }

  static bool hasMaxLength(int max, String value) {
    return !(value.length > max);
  }
}

class HasExactLengthValidator implements Validator<String> {
  final int length;
  HasExactLengthValidator(this.length);

  @override
  bool validate(String value) {
    return hasExactLength(length, value);
  }

  static bool hasExactLength(int length, String value) {
    return (value.length == length);
  }
}

class ContainsValidator implements Validator<String> {
  final String other;
  ContainsValidator(this.other);

  @override
  bool validate(String value) {
    return contains(other, value);
  }

  static bool contains(String other, String value) {
    return (value.contains(other));
  }
}

class AlphaValidator implements Validator<String> {
  static const String pattern = r'^[a-zA-Z0-9]+$';

  @override
  bool validate(String value) => isAlpha(value);

  static bool isAlpha(String value) {
    return MatchsValidator(pattern).validate(value);
  }
}
