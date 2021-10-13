import 'package:meta/meta.dart';

// Support camel case ("camelCase" -> "camel Case" and "CAMELCase" -> "CAMEL Case").
final _lowerOrNumToUpperPattern = RegExp('([a-z0-9])(?:•)*([A-Z])');
final _upperToLowerPattern = RegExp('([A-Z])(?:•)*([A-Z][a-z])');

final _defaults = [
  _lowerOrNumToUpperPattern,
  _upperToLowerPattern,
];

final _defaultStrip = RegExp('[^A-Z0-9]+', caseSensitive: false);

/// {@template change_case.options}
/// The options to use when converting a string.
/// {@endtemplate}
abstract class ChangeCaseHelper {
  /// {@macro change_case.options}
  ChangeCaseHelper({
    List<RegExp>? split,
    RegExp? strip,
  })  : split = split ?? _defaults,
        strip = strip ?? _defaultStrip,
        _placeHolder = '•';

  /// the pattern to split the string
  final List<RegExp> split;

  /// the pattern to strip the string of characters
  final RegExp strip;

  /// the deliminator to use when joining the string
  String get deliminator;

  @protected
  final String _placeHolder;

  /// transforms a section from the string
  String transform(String section, int index, List<String> parts);

  /// transforms the [stringToFormat]
  String convert(String stringToFormat) {
    // Trim the delimiter from around the output string
    final rawString = stripString(stringToFormat);

    var index = 0;
    // Transform each token independently
    return rawString
        .split(_placeHolder)
        .map((s) => transform(s, index++, []))
        .join(deliminator);
  }

  /// splits the [string] with the [split] pattern
  @protected
  String splitString(String string) {
    var updatedString = string;

    for (final pattern in split) {
      updatedString = updatedString.replaceAllMapped(
        pattern,
        (match) => match.group(1)! + _placeHolder + match.group(2)!,
      );
    }

    return updatedString;
  }

  /// strips the [string] of characters with the [strip] pattern
  @protected
  String stripString(String string) {
    final splitStr = splitString(string);

    final stripStr = splitStr.replaceAllMapped(strip, (match) => _placeHolder);

    return stripStr;
  }
}
