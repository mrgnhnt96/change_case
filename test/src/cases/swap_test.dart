import 'package:change_case/src/cases/swap.dart';
import 'package:test/test.dart';

void main() {
  late Swap swap;

  setUp(() {
    swap = Swap();
  });

  group('#deliminator', () {
    test("is '_'", () {
      expect(swap.deliminator, '_');
    });
  });

  group('#transform', () {
    test('index 0 returns swap case', () {
      final result = swap.transform('Hello', 0);

      expect(result, 'hELLO');
    });
  });

  group('#convert', () {
    test('returns swap case', () {
      final result = swap.convert('hElLo WoRlD');

      expect(result, 'HeLlO wOrLd');
    });
  });
}
