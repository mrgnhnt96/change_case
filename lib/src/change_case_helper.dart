import 'package:meta/meta.dart';

import 'package:change_case/src/change_case_config.dart';

/// {@template change_case.options}
/// The options to use when converting a string.
/// {@endtemplate}
abstract class ChangeCaseHelper {
  /// {@macro change_case.options}
  ChangeCaseHelper() : _placeHolder = '•';

  /// the pattern to split the string
  List<Pattern> get _split => ChangeCaseConfig.getSplitPatterns();

  /// the pattern to strip the string of characters
  List<Pattern> get _strip => ChangeCaseConfig.getStripPatterns();

  /// the deliminator to use when joining the string
  String get deliminator;

  @protected
  final String _placeHolder;

  /// transforms a section from the string
  String transform(String section, int index);

  /// transforms the [stringToFormat]
  String convert(String stringToFormat) {
    // split
    stringToFormat = splitString(stringToFormat);

    // strip
    stringToFormat = stripString(stringToFormat);

    var index = 0;
    // Transform each token independently
    return stringToFormat
        .split(_placeHolder)
        .map((s) => transform(s, index++))
        .join(deliminator);
  }

  /// splits the [string] with the patterns retrieved from the config
  /// `ChangeCaseConfig.getSplitPatterns()`
  @protected
  @visibleForTesting
  String splitString(String string) {
    for (final pattern in _split) {
      string = string.replaceAllMapped(
        pattern,
        (match) => match.group(1)! + _placeHolder + match.group(2)!,
      );
    }

    return string;
  }

  /// strips the [string] of matching characters from patterns
  /// retrieved from the config
  /// `ChangeCaseConfig.getSplitPatterns()`
  @protected
  @visibleForTesting
  String stripString(String string) {
    for (final pattern in _strip) {
      string = string.replaceAllMapped(pattern, (match) => _placeHolder);
    }

    return string;
  }
}
