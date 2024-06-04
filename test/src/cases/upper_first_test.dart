import 'package:test/test.dart';

import 'package:change_case/src/cases/upper_first.dart';

void main() {
  late UpperFirst upperfirst;

  setUp(() {
    upperfirst = UpperFirst();
  });

  group('#deliminator', () {
    test('throws unimplemented error', () {
      expect(() => upperfirst.deliminator, throwsUnimplementedError);
    });
  });

  group('#transform', () {
    test('returns upper first case', () {
      final result = upperfirst.transform('hello', 0);

      expect(result, 'Hello');
    });

    test('returns unchanged if no word character matches', () {
      final result = upperfirst.transform(' # ', 0);

      expect(result, ' # ');
    });
  });

  group('#convert', () {
    test('returns upper first case', () {
      final result = upperfirst.convert('hello world');

      expect(result, 'Hello world');
    });

    test('trims left of string', () {
      final result = upperfirst.convert('  hello world  ');

      expect(result, 'Hello world  ');
    });

    test('trims left non word characters', () {
      final result = upperfirst.convert('###house  ');

      expect(result, 'House  ');
    });

    test('returns unchanged if no word character matches', () {
      final result = upperfirst.convert(' # ');

      expect(result, ' # ');
    });
  });
}
