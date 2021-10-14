import 'package:change_case/src/cases/title.dart';
import 'package:test/test.dart';

void main() {
  late Title title;

  setUp(() {
    title = Title();
  });

  group('#deliminator', () {
    test("is '_'", () {
      expect(title.deliminator, '_');
    });
  });

  group('#transform', () {
    test('returns title case', () {
      final result = title.transform('hello world', 0);

      expect(result, 'Hello World');
    });
  });

  group('#convert', () {
    test('returns title case', () {
      final result = title.convert('hello world');

      expect(result, 'Hello World');
    });

    test('skips small words', () {
      final smallWords = [
        'a',
        'an',
        'and',
        'as',
        'at',
        'because',
        'but',
        'by',
        'en',
        'for',
        'if',
        'in',
        'neither',
        'nor',
        'of',
        'on',
        'or',
        'only',
        'over',
        'per',
        'so',
        'some',
        'that',
        'than',
        'the',
        'to',
        'up',
        'upon',
        'vs',
        'vs.',
        'versus',
        'via',
        'when',
        'with',
        'without',
        'yet',
      ];

      for (final word in smallWords) {
        // will only pass if words are not at start or end of string
        final string = 'Word $word Word';
        final result = title.convert(string);

        expect(result, string);
      }
    });

    test('skips upper case words', () {
      const string = 'WORD';
      final result = title.convert(string);

      expect(result, string);
    });

    test('skips words containing capitols', () {
      const string = 'woRd';
      final result = title.convert(string);

      expect(result, string);
    });

    test('skips urls', () {
      const url = 'https://github.com/mrgnhnt96/change_case';
      final result = title.convert(url);

      expect(result, url);
    });
  });
}
