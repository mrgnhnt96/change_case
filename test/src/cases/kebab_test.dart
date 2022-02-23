import 'package:test/test.dart';

import 'package:change_case/src/cases/kebab.dart';

void main() {
  late Kebab kebab;

  setUp(() {
    kebab = Kebab();
  });

  group('#deliminator', () {
    test("is '-'", () {
      expect(kebab.deliminator, '-');
    });
  });

  group('#transform', () {
    test('index 0 returns lower case', () {
      final result = kebab.transform('Hello', 0);

      expect(result, 'hello');
    });

    test('index 1 returns lower case', () {
      final result = kebab.transform('hello', 1);

      expect(result, 'hello');
    });
  });

  group('#convert', () {
    test('returns kebab case', () {
      final result = kebab.convert('hello world');

      expect(result, 'hello-world');
    });
  });
}
