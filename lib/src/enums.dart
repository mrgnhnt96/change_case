part 'enums.ge.dart';

/// All available string case formats
enum ChangeCaseType {
  /// {@template change_case.type.camel}
  /// convert to a string with the separators denoted
  /// by having the next letter capitalized
  /// {@endtemplate}
  camel,

  /// {@template change_case.type.constant}
  /// convert to an upper case, underscore separated string
  /// {@endtemplate}
  constant,

  /// {@template change_case.type.dot}
  /// convert to a lower case period separated string
  /// {@endtemplate}
  dot,

  /// {@template change_case.type.kebab}
  /// Convert to a lower case, dash separated string
  /// {@endtemplate}
  kebab,

  /// {@template change_case.type.lower_first}
  /// convert to a string with the first character lower cased
  /// {@endtemplate}
  lowerFirst,

  /// {@template change_case.type.no}
  /// Convert the string without any casing (lower case, space separated)
  /// {@endtemplate}
  no,

  /// {@template change_case.type.pascal}
  /// Convert to a string denoted in the same fashion as [camel]
  /// but with the first letter capitalized
  /// {@endtemplate}
  pascal,

  /// {@template change_case.type.path}
  /// Convert to a lower case, slash separated string
  /// {@endtemplate}
  path,

  /// {@template change_case.type.sentence}
  /// Convert to a lower case, space separated string
  /// {@endtemplate}
  sentence,

  /// {@template change_case.type.snake}
  /// Convert to a lower case, underscore separated string
  /// {@endtemplate}
  snake,

  /// {@template change_case.type.swap}
  /// Convert to a string with every character case reversed
  /// {@endtemplate}
  swap,

  /// {@template change_case.type.title}
  /// convert to a space spearated string with the
  /// first character of every word uppercased
  /// {@endtemplate}
  title,

  /// {@template change_case.type.upper_first}
  /// Convert to a string with the first character upper cased
  /// {@endtemplate}
  upperFirst,

  /// {@template change_case.type.capital}
  /// Converts to a captialized word, space separated string
  /// of every word
  /// {@endtemplate}
  capital,

  /// {@template change_case.type.header}
  /// Converts to a captialized word, dash separated string
  /// {@endtemplate}
  header,

  /// {@template change_case.type.sponge}
  /// Converts to a string with every character randomly lowercased/capitalized
  /// {@endtemplate}
  sponge,
}
