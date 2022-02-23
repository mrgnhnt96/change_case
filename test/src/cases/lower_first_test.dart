import 'package:test/test.dart';

import 'package:change_case/src/cases/lower_first.dart';

void main() {
  late LowerFirst lowerFirst;

  setUp(() {
    lowerFirst = LowerFirst();
  });

  group('#deliminator', () {
    test('throws unimplemented error', () {
      expect(() => lowerFirst.deliminator, throwsUnimplementedError);
    });
  });

  group('#transform', () {
    test('index 0 returns first lower case', () {
      final result = lowerFirst.transform('HELLO', 0);

      expect(result, 'hELLO');
    });

    test('index 1 returns first lower case', () {
      final result = lowerFirst.transform('HeLlO', 1);

      expect(result, 'heLlO');
    });
  });

  group('#convert', () {
    test('returns lower first case', () {
      final result = lowerFirst.convert('HELLO WORLD');

      expect(result, 'hELLO WORLD');
    });
  });
}
