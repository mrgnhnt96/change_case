import 'package:change_case/src/cases/pascal.dart';
import 'package:test/test.dart';

void main() {
  late Pascal pascal;

  setUp(() {
    pascal = Pascal();
  });

  group('#deliminator', () {
    test("is ''", () {
      expect(pascal.deliminator, '');
    });
  });

  group('#transform', () {
    test('index 0 returns first upper case', () {
      final result = pascal.transform('HELLO', 0);

      expect(result, 'Hello');
    });

    test('index 1 returns first upper case', () {
      final result = pascal.transform('hello', 1);

      expect(result, 'Hello');
    });
  });

  group('#convert', () {
    test('returns pascal case', () {
      final result = pascal.convert('hello world');

      expect(result, 'HelloWorld');
    });
  });
}
