import 'package:test/test.dart';

import 'package:change_case/src/cases/capital.dart';

void main() {
  late Capital capital;

  setUp(() {
    capital = Capital();
  });

  group('#deliminator', () {
    test("is ' '", () {
      expect(capital.deliminator, ' ');
    });
  });

  group('#transform', () {
    test('index 0 returns first upper case', () {
      final result = capital.transform('hello', 0);

      expect(result, 'Hello');
    });

    test('index 1 returns first upper case', () {
      final result = capital.transform('hello', 1);

      expect(result, 'Hello');
    });
  });

  group('#convert', () {
    test('returns capital case', () {
      final result = capital.convert('hello world');

      expect(result, 'Hello World');
    });
  });
}
