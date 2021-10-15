import 'package:change_case/change_case.dart';
import 'package:test/test.dart';

void main() {
  group('#isLowerCase', () {
    test('should return true when all lowercase', () {
      expect('abc'.isLowerCase(), isTrue);
    });

    test('should return false when contains capital letter', () {
      expect('Abc'.isLowerCase(), isFalse);
    });
  });

  group('#isUpperCase', () {
    test('should return true when all uppercase', () {
      expect('ABC'.isUpperCase(), isTrue);
    });

    test('should return false when contains lowercase letter', () {
      expect('Abc'.isUpperCase(), isFalse);
    });
  });

  group('#toSpongeCase', () {
    test('returns string', () {
      final result = 'string'.toSpongeCase();

      expect(result, const TypeMatcher<String>());
    });

    test('returns string of same length', () {
      const string = 'hElLo';
      final result = string.toSpongeCase();

      expect(result.length, string.length);
    });

    test('returns same word', () {
      const string = 'HELLO';
      final result = string.toSpongeCase();

      expect(result.toLowerCase(), string.toLowerCase());
    });
  });

  group('#single word', () {
    group('all lower case', () {
      ChangeCaseTester.runTests(
        input: 'hello',
        toCamelExpect: 'hello',
        toCapitalExpect: 'Hello',
        toConstantExpect: 'HELLO',
        toDotExpect: 'hello',
        toHeaderExpect: 'Hello',
        toKebabExpect: 'hello',
        toParamExpect: 'hello',
        toLowerFirstExpect: 'hello',
        toNoExpect: 'hello',
        toPascalExpect: 'Hello',
        toPathExpect: 'hello',
        toSentenceExpect: 'Hello',
        toSnakeExpect: 'hello',
        toSwapExpect: 'HELLO',
        toTitleExpect: 'Hello',
        toUpperFirstExpect: 'Hello',
      );
    });

    group('all upper case', () {
      ChangeCaseTester.runTests(
        input: 'HELLO',
        toCamelExpect: 'hello',
        toCapitalExpect: 'Hello',
        toConstantExpect: 'HELLO',
        toDotExpect: 'hello',
        toHeaderExpect: 'Hello',
        toKebabExpect: 'hello',
        toParamExpect: 'hello',
        toLowerFirstExpect: 'hELLO',
        toNoExpect: 'hello',
        toPascalExpect: 'Hello',
        toPathExpect: 'hello',
        toSentenceExpect: 'Hello',
        toSnakeExpect: 'hello',
        toSwapExpect: 'hello',
        toTitleExpect: 'HELLO',
        toUpperFirstExpect: 'HELLO',
      );
    });

    group('first letter capitalized', () {
      ChangeCaseTester.runTests(
        input: 'Hello',
        toCamelExpect: 'hello',
        toCapitalExpect: 'Hello',
        toConstantExpect: 'HELLO',
        toDotExpect: 'hello',
        toHeaderExpect: 'Hello',
        toKebabExpect: 'hello',
        toParamExpect: 'hello',
        toLowerFirstExpect: 'hello',
        toNoExpect: 'hello',
        toPascalExpect: 'Hello',
        toPathExpect: 'hello',
        toSentenceExpect: 'Hello',
        toSnakeExpect: 'hello',
        toSwapExpect: 'hELLO',
        toTitleExpect: 'Hello',
        toUpperFirstExpect: 'Hello',
      );
    });

    group('last letter capitalized', () {
      ChangeCaseTester.runTests(
        input: 'hellO',
        toCamelExpect: 'hellO',
        toCapitalExpect: 'Hell O',
        toConstantExpect: 'HELL_O',
        toDotExpect: 'hell.o',
        toHeaderExpect: 'Hell-O',
        toKebabExpect: 'hell-o',
        toParamExpect: 'hell-o',
        toLowerFirstExpect: 'hellO',
        toNoExpect: 'hell o',
        toPascalExpect: 'HellO',
        toPathExpect: 'hell/o',
        toSentenceExpect: 'Hell o',
        toSnakeExpect: 'hell_o',
        toSwapExpect: 'HELLo',
        toTitleExpect: 'hellO',
        toUpperFirstExpect: 'HellO',
      );
    });

    group('has numbers', () {
      ChangeCaseTester.runTests(
        input: 'hello123',
        toCamelExpect: 'hello123',
        toCapitalExpect: 'Hello123',
        toConstantExpect: 'HELLO123',
        toDotExpect: 'hello123',
        toHeaderExpect: 'Hello123',
        toKebabExpect: 'hello123',
        toParamExpect: 'hello123',
        toLowerFirstExpect: 'hello123',
        toNoExpect: 'hello123',
        toPascalExpect: 'Hello123',
        toPathExpect: 'hello123',
        toSentenceExpect: 'Hello123',
        toSnakeExpect: 'hello123',
        toSwapExpect: 'HELLO123',
        toTitleExpect: 'Hello123',
        toUpperFirstExpect: 'Hello123',
      );
    });
  });

  group('multiple words', () {
    group('single space inbetween', () {
      ChangeCaseTester.runTests(
        input: 'hello world',
        toCamelExpect: 'helloWorld',
        toCapitalExpect: 'Hello World',
        toConstantExpect: 'HELLO_WORLD',
        toDotExpect: 'hello.world',
        toHeaderExpect: 'Hello-World',
        toKebabExpect: 'hello-world',
        toParamExpect: 'hello-world',
        toLowerFirstExpect: 'hello world',
        toNoExpect: 'hello world',
        toPascalExpect: 'HelloWorld',
        toPathExpect: 'hello/world',
        toSentenceExpect: 'Hello world',
        toSnakeExpect: 'hello_world',
        toSwapExpect: 'HELLO WORLD',
        toTitleExpect: 'Hello World',
        toUpperFirstExpect: 'Hello world',
      );
    });

    group('multiple spaces inbetween', () {
      ChangeCaseTester.runTests(
        input: 'hello   world',
        toCamelExpect: 'helloWorld',
        toCapitalExpect: 'Hello World',
        toConstantExpect: 'HELLO_WORLD',
        toDotExpect: 'hello.world',
        toHeaderExpect: 'Hello-World',
        toKebabExpect: 'hello-world',
        toParamExpect: 'hello-world',
        toLowerFirstExpect: 'hello   world',
        toNoExpect: 'hello world',
        toPascalExpect: 'HelloWorld',
        toPathExpect: 'hello/world',
        toSentenceExpect: 'Hello world',
        toSnakeExpect: 'hello_world',
        toSwapExpect: 'HELLO   WORLD',
        toTitleExpect: 'Hello   World',
        toUpperFirstExpect: 'Hello   world',
      );
    });

    group('trailing & leading space', () {
      ChangeCaseTester.runTests(
        input: ' hello world ',
        toCamelExpect: 'helloWorld',
        toCapitalExpect: ' Hello World ',
        toConstantExpect: '_HELLO_WORLD_',
        toDotExpect: '.hello.world.',
        toHeaderExpect: '-Hello-World-',
        toKebabExpect: '-hello-world-',
        toParamExpect: '-hello-world-',
        toLowerFirstExpect: ' hello world ',
        toNoExpect: ' hello world ',
        toPascalExpect: 'HelloWorld',
        toPathExpect: '/hello/world/',
        toSentenceExpect: 'Hello world',
        toSnakeExpect: '_hello_world_',
        toSwapExpect: ' HELLO WORLD ',
        toTitleExpect: ' Hello World ',
        toUpperFirstExpect: 'Hello world ',
      );
    });
  });

  group('numbers', () {
    group('leading', () {
      ChangeCaseTester.runTests(
        input: '123hello',
        toCamelExpect: '123hello',
        toCapitalExpect: '123hello',
        toConstantExpect: '123HELLO',
        toDotExpect: '123hello',
        toHeaderExpect: '123hello',
        toKebabExpect: '123hello',
        toParamExpect: '123hello',
        toLowerFirstExpect: '123hello',
        toNoExpect: '123hello',
        toPascalExpect: '123hello',
        toPathExpect: '123hello',
        toSentenceExpect: '123hello',
        toSnakeExpect: '123hello',
        toSwapExpect: '123HELLO',
        toTitleExpect: '123hello',
        toUpperFirstExpect: '123hello',
      );
    });

    group('trailing', () {
      ChangeCaseTester.runTests(
        input: 'hello123',
        toCamelExpect: 'hello123',
        toCapitalExpect: 'Hello123',
        toConstantExpect: 'HELLO123',
        toDotExpect: 'hello123',
        toHeaderExpect: 'Hello123',
        toKebabExpect: 'hello123',
        toParamExpect: 'hello123',
        toLowerFirstExpect: 'hello123',
        toNoExpect: 'hello123',
        toPascalExpect: 'Hello123',
        toPathExpect: 'hello123',
        toSentenceExpect: 'Hello123',
        toSnakeExpect: 'hello123',
        toSwapExpect: 'HELLO123',
        toTitleExpect: 'Hello123',
        toUpperFirstExpect: 'Hello123',
      );
    });
  });
}

class ChangeCaseTester {
  const ChangeCaseTester._();

  static void runTests({
    required String input,
    required String toCamelExpect,
    required String toCapitalExpect,
    required String toConstantExpect,
    required String toDotExpect,
    required String toHeaderExpect,
    required String toKebabExpect,
    required String toParamExpect,
    required String toLowerFirstExpect,
    required String toNoExpect,
    required String toPascalExpect,
    required String toPathExpect,
    required String toSentenceExpect,
    required String toSnakeExpect,
    required String toSwapExpect,
    required String toTitleExpect,
    required String toUpperFirstExpect,
  }) {
    test('toCamelCase', () {
      expect(input.toCamelCase(), toCamelExpect);
    });

    test('toCapitalCase', () {
      expect(input.toCapitalCase(), toCapitalExpect);
    });

    test('toConstantCase', () {
      expect(input.toConstantCase(), toConstantExpect);
    });

    test('toDotCase', () {
      expect(input.toDotCase(), toDotExpect);
    });

    test('toHeaderCase', () {
      expect(input.toHeaderCase(), toHeaderExpect);
    });

    test('toKebabCase', () {
      expect(input.toKebabCase(), toKebabExpect);
    });

    test('toParamCase', () {
      expect(input.toParamCase(), toParamExpect);
    });

    test('toLowerFirstCase', () {
      expect(input.toLowerFirstCase(), toLowerFirstExpect);
    });

    test('toNoCase', () {
      expect(input.toNoCase(), toNoExpect);
    });

    test('toPascalCase', () {
      expect(input.toPascalCase(), toPascalExpect);
    });

    test('toPathCase', () {
      expect(input.toPathCase(), toPathExpect);
    });

    test('toSentenceCase', () {
      expect(input.toSentenceCase(), toSentenceExpect);
    });

    test('toSnakeCase', () {
      expect(input.toSnakeCase(), toSnakeExpect);
    });

    test('toSwapCase', () {
      expect(input.toSwapCase(), toSwapExpect);
    });

    test('toTitleCase', () {
      expect(input.toTitleCase(), toTitleExpect);
    });

    test('toUpperFirstCase', () {
      expect(input.toUpperFirstCase(), toUpperFirstExpect);
    });
  }
}
