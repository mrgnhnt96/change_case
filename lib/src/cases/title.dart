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
  String transform(String section, int index) => throw UnimplementedError();

  @override
  String convert(String stringToFormat) {
    final matches = _tokens.allMatches(stringToFormat);
    final buffer = StringBuffer();

    for (final match in matches) {
      final token = match.group(0)!;
      final index = match.start;

      // Ignore already capitalized words.
      final isManualCase = _isManualCase.hasMatch(token);

      // Ignore small words except at beginning or end.
      final isSmallWord = _smallWords.hasMatch(token);
      final isBeginning = index == 0;
      final isEnd = index + token.length == stringToFormat.length;
      final toBeCapitalized =
          !isManualCase || (isSmallWord && !isBeginning && !isEnd);

      // Ignore urls
      final colonPosition = token.length - 1;
      final isUrl =
          stringToFormat.substring(colonPosition, colonPosition + 1) == ':';
      final isWhitespace = _whiteSpace
          .hasMatch(token.substring(colonPosition, colonPosition + 1));

      if (toBeCapitalized && !isUrl && !isWhitespace) {
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
}
