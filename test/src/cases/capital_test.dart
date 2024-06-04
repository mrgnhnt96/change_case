import 'package:change_case/src/cases/capital.dart';
import 'package:change_case/src/change_case_config.dart';
import 'package:test/test.dart';

void main() {
  late Capital capital;

  setUp(() {
    capital = Capital();
    ChangeCaseConfig.setUp();
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

    test('returns unchanged if no word character matches', () {
      final result = capital.transform(' # ', 0);

      expect(result, ' # ');
    });
  });

  group('#convert', () {
    test('returns capital case', () {
      final result = capital.convert('hello world');

      expect(result, 'Hello World');
    });

    test('strips non word characters', () {
      final result = capital.convert('house # 1234');

      expect(result, 'House 1234');
    });

    test('allows sections that have no word character matches', () {
      ChangeCaseConfig.setUp(
        stripPatterns: [
          RegExp(
            "[^#A-Z0-9']+",
            caseSensitive: false,
          ),
        ],
      );
      final result = capital.convert('house # 1234');

      expect(result, 'House # 1234');
    });
  });
}
