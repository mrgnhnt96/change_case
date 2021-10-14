/// The configuration class for `change_case`
class ChangeCaseConfig {
  const ChangeCaseConfig._();

  /// The placeholder used to replace/format any matches in the string.
  /// - `•`
  static const defaultPlaceholder = '•';

  /// ```dart
  /// RegExp('([a-z0-9])(?:•)*([A-Z])')
  /// ```
  ///
  /// _matches lowercase  or numeric char
  /// to uppercase char_
  ///
  /// {@template change_case.config.placeholder}
  /// | uses the placeholder to replace/format matches in string
  /// - __default:__ `•`
  ///
  /// The default placeholder can be overridden via `setUp.placeholder`
  /// {@endtemplate}
  ///
  /// {@template _matches}
  ///   matches:
  /// _`-` sybmolizes seperation of groups_
  /// {@endtemplate}
  /// - helloWorld
  ///  - `oW`
  /// - camelCase
  ///  - `lC`
  /// - PascalCase
  ///  - `lC`
  ///
  /// does not match:
  /// - kebab-case
  /// - snake_case
  /// - Title Case
  static final lowerOrNumToUpperPattern =
      RegExp('([a-z0-9])(?:${getPlaceholder()})*([A-Z])');

  /// ```dart
  /// RegExp('([A-Z])(?:•)*([A-Z][a-z])')
  /// ```
  ///
  /// _matches uppercase char
  /// to uppercase followed by lowercase char_
  ///
  /// {@macro change_case.config.placeholder}
  ///
  /// {@macro _matches}
  /// - STRANGECase
  ///  - `E-Ca`
  /// - camelCase
  ///  - `l-C`
  /// - PascalCase
  ///  - `l-C`
  ///
  /// does not match:
  /// - camelCase
  /// - PascalCase
  /// - kebab-case
  /// - snake_case
  /// - no case
  static final upperToLowerPattern =
      RegExp('([A-Z])(?:${getPlaceholder()})*([A-Z][a-z])');

  /// the default split patterns
  ///
  /// - [lowerOrNumToUpperPattern]
  /// - [upperToLowerPattern]
  static final defaultSplitPatterns = [
    lowerOrNumToUpperPattern,
    upperToLowerPattern,
  ];

  /// ```dart
  /// RegExp('[^A-Z0-9]+', caseSensitive: false)
  /// ```
  ///
  /// _matches any non-alphanumeric char_
  ///
  /// matches:
  /// - `line breaks`
  /// - kebab-case
  ///  - `-`
  /// - snake_case
  ///  - `_`
  /// - no case
  ///  - ` `
  /// - n8&*92+=84m
  ///  - `&*+=`
  ///
  /// does not match:
  /// - STRANGECase
  /// - camelCase
  /// - PascalCase
  static final removeNonAlphaPattern =
      RegExp('[^A-Z0-9]+', caseSensitive: false);

  /// ```dart
  /// RegExp('([a-z])([A-Z0-9])')
  /// ```
  ///
  /// _matches lowercase char
  /// to uppercase or numeric char_
  ///
  /// {@macro _matches}
  /// - case123
  ///  - `e-1`
  /// - camelCase
  ///  - `l-C`
  /// - PascalCase
  ///  - `l-C`
  ///
  /// does not match:
  /// - kebab-case
  /// - snake_case
  /// - no case
  static final lowerToNumOrUpperPattern = RegExp('([a-z])([A-Z0-9])');

  /// the default strip patterns
  ///
  /// - [removeNonAlphaPattern]
  static final defaultStripPatterns = [removeNonAlphaPattern];

  /// overrides the [defaultSplitPatterns] with [splitPatterns]
  ///
  /// overrides the [defaultStripPatterns] with [stripPatterns]
  ///
  /// overrides the [defaultPlaceholder] with [placeholder]
  ///
  /// both [splitPatterns] and [stripPatterns] cannot be empty lists.
  /// They require at least one pattern to be set
  ///
  /// ___Make sure to include the [placeholder] in your [splitPatterns]___
  static void setUp({
    List<Pattern>? splitPatterns,
    List<Pattern>? stripPatterns,
    String? placeholder,
  }) {
    if (splitPatterns != null) {
      assert(splitPatterns.isNotEmpty,
          'You must provide at least one split pattern');
    }
    if (stripPatterns != null) {
      assert(stripPatterns.isNotEmpty,
          'You must provide at least one strip pattern');
    }
    if (placeholder != null) {
      assert(placeholder.isNotEmpty, 'You must provide a placeholder');
    }

    _configSplitPatterns = splitPatterns;
    _configStripPatterns = stripPatterns;
    _configPlaceholder = placeholder;
  }

  static List<Pattern>? _configSplitPatterns;
  static List<Pattern>? _configStripPatterns;
  static String? _configPlaceholder;

  /// retrieves the split patterns
  ///
  /// uses the [defaultSplitPatterns] if no patterns are set
  /// via [setUp]
  static List<Pattern> getSplitPatterns() =>
      _configSplitPatterns ?? defaultSplitPatterns;

  /// retrieves the strip patterns
  ///
  /// uses the [defaultStripPatterns] if no patterns are set
  /// via [setUp]
  static List<Pattern> getStripPatterns() =>
      _configStripPatterns ?? defaultStripPatterns;

  /// retrieves the placeholder
  ///
  /// uses the [defaultPlaceholder] if no placeholder is set
  /// via [setUp]
  static String getPlaceholder() => _configPlaceholder ?? defaultPlaceholder;
}
