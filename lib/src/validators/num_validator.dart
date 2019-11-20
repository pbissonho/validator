import 'validator_contract.dart';

class GreaterThanValidator implements Validator<num> {
  final num comparer;

  GreaterThanValidator(this.comparer);

  @override
  bool validate(num value) {
    return isGreaterThan(comparer, value);
  }

  static bool isGreaterThan(num comparer, num value) {
    return (value > comparer);
  }
}

class LowerThanValidator implements Validator<num> {
  final num comparer;

  LowerThanValidator(this.comparer);

  @override
  bool validate(num value) {
    return isLowerThan(comparer, value);
  }

  static bool isLowerThan(num comparer, num value) {
    return (value < comparer);
  }
}

class BetweenValidator implements Validator<num> {
  final num from;
  final num to;

  BetweenValidator(this.from, this.to);

  @override
  bool validate(num value) {
    return isBetween(from, value, to);
  }

  static bool isBetween(num from, num value, num to) {
    return ((value >= from && value <= to));
  }
}

class NotBetweenValidator implements Validator<num> {
  final num from;
  final num to;

  NotBetweenValidator(this.from, this.to);

  @override
  bool validate(num value) {
    return isNotBetween(from, to, value);
  }

  static bool isNotBetween(num from, num value, num to) {
    return !BetweenValidator.isBetween(from, value, to);
  }
}
