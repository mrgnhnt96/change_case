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
    required T lower,
    required T lowerFirst,
    required T no,
    required T pascal,
    required T path,
    required T sentence,
    required T snake,
    required T swap,
    required T title,
    required T upper,
    required T upperFirst,
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
      case ChangeCaseType.lower:
        return lower;
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
      case ChangeCaseType.upper:
        return upper;
      case ChangeCaseType.upperFirst:
        return upperFirst;
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
    T? lower,
    T? lowerFirst,
    T? no,
    T? pascal,
    T? path,
    T? sentence,
    T? snake,
    T? swap,
    T? title,
    T? upper,
    T? upperFirst,
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
      case ChangeCaseType.lower:
        if (lower == null) return orElse;
        return lower;
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
      case ChangeCaseType.upper:
        if (upper == null) return orElse;
        return upper;
      case ChangeCaseType.upperFirst:
        if (upperFirst == null) return orElse;
        return upperFirst;
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
      lower: 'Lower',
      lowerFirst: 'Lowerfirst',
      no: 'No',
      pascal: 'Pascal',
      path: 'Path',
      sentence: 'Sentence',
      snake: 'Snake',
      swap: 'Swap',
      title: 'Title',
      upper: 'Upper',
      upperFirst: 'Upperfirst',
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
by having the next letter capitalized''',
      constant: '''
convert to an upper case, underscore separated string''',
      dot: '''
convert to a lower case period separated string''',
      kebab: '''
Convert to a lower case, dash separated string''',
      lower: '''
convert to a string in lower case''',
      lowerFirst: '''
convert to a string with the first character lower cased''',
      no: '''
Convert the string without any casing (lower case, space separated)''',
      pascal: '''
Convert to a string denoted in the same fashion as [camel]
but with the first letter capitalized''',
      path: '''
Convert to a lower case, slash separated string''',
      sentence: '''
Convert to a lower case, space separated string''',
      snake: '''
Convert to a lower case, underscore separated string''',
      swap: '''
Convert to a string with every character case reversed''',
      title: '''
convert to a space spearated string with the
first character of every word uppercased''',
      upper: '''
convert to a string in upper case''',
      upperFirst: '''
Convert to a string with the first character upper cased''',
    );
  }
}
