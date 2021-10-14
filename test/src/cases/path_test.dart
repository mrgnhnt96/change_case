import 'package:change_case/src/cases/path.dart';
import 'package:test/test.dart';

void main() {
  late Path path;

  setUp(() {
    path = Path();
  });

  group('#deliminator', () {
    test("is '/'", () {
      expect(path.deliminator, '/');
    });

    test(r"is '\' when provided", () {
      final _path = Path(r'\');

      expect(_path.deliminator, r'\');
    });
  });

  group('#transform', () {
    test('index 0 returns lower case', () {
      final result = path.transform('Hello', 0);

      expect(result, 'hello');
    });

    test('index 1 returns lower case', () {
      final result = path.transform('HELLO', 1);

      expect(result, 'hello');
    });
  });

  group('#convert', () {
    test('returns path case', () {
      final result = path.convert('hello world');

      expect(result, 'hello/world');
    });

    test('trims string and adds separator to end and beginning', () {
      final result = path.convert('  hello world  ');

      expect(result, '/hello/world/');
    });
  });
}
