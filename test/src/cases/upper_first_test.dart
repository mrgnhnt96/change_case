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
  });
}
