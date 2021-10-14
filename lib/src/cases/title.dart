import 'dart:math';

import 'package:change_case/src/change_case_helper.dart';

final _smallWords = RegExp(
    r'\b(?:an?d?|a[st]|because|but|by|en|for|i[fn]|neither|nor|o[fnr]|only|over|per|so|some|tha[tn]|the|to|up|upon|vs?\.?|versus|via|when|with|without|yet)\b', // ignore:line_length
    caseSensitive: false);
final _tokens = RegExp(r'[^\s:–—-]+|.');
final _whiteSpace = RegExp(r'\s+');
final _isManualCase = RegExp(r'.(?=[A-Z]|\..)');
final _alphaNumeric = RegExp(r'[A-Za-z0-9\u00C0-\u00FF]');

/// {@macro change_case.type.title}
class Title extends ChangeCaseHelper {
  @override
  String get deliminator => '_';

  @override
  String transform(String section, int index) {
    final matches = _tokens.allMatches(section);
    final buffer = StringBuffer();

    for (final match in matches) {
      final token = match.group(0)!;
      final index = match.start;
      final maxSectionLength = min(token.length + 1, section.length);

      // Ignore already capitalized words.
      final isManualCase = _isManualCase.hasMatch(token);

      // Ignore small words except at beginning or end.
      final isSmallWord = _smallWords.hasMatch(token);
      final isBeginning = index == 0;
      final isEnd = index + token.length == section.length;

      // Ignore urls
      final colonPosition = token.length;
      final possibleColon = section.substring(colonPosition, maxSectionLength);
      final isUrl = possibleColon == ':';
      final endsWithWhitespace = _whiteSpace
          .hasMatch(section.substring(token.length, maxSectionLength));

      if (!isManualCase &&
          (!isSmallWord || isBeginning || isEnd) &&
          (!isUrl || endsWithWhitespace)) {
        final replacement =
            token.replaceFirstMapped(_alphaNumeric, (alphaMatch) {
          final char = alphaMatch.group(0)!;
          return char.toUpperCase();
        });

        buffer.write(replacement);
      } else {
        buffer.write(token);
      }
    }

    return '$buffer';
  }

  @override
  String convert(String stringToFormat) => transform(stringToFormat, 0);
}
