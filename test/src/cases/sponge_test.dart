import 'package:change_case/src/cases/sponge.dart';
import 'package:test/test.dart';

void main() {
  late Sponge sponge;

  setUp(() {
    sponge = Sponge();
  });

  group('#deliminator', () {
    test('throws unimplemented error', () {
      expect(() => sponge.deliminator, throwsUnimplementedError);
    });
  });

  group('#transform', () {
    test('returns string', () {
      final result = sponge.transform('string', 0);

      expect(result, const TypeMatcher<String>());
    });

    test('returns string of same length', () {
      const string = 'hElLo';
      final result = sponge.transform(string, 1);

      expect(result.length, string.length);
    });
  });

  group('#convert', () {
    test('returns string', () {
      final result = sponge.convert('string');

      expect(result, const TypeMatcher<String>());
    });

    test('returns string of same length', () {
      const string = 'hElLo';
      final result = sponge.convert(string);

      expect(result.length, string.length);
    });
  });
}
