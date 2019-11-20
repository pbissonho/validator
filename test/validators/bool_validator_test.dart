import 'package:test/test.dart';
import 'package:validator_x/validator_x.dart';

void main() {
  group("BoolValidator", () {
    group("TrueValidator", () {
      test('true', () {
        var value = true;
        var result = TrueValidator().validate(value);
        expect(true, result);
      });
      test('false', () {
        var value = false;
        var result = TrueValidator().validate(value);
        expect(false, result);
      });
    });

    group("FalseValidator", () {
      test('true', () {
        var value = false;
        var result = FalseValidator().validate(value);
        expect(true, result);
      });
      test('false', () {
        var value = true;
        var result = FalseValidator().validate(value);
        expect(false, result);
      });
    });
  });
}
