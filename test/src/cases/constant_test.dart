import 'package:test/test.dart';

import 'package:change_case/src/cases/constant.dart';

void main() {
  late Constant constant;

  setUp(() {
    constant = Constant();
  });

  group('#deliminator', () {
    test("is '_'", () {
      expect(constant.deliminator, '_');
    });
  });

  group('#transform', () {
    test('index 0 returns upper case', () {
      final result = constant.transform('hello', 0);

      expect(result, 'HELLO');
    });

    test('index 1 returns upper case', () {
      final result = constant.transform('hello', 1);

      expect(result, 'HELLO');
    });
  });

  group('#convert', () {
    test('returns constant case', () {
      final result = constant.convert('hello world');

      expect(result, 'HELLO_WORLD');
    });
  });
}
