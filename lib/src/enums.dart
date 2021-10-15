part 'enums.ge.dart';

/// All available string case formats
enum ChangeCaseType {
  /// {@template change_case.type.camel}
  /// Converts to a string with the separators denoted
  /// by having the next letter capitalized
  ///
  /// example:
  ///
  /// `'hello_world' -> 'helloWorld'`
  /// {@endtemplate}
  camel,

  /// {@template change_case.type.constant}
  /// Converts to an upper case, underscore separated string
  ///
  /// example:
  ///
  /// `'hello world' -> 'HELLO_WORLD'`
  /// {@endtemplate}
  constant,

  /// {@template change_case.type.dot}
  /// Converts to a lower case period separated string
  ///
  /// example:
  ///
  /// `'hello World' -> 'hello.world'`
  /// {@endtemplate}
  dot,

  /// {@template change_case.type.kebab}
  /// Converts to a lower case, dash separated string
  ///
  /// example:
  ///
  /// `'hello World' -> 'hello-world'`
  /// {@endtemplate}
  kebab,

  /// {@template change_case.type.lower_first}
  /// Converts to a string with the first character lower cased
  ///
  /// example:
  ///
  /// `'Hello World' -> 'hello World'`
  /// {@endtemplate}
  lowerFirst,

  /// {@template change_case.type.no}
  /// Converts the string without any casing (lower case, space separated)
  ///
  /// example:
  ///
  /// `'Hello-World' -> 'hello world'`
  /// {@endtemplate}
  no,

  /// {@template change_case.type.pascal}
  /// Converts to a string denoted in the same fashion as [camel]
  /// but with the first letter capitalized
  ///
  /// example:
  ///
  /// `'hello_world' -> 'HelloWorld'`
  /// {@endtemplate}
  pascal,

  /// {@template change_case.type.path}
  /// Converts to a lower case, slash separated string
  ///
  /// example:
  ///
  /// `'hello World' -> 'hello/world'`
  /// {@endtemplate}
  path,

  /// {@template change_case.type.sentence}
  /// Converts to a lower case, space separated string
  /// with the first letter capitalized
  ///
  /// example:
  ///
  /// `'hello World' -> 'Hello world'`
  /// {@endtemplate}
  sentence,

  /// {@template change_case.type.snake}
  /// Converts to a lower case, underscore separated string
  ///
  /// example:
  ///
  /// `'hello World' -> 'hello_world'`
  /// {@endtemplate}
  snake,

  /// {@template change_case.type.swap}
  /// Converts to a string with every character case reversed
  ///
  /// example:
  ///
  /// `'Hello World' -> 'hELLO wORLD'`
  /// {@endtemplate}
  swap,

  /// {@template change_case.type.title}
  /// Converts to a space separated string with the
  ///
  /// first character of every word uppercased
  /// __except__
  /// - small words
  /// - urls
  /// - words that contain capital letters
  ///
  /// example:
  ///
  /// `'hello world' -> 'Hello World'`
  /// {@endtemplate}
  title,

  /// {@template change_case.type.upper_first}
  /// Converts to a string with the first character upper cased
  ///
  /// example:
  ///
  /// `'hello world' -> 'Hello world'`
  /// {@endtemplate}
  upperFirst,

  /// {@template change_case.type.capital}
  /// Converts to a lowercased, first letter captialized word,
  /// space separated string of every word
  ///
  /// example:
  ///
  /// `'hello world' -> 'Hello World'`
  /// {@endtemplate}
  capital,

  /// {@template change_case.type.header}
  /// Converts to a captialized word, dash separated string
  ///
  /// example:
  ///
  /// `'hello world' -> 'Hello-World'`
  /// {@endtemplate}
  header,

  /// {@template change_case.type.sponge}
  /// Converts to a string with every character randomly lowercased/capitalized
  ///
  /// example:
  ///
  /// `'hello world' -> 'hElLo wOrLd'`
  /// {@endtemplate}
  sponge,
}
