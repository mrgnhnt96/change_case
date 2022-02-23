import 'package:test/test.dart';

import 'package:change_case/src/cases/header.dart';

void main() {
  late Header header;

  setUp(() {
    header = Header();
  });

  group('#deliminator', () {
    test("is '-'", () {
      expect(header.deliminator, '-');
    });
  });

  group('#transform', () {
    test('index 0 returns first upper case', () {
      final result = header.transform('Hello', 0);

      expect(result, 'Hello');
    });

    test('index 1 returns first upper case', () {
      final result = header.transform('hello', 1);

      expect(result, 'Hello');
    });
  });

  group('#convert', () {
    test('returns header case', () {
      final result = header.convert('hello world');

      expect(result, 'Hello-World');
    });
  });
}
