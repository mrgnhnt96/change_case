import 'package:test/test.dart';

import 'package:change_case/src/cases/sentence.dart';

void main() {
  late Sentence sentence;

  setUp(() {
    sentence = Sentence();
  });

  group('#deliminator', () {
    test("is ' '", () {
      expect(sentence.deliminator, ' ');
    });
  });

  group('#transform', () {
    test('index 0 returns first upper case', () {
      final result = sentence.transform('HELLO', 0);

      expect(result, 'Hello');
    });

    test('index 1 returns lower case', () {
      final result = sentence.transform('HELLO', 1);

      expect(result, 'hello');
    });
  });

  group('#convert', () {
    test('returns sentence case', () {
      final result = sentence.convert('HELLO world');

      expect(result, 'Hello world');
    });

    test('trims string', () {
      final result = sentence.convert('  hello world  ');

      expect(result, 'Hello world');
    });
  });
}
