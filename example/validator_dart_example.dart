import 'package:validator_x/validator_x.dart';

main() {
  var isBetween = ValidatorX.isBetween(10, 50, 80);
  var betwenValidator = BetweenValidator(10, 80);

  var isTrue = betwenValidator.validate(5);
  var isFalse = betwenValidator.validate(50);

  print(isBetween);
  print(isTrue);
  print(isFalse);
}
