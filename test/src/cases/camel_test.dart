import 'package:change_case/src/cases/camel.dart';
import 'package:test/test.dart';

void main() {
  late Camel camel;

  setUp(() {
    camel = Camel();
  });

  group('#deliminator', () {
    test("is ''", () {
      expect(camel.deliminator, '');
    });
  });

  group('#transform', () {
    test('index 0 returns lower case', () {
      final result = camel.transform('Hello', 0);

      expect(result, 'hello');
    });

    test('index 1 returns first upper case', () {
      final result = camel.transform('hello', 1);

      expect(result, 'Hello');
    });
  });

  group('#convert', () {
    test('returns camel case', () {
      final result = camel.convert('hello world');

      expect(result, 'helloWorld');
    });

    test('trims string', () {
      final result = camel.convert('  hello world  ');

      expect(result, 'helloWorld');
    });
  });
}
