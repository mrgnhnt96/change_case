import 'package:test/test.dart';

import 'package:change_case/src/change_case_helper.dart';
import '../util/fake_change_case_helper.dart';

void main() {
  late ChangeCaseHelper helper;
  // placeholder
  const ph = '•';

  setUp(() {
    helper = FakeCase();
  });

  group('#splitString', () {
    test('should return space between words', () {
      const string = 'hello world';
      final result = helper.splitString(string);

      expect(result, string);
    });

    test('should return spaces before & after', () {
      const string = '  hello world  ';

      final result = helper.splitString(string);

      expect(result, string);
    });

    test('should split camelCase', () {
      final result = helper.splitString('helloWorld');

      expect(result, 'hello${ph}World');
    });

    test('should split CAPSlower', () {
      final result = helper.splitString('HELLOWorld');

      expect(result, 'HELLO${ph}World');
    });

    test('should split 123Cap', () {
      final result = helper.splitString('123HelloWorld');

      expect(result, '123${ph}Hello${ph}World');
    });
  });

  group('#stripString', () {
    test('should strip space between words', () {
      final result = helper.stripString('hello world');

      expect(result, 'hello${ph}world');
    });

    test('should strip spaces before & after words', () {
      final result = helper.stripString('  hello world  ');

      expect(result, '${ph}hello${ph}world$ph');
    });

    test('should leave numbers', () {
      const string = '123';
      final result = helper.stripString(string);

      expect(result, string);
    });

    test('should remove non alphanumeric', () {
      const string = '!@#\$%^&*()_+-=[]{}|;\':",./<>?';
      final result = helper.stripString(string);

      expect(result, ph);
    });
  });
}
