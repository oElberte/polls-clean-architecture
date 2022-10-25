import 'package:test/test.dart';

import 'package:polls/presentation/protocols/protocols.dart';
import 'package:polls/validation/validators/validators.dart';

void main() {
  EmailValidation sut;

  setUp(() {
    sut = EmailValidation('any field');
  });

  test('Should return null if email is empty', () {
    expect(sut.validate(''), null);
  });

  test('Should return null if email is null', () {
    expect(sut.validate(null), null);
  });

  test('Should return null if email is valid', () {
    expect(sut.validate('contato@elberte.com'), null);
  });

  test('Should return error if email is invalid', () {
    expect(sut.validate('contato'), ValidationError.invalidField);
  });
}
