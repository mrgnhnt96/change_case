import 'package:change_case/change_case.dart';

void main() {
  // returns: 'testString'
  'test string'.toCamelCase();

  // returns: 'Test String'
  'test string'.toCapitalCase();

  // returns: 'TEST_STRING'
  'test string'.toConstantCase();

  // returns: 'test.string'
  'test string'.toDotCase();

  // returns: 'Test-String'
  'test string'.toHeaderCase();

  // returns: 'test string'
  'testString'.toNoCase();

  // returns: 'test-string'
  'test string'.toParamCase();

  // returns: 'TestString'
  'test string'.toPascalCase();

  // returns: 'test/string'
  'test string'.toPathCase();

  // returns: 'Test string'
  'testString'.toSentenceCase();

  // returns: 'test_string'
  'test string'.toSnakeCase();

  // returns: 'A Simple Test'
  'a simple test'.toTitleCase();

  // returns: 'tEST sTRING'
  'Test String'.toSwapCase();

  // returns: true
  'test string'.isLowerCase();

  // returns: false
  'test string'.isUpperCase();

  // returns: 'tEST'
  'TEST'.toLowerFirstCase();

  // returns: 'Test'
  'test'.toUpperFirstCase();

  // returns: 'tEst stRINg'
  'Test String'.toSpongeCase();
}
