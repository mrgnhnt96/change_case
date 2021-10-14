import 'package:change_case/src/cases/camel.dart';
import 'package:test/test.dart';

void main() {
  late final Camel camel;

  setUp(() {
    camel = Camel();
  });

  group('#deliminator', () {
    test("is ''", () {
      expect(camel.deliminator, '');
    });
  });

  group('#transform', () {
    test('first section returns lower case', () {
      final expected = 'lower';
      final actual = camel.transform('Lower', 1);
    });
  });
}
