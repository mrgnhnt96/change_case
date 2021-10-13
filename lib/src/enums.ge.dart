// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file:

part of 'enums.dart';

// **************************************************************************
// EnumAssistGenerator
// **************************************************************************

/// Extensions for the enum ChangeCaseType
extension ChangeCaseTypeX on ChangeCaseType {
  /// Map of all values of the enum
  T map<T>({
    required T camel,
    required T constant,
    required T dot,
    required T kebab,
    required T lowerFirst,
    required T no,
    required T pascal,
    required T path,
    required T sentence,
    required T snake,
    required T swap,
    required T title,
    required T upperFirst,
    required T capital,
    required T header,
    required T sponge,
  }) {
    switch (this) {
      case ChangeCaseType.camel:
        return camel;
      case ChangeCaseType.constant:
        return constant;
      case ChangeCaseType.dot:
        return dot;
      case ChangeCaseType.kebab:
        return kebab;
      case ChangeCaseType.lowerFirst:
        return lowerFirst;
      case ChangeCaseType.no:
        return no;
      case ChangeCaseType.pascal:
        return pascal;
      case ChangeCaseType.path:
        return path;
      case ChangeCaseType.sentence:
        return sentence;
      case ChangeCaseType.snake:
        return snake;
      case ChangeCaseType.swap:
        return swap;
      case ChangeCaseType.title:
        return title;
      case ChangeCaseType.upperFirst:
        return upperFirst;
      case ChangeCaseType.capital:
        return capital;
      case ChangeCaseType.header:
        return header;
      case ChangeCaseType.sponge:
        return sponge;
    }
  }

  /// Optionally map all values of the enum
  ///
  /// default value is provided when value has not been mapped
  T maybeMap<T>({
    required T orElse,
    T? camel,
    T? constant,
    T? dot,
    T? kebab,
    T? lowerFirst,
    T? no,
    T? pascal,
    T? path,
    T? sentence,
    T? snake,
    T? swap,
    T? title,
    T? upperFirst,
    T? capital,
    T? header,
    T? sponge,
  }) {
    switch (this) {
      case ChangeCaseType.camel:
        if (camel == null) return orElse;
        return camel;
      case ChangeCaseType.constant:
        if (constant == null) return orElse;
        return constant;
      case ChangeCaseType.dot:
        if (dot == null) return orElse;
        return dot;
      case ChangeCaseType.kebab:
        if (kebab == null) return orElse;
        return kebab;
      case ChangeCaseType.lowerFirst:
        if (lowerFirst == null) return orElse;
        return lowerFirst;
      case ChangeCaseType.no:
        if (no == null) return orElse;
        return no;
      case ChangeCaseType.pascal:
        if (pascal == null) return orElse;
        return pascal;
      case ChangeCaseType.path:
        if (path == null) return orElse;
        return path;
      case ChangeCaseType.sentence:
        if (sentence == null) return orElse;
        return sentence;
      case ChangeCaseType.snake:
        if (snake == null) return orElse;
        return snake;
      case ChangeCaseType.swap:
        if (swap == null) return orElse;
        return swap;
      case ChangeCaseType.title:
        if (title == null) return orElse;
        return title;
      case ChangeCaseType.upperFirst:
        if (upperFirst == null) return orElse;
        return upperFirst;
      case ChangeCaseType.capital:
        if (capital == null) return orElse;
        return capital;
      case ChangeCaseType.header:
        if (header == null) return orElse;
        return header;
      case ChangeCaseType.sponge:
        if (sponge == null) return orElse;
        return sponge;
    }
  }

  /// Returns the name of the enum field
  /// in a human readable format.
  String get name {
    return map(
      camel: 'Camel',
      constant: 'Constant',
      dot: 'Dot',
      kebab: 'Kebab',
      lowerFirst: 'Lowerfirst',
      no: 'No',
      pascal: 'Pascal',
      path: 'Path',
      sentence: 'Sentence',
      snake: 'Snake',
      swap: 'Swap',
      title: 'Title',
      upperFirst: 'Upperfirst',
      capital: 'Capital',
      header: 'Header',
      sponge: 'Sponge',
    );
  }

  /// Returns the description of the enum field.
  ///
  /// If the description is null, the doc comment of the enum field is returned.
  String? get description {
    return maybeMap(
      orElse: null,
      camel: '''
convert to a string with the separators denoted
by having the next letter capitalized
''',
      constant: '''
convert to an upper case, underscore separated string
''',
      dot: '''
convert to a lower case period separated string
''',
      kebab: '''
Convert to a lower case, dash separated string
''',
      lowerFirst: '''
convert to a string with the first character lower cased
''',
      no: '''
Convert the string without any casing (lower case, space separated)
''',
      pascal: '''
Convert to a string denoted in the same fashion as [camel]
but with the first letter capitalized
''',
      path: '''
Convert to a lower case, slash separated string
''',
      sentence: '''
Convert to a lower case, space separated string
''',
      snake: '''
Convert to a lower case, underscore separated string
''',
      swap: '''
Convert to a string with every character case reversed
''',
      title: '''
convert to a space spearated string with the
first character of every word uppercased
''',
      upperFirst: '''
Convert to a string with the first character upper cased
''',
      capital: '''
Converts to a captialized word, space separated string
of every word
''',
      header: '''
Converts to a captialized word, dash separated string
''',
      sponge: '''
Converts to a string with every character randomly lowercased/capitalized
''',
    );
  }
}
