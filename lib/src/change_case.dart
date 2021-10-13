import 'package:change_case/src/enums.dart';
import 'package:meta/meta.dart';

/// Extensions getters on [String] to preform common, identifier-related
/// conversions.
extension ChangeCase on String {
  /// Returns `this` converted to
  /// [kebab-case](https://en.wikipedia.org/wiki/Kebab_case),
  /// where words are seperated by a hyphen.
  ///
  /// Examples:
  ///
  /// ```text
  /// 'simple'   -> 'simple',
  /// 'twoWords' -> 'two-words'
  /// 'FirstBig' -> 'first-big'
  /// ```
  ///
  /// Whitespace is not considered or affected.
  // String get kebab => _fixCase('-');

  /// Returns `this` converted to
  /// [snake_case](https://en.wikipedia.org/wiki/Snake_case),
  /// where words are seperated by underscore.
  ///
  /// Examples:
  ///
  /// ```text
  /// 'simple'   -> 'simple',
  /// 'twoWords' -> 'two_words'
  /// 'FirstBig' -> 'first_big'
  /// ```
  ///
  /// Whitespace is not considered or affected.
  // String get snake => _fixCase('_', ChangeCaseType.snake);

  // String get camel => _fixCase('');

  /// Returns `this` where the first character is capitalized.
  ///
  /// Examples:
  ///
  /// ```text
  /// 'simple'   -> 'Simple',
  /// 'twoWords' -> 'TwoWords'
  /// 'FirstBig' -> 'FirstBig'
  /// ```
  ///
  /// Whitespace is not considered or affected.
  String get pascal {
    if (isEmpty) {
      return '';
    }

    return this[0].toUpperCase() + substring(1);
  }

  String _fixCase(String separator, ChangeCaseType caseType) {
    final formatted = resetToCamelCase(this);
    String _toUpperCase(String s) => s.toUpperCase();
    String _toLowerCase(String s) => s.toLowerCase();
    String _toTitleCase(String s) =>
        s.substring(0, 1).toUpperCase() + s.substring(1).toLowerCase();

    return this;
  }

  /// Returns `this` with all leading underscore characters removed.
  String get nonPrivate => replaceFirst(RegExp('^_*'), '');
}

@visibleForTesting
String resetToCamelCase(String s) {
  if (s.isEmpty) return '';

  s = s.trim();

  String split(Pattern deliminator) {
    final sections = s.split(deliminator);

    final first = sections.first.toLowerCase();

    if (sections.length == 1) {
      return first;
    }

    final remaining = sections
        .sublist(1)
        .map((st) => st.substring(0, 1).toUpperCase() + st.substring(1))
        .join();

    return '$first$remaining';
  }

  /// check for snake case
  if (s.contains('_')) s = split('_');

  if (s.contains('-')) s = split('-');

  if (s.contains(' ')) s = split(' ');

  final numbers = RegExp(r'\d');
  final capitalLetters = RegExp('[A-Z]');
  final allletters = RegExp('[a-zA-Z]');

  if (s.startsWith(numbers)) {
    s = s.replaceFirstMapped(allletters, (match) {
      final letter = match.group(0)!;

      return letter.toLowerCase();
    });
  }

  return s.replaceAllMapped(capitalLetters, (match) {
    final letter = match.group(0)!;

    if (match.start > 0) return letter;

    return letter.toLowerCase();
  });
}
