import 'package:change_case/change_case.dart';
import 'package:test/test.dart';

void main() {
  test('Title Case', () {
    final tests = <String, String>{
      "WE'RE ALMOST HERE": "WE'RE ALMOST HERE",
      "we're almost here": "We're Almost Here",
      'test string': 'Test String',
      'Test String': 'Test String',
      'testString': 'testString',
      'tEst stRing': 'tEst stRing',
    };

    for (final entry in tests.entries) {
      expect(entry.key.toTitleCase(), entry.value);
    }
  });

  test('No Case', () {
    final tests = <String, String>{
      "WE'RE ALMOST HERE": "we're almost here",
      'test string': 'test string',
      'Test String': 'test string',
      'testString': 'test string',
      'tEst stRing': 't est st ring',
    };

    for (final entry in tests.entries) {
      expect(entry.key.toNoCase(), entry.value);
    }
  });

  test('No case to Title case', () {
    final tests = <String, String>{
      "WE'RE ALMOST HERE": "We're Almost Here",
      'test string': 'Test String',
      'Test String': 'Test String',
      'testString': 'Test String',
      'tEst stRing': 'T Est St Ring',
    };

    for (final entry in tests.entries) {
      expect(entry.key.toNoCase().toTitleCase(), entry.value);
    }
  });
}
