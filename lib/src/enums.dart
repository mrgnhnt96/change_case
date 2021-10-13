part 'enums.ge.dart';

/// All available string case formats
enum ChangeCaseType {
  /// convert to a string with the separators denoted
  /// by having the next letter capitalized
  camel,

  /// convert to an upper case, underscore separated string
  constant,

  /// convert to a lower case period separated string
  dot,

  /// Convert to a lower case, dash separated string
  kebab,

  /// convert to a string in lower case
  lower,

  /// convert to a string with the first character lower cased
  lowerFirst,

  /// Convert the string without any casing (lower case, space separated)
  no,

  /// Convert to a string denoted in the same fashion as [camel]
  /// but with the first letter capitalized
  pascal,

  /// Convert to a lower case, slash separated string
  path,

  /// Convert to a lower case, space separated string
  sentence,

  /// Convert to a lower case, underscore separated string
  snake,

  /// Convert to a string with every character case reversed
  swap,

  /// convert to a space spearated string with the
  /// first character of every word uppercased
  title,

  /// convert to a string in upper case
  upper,

  /// Convert to a string with the first character upper cased
  upperFirst,
}
