import 'validator_contract.dart';

class EqualsValidator implements Validator<Object> {
  final Object comparer;

  EqualsValidator(this.comparer);

  @override
  bool validate(Object value) {
    return equas(comparer, value);
  }

  static bool equas(Object comparer, Object value) {
    return (value == comparer);
  }
}

class NotEqualsValidator implements Validator<Object> {
  final Object comparer;

  NotEqualsValidator(this.comparer);

  @override
  bool validate(Object value) {
    return equas(comparer, value);
  }

  static bool equas(Object comparer, Object value) {
    return (value != comparer);
  }
}

class NullValidator implements Validator<Object> {
  @override
  bool validate(Object value) {
    return (value == null);
  }

  static bool isNull(Object value) {
    return (value == null);
  }
}

class NotNullValidator implements Validator<Object> {
  @override
  bool validate(Object value) {
    return isNotNull(value);
  }

  static bool isNotNull(Object value) {
    if (value != null) return true;
    return false;
  }
}
