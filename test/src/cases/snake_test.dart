import 'package:test/test.dart';

import 'package:change_case/src/cases/snake.dart';

void main() {
  late Snake snake;

  setUp(() {
    snake = Snake();
  });

  group('#deliminator', () {
    test("is '_'", () {
      expect(snake.deliminator, '_');
    });
  });

  group('#transform', () {
    test('index 0 returns lower case', () {
      final result = snake.transform('HeLlO', 0);

      expect(result, 'hello');
    });

    test('index 1 returns lower case', () {
      final result = snake.transform('hElLo', 1);

      expect(result, 'hello');
    });
  });

  group('#convert', () {
    test('returns snake case', () {
      final result = snake.convert('hello world');

      expect(result, 'hello_world');
    });
  });
}
