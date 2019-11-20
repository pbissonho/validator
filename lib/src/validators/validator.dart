import 'package:validator_x/src/validators/string_validator.dart';
import 'num_validator.dart';
import 'object_validator.dart';

class ValidatorX {
  static bool equas(Object comparer, Object value) {
    return EqualsValidator.equas(comparer, value);
  }

  static bool isNull(Object value) {
    return NullValidator.isNull(value);
  }

  static bool isNotNull(Object value) {
    return NotNullValidator.isNotNull(value);
  }

  static bool isWhiteSpace(String value) {
    return SpaceValidator.isWhiteSpace(value);
  }

  static bool isEmpty(String value) {
    return EmptyValidator.isEmpty(value);
  }

  static bool isNotEmpty(String value) {
    return NotEmptyValidator.isNotEmpty(value);
  }

  static bool hasMinLength(int min, String value) {
    return HasMinLengthValidator.hasMinLength(min, value);
  }

  static bool hasMaxLength(int max, String value) {
    return HasMaxLengthValidator.hasMaxLength(max, value);
  }

  static bool hasExactLength(int length, String value) {
    return HasExactLengthValidator.hasExactLength(length, value);
  }

  static bool contains(int min, String value) {
    return SpaceValidator.isWhiteSpace(value);
  }

  static bool isGreaterThan(num comparer, num value) {
    return GreaterThanValidator.isGreaterThan(comparer, value);
  }

  static bool isLowerThan(num comparer, num value) {
    return LowerThanValidator.isLowerThan(comparer, value);
  }

  static bool isBetween(num from, num value, num to) {
    return BetweenValidator.isBetween(from, value, to);
  }

  static bool isNotBetween(num from, num value, num to) {
    return NotBetweenValidator.isNotBetween(from, value, to);
  }

  static bool isAlpha(String value) {
    return AlphaValidator.isAlpha(value);
  }

  // Todo
  static bool isUpperCase(String value) {}
  // Todo
  static bool isLowerCase(String value) {}
  // Todo
  static bool isDate(String value) {}
  // Todo
  static bool isAfter(DateTime value) {}
  // Todo
  static bool isBefore(DateTime value) {}
  // Todo
  static bool isDateBetween(DateTime from, num value, DateTime to) {}
  // Todo
  static bool isInt(String value) {}
  // Todo
  static bool isJson(String value) {}
  // Todo
  static bool isIp(String value) {}
}
