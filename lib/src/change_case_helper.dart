import 'package:change_case/src/change_case_config.dart';
import 'package:meta/meta.dart';

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

  /// splits the [string] with the patterns retrieved from the config
  /// `ChangeCaseConfig.getSplitPatterns()`
  @protected
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
  String stripString(String string) {
    string = splitString(string);

    for (final pattern in _strip) {
      string = string.replaceAllMapped(pattern, (match) => _placeHolder);
    }

    return string;
  }
}
