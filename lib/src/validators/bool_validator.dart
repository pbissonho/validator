import 'validator_contract.dart';

class TrueValidator implements Validator<bool> {
  @override
  bool validate(bool value) {
    return value;
  }
}

class FalseValidator implements Validator<bool> {
  @override
  bool validate(bool value) {
    if (value == false) return true;
    return false;
  }
}
