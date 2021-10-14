import 'package:change_case/src/cases/dot.dart';
import 'package:test/test.dart';

void main() {
  late Dot dot;

  setUp(() {
    dot = Dot();
  });

  group('#deliminator', () {
    test("is '.'", () {
      expect(dot.deliminator, '.');
    });
  });

  group('#transform', () {
    test('index 0 returns original', () {
      final result = dot.transform('Hello', 0);

      expect(result, 'Hello');
    });

    test('index 1 returns original', () {
      final result = dot.transform('hello', 1);

      expect(result, 'hello');
    });
  });

  group('#convert', () {
    test('returns dot case', () {
      final result = dot.convert('hello world');

      expect(result, 'hello.world');
    });
  });
}
