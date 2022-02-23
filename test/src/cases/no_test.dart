import 'package:test/test.dart';

import 'package:change_case/src/cases/no.dart';

void main() {
  late No no;

  setUp(() {
    no = No();
  });

  group('#deliminator', () {
    test("is ' '", () {
      expect(no.deliminator, ' ');
    });
  });

  group('#transform', () {
    test('index 0 returns lower case', () {
      final result = no.transform('Hello', 0);

      expect(result, 'hello');
    });

    test('index 1 returns lower case', () {
      final result = no.transform('HELLO', 1);

      expect(result, 'hello');
    });
  });

  group('#convert', () {
    test('returns no case', () {
      final result = no.convert('hELLo-WorlD.123_abc');

      expect(result, 'h el lo worl d 123 abc');
    });
  });
}
