import 'package:change_case/change_case.dart';
import 'package:test/test.dart';

void main() {
  group('#resetToCamelCase', () {
    test('return empty string if provided empty string', () {
      expect(resetToCamelCase(''), '');
    });

    group('pascal', () {
      CaseTester.runResetToCamelTests(
        input: 'PascalCase',
        expected: 'pascalCase',
      );
    });

    group('camel', () {
      CaseTester.runResetToCamelTests(
        input: 'camelCase',
        expected: 'camelCase',
      );
    });

    group('snake', () {
      CaseTester.runResetToCamelTests(
        input: 'snake_case',
        expected: 'snakeCase',
      );
    });

    group('kebab', () {
      CaseTester.runResetToCamelTests(
        input: 'kebab-case',
        expected: 'kebabCase',
      );
    });

    group('title', () {
      CaseTester.runResetToCamelTests(
        input: 'Title Case',
        expected: 'titleCase',
      );
    });

    group('pascal-snake', () {
      CaseTester.runResetToCamelTests(
        input: 'Pascal_Case',
        expected: 'pascalCase',
      );
    });

    group('pascal-kebab', () {
      CaseTester.runResetToCamelTests(
        input: 'Pascal-Case',
        expected: 'pascalCase',
      );
    });

    group('pascal-kebab-snake', () {
      CaseTester.runResetToCamelTests(
        input: 'Pascal-Kebab_Case',
        expected: 'pascalKebabCase',
      );
    });
  });

  group('CaseHelper', () {
    // const pascalWord = 'FormatWord';
    // const snakeWord = 'snake_word';
    // const camelWord = 'camelWord';
    // const kebabWord = 'kebab-word';
    // const pascalWordWithNumbers = 'Pascal123';
    // const snakeWordWithNumbers = 'snake_word123';
    // const camelWordWithNumbers = 'camelWord123';
    // const kebabWordWithNumbers = 'kebab-word123';

    group('pascal', () {
      CaseTester.runFormatExtensionTests(
        input: 'PascalWord',
        toPascalExpected: 'PascalWord',
        toSnakeExpected: 'pascal_word',
        toCamelExpected: 'pascalWord',
        toKebabExpected: 'pascal-word',
      );
    });

    group('snake', () {
      CaseTester.runFormatExtensionTests(
        input: 'snake_word',
        toPascalExpected: 'SnakeWord',
        toSnakeExpected: 'snake_word',
        toCamelExpected: 'snakeWord',
        toKebabExpected: 'snake-word',
      );
    });

    group('camel', () {
      CaseTester.runFormatExtensionTests(
        input: 'camelWord',
        toPascalExpected: 'CamelWord',
        toSnakeExpected: 'camel_word',
        toCamelExpected: 'camelWord',
        toKebabExpected: 'camel-word',
      );
    });

    group('kebab', () {
      CaseTester.runFormatExtensionTests(
        input: 'kebab-word',
        toPascalExpected: 'KebabWord',
        toSnakeExpected: 'kebab_word',
        toCamelExpected: 'kebabWord',
        toKebabExpected: 'kebab-word',
      );
    });

    group('pascal-snake', () {
      CaseTester.runFormatExtensionTests(
        input: 'Pascal_Word',
        toPascalExpected: 'PascalWord',
        toSnakeExpected: 'pascal_word',
        toCamelExpected: 'pascalWord',
        toKebabExpected: 'pascal-word',
      );
    });

    group('pascal-kebab', () {
      CaseTester.runFormatExtensionTests(
        input: 'Pascal-Word',
        toPascalExpected: 'PascalWord',
        toSnakeExpected: 'pascal_word',
        toCamelExpected: 'pascalWord',
        toKebabExpected: 'pascal-word',
      );
    });

    group('pascal-kebab-snake', () {
      CaseTester.runFormatExtensionTests(
        input: 'Pascal-Kebab_Word',
        toPascalExpected: 'PascalKebabWord',
        toSnakeExpected: 'pascal_kebab_word',
        toCamelExpected: 'pascalKebabWord',
        toKebabExpected: 'pascal-kebab-word',
      );
    });

    group('pascal-kebab-snake-numbers', () {
      CaseTester.runFormatExtensionTests(
        input: 'Pascal-Kebab_Word123',
        toPascalExpected: 'PascalKebabWord123',
        toSnakeExpected: 'pascal_kebab_word123',
        toCamelExpected: 'pascalKebabWord123',
        toKebabExpected: 'pascal-kebab-word123',
      );
    });

    group('pascal-kebab-snake-numbers-pascal', () {
      CaseTester.runFormatExtensionTests(
        input: 'Pascal-Kebab_Word123Pascal',
        toPascalExpected: 'PascalKebabWord123Pascal',
        toSnakeExpected: 'pascal_kebab_word123_pascal',
        toCamelExpected: 'pascalKebabWord123Pascal',
        toKebabExpected: 'pascal-kebab-word123-pascal',
      );
    });
  });
}

class CaseTester {
  const CaseTester._();

  static void runFormatExtensionTests({
    required String input,
    required String toPascalExpected,
    required String toSnakeExpected,
    required String toCamelExpected,
    required String toKebabExpected,
  }) {
    // test('to pascal', () {
    //   expect(input.pascal, toPascalExpected);
    // });

    // test('to snake', () {
    //   expect(input.snake, toSnakeExpected);
    // });

    // test('to camel', () {
    //   expect(input.camel, toCamelExpected);
    // });

    // test('to kebab', () {
    //   expect(input.kebab, toKebabExpected);
    // });
  }

  static void runResetToCamelTests({
    required String input,
    required String expected,
  }) {
    test('returns camel', () {
      expect(resetToCamelCase(input), expected);
    });

    test('returns camel with leading and trailing white space', () {
      expect(resetToCamelCase('  $input  '), expected);
    });

    test('returns camel with numbers starting', () {
      expect(resetToCamelCase('123$input'), '123$expected');
    });

    test('returns camel with numbers ending', () {
      expect(resetToCamelCase('${input}123'), '${expected}123');
    });
  }
}
