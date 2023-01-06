import 'package:test/test.dart';

import 'package:change_case/src/change_case_config.dart';

void main() {
  // resets the config to the default
  setUp(ChangeCaseConfig.setUp);

  group('placeholder', () {
    test('return • as default placeholder', () {
      expect(ChangeCaseConfig.getPlaceholder(), '•');
    });

    test('should return provided placeholder', () {
      const newPlaceholder = '?';

      ChangeCaseConfig.setUp(placeholder: newPlaceholder);

      expect(ChangeCaseConfig.getPlaceholder(), newPlaceholder);
    });
  });

  group('split patterns', () {
    final lowerOrNumToUpperPattern = RegExp('([a-z0-9])(?:•)*([A-Z])');
    final upperToLowerPattern = RegExp('([A-Z])(?:•)*([A-Z][a-z])');

    test('#lowerOrNumToUpperPattern', () {
      expect(
        ChangeCaseConfig.lowerOrNumToUpperPattern,
        lowerOrNumToUpperPattern,
      );
    });

    test('#upperToLowerPattern', () {
      expect(ChangeCaseConfig.upperToLowerPattern, upperToLowerPattern);
    });

    test('should return default split patterns', () {
      expect(ChangeCaseConfig.getSplitPatterns(), [
        lowerOrNumToUpperPattern,
        upperToLowerPattern,
      ]);
    });

    test('should return default when provided empty list', () {
      ChangeCaseConfig.setUp(splitPatterns: []);

      expect(ChangeCaseConfig.getSplitPatterns(), [
        lowerOrNumToUpperPattern,
        upperToLowerPattern,
      ]);
    });

    test('should return provided split patterns', () {
      const newSplitPatterns = <Pattern>[' ', '-', '_', '.'];

      ChangeCaseConfig.setUp(splitPatterns: newSplitPatterns);

      expect(ChangeCaseConfig.getSplitPatterns(), newSplitPatterns);
    });
  });

  group('strip patterns', () {
    final removeNonAlphaPattern = RegExp("[^A-Z0-9']+", caseSensitive: false);
    final lowerToNumOrUpperPattern = RegExp('([a-z])([A-Z0-9])');

    test('#removeNonAlphaPattern', () {
      expect(ChangeCaseConfig.removeNonAlphaPattern, removeNonAlphaPattern);
    });

    test('#lowerToNumOrUpperPattern', () {
      expect(
        ChangeCaseConfig.lowerToNumOrUpperPattern,
        lowerToNumOrUpperPattern,
      );
    });

    test('should return default strip patterns', () {
      expect(ChangeCaseConfig.getStripPatterns(), [
        removeNonAlphaPattern,
      ]);
    });

    test('should return default when provided empty list', () {
      ChangeCaseConfig.setUp(stripPatterns: []);

      expect(ChangeCaseConfig.getStripPatterns(), [
        removeNonAlphaPattern,
      ]);
    });

    test('should return provided strip patterns', () {
      const newStripPatterns = <Pattern>[' ', '-', '_', '.'];

      ChangeCaseConfig.setUp(stripPatterns: newStripPatterns);

      expect(ChangeCaseConfig.getStripPatterns(), newStripPatterns);
    });
  });
}
