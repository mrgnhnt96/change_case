import 'package:change_case/src/cases/cases.dart';
import 'package:change_case/src/enums.dart';

void main() {
  final newString = 'hello woRld_with-Test^123 and cool'.toLowerCase();

// snake
// sponge
// swap
// title
// upper
// upperFirst

  print(newString);
}

/// Extensions getters on [String] to preform common, identifier-related
/// conversions.
extension ChangeCase on String {
  /// {@macro change_case.type.camel}
  String toCamelCase() => _fixCase(ChangeCaseType.camel);

  /// {@macro change_case.type.capital}
  String toCapitalCase() => _fixCase(ChangeCaseType.capital);

  /// {@macro change_case.type.constant}
  String toConstantCase() => _fixCase(ChangeCaseType.constant);

  /// {@macro change_case.type.dot}
  String toDotCase() => _fixCase(ChangeCaseType.dot);

  /// {@macro change_case.type.header}
  String toHeaderCase() => _fixCase(ChangeCaseType.header);

  /// {@macro change_case.type.kebab}
  String toKebabCase() => _fixCase(ChangeCaseType.kebab);

  /// Same as [toKebabCase]
  ///
  /// {@macro change_case.type.kebab}
  String toParamCase() => _fixCase(ChangeCaseType.kebab);

  /// {@macro change_case.type.lower_first}
  String toLowerFirstCase() => _fixCase(ChangeCaseType.lowerFirst);

  /// {@macro change_case.type.no}
  String toNoCase() => _fixCase(ChangeCaseType.no);

  /// {@macro change_case.type.pascal}
  String toPascalCase() => _fixCase(ChangeCaseType.pascal);

  /// {@macro change_case.type.path}
  String toPathCase([String? separator]) =>
      _fixCase(ChangeCaseType.path, separator);

  /// {@macro change_case.type.sentence}
  String toSentenceCase() => _fixCase(ChangeCaseType.sentence);

  /// {@macro change_case.type.snake}
  String toSnakeCase() => _fixCase(ChangeCaseType.snake);

  /// {@macro change_case.type.sponge}
  String toSpongeCase() => _fixCase(ChangeCaseType.sponge);

  /// {@macro change_case.type.swap}
  String toSwapCase() => _fixCase(ChangeCaseType.swap);

  /// {@macro change_case.type.title}
  String toTitleCase() => _fixCase(ChangeCaseType.title);

  /// {@macro change_case.type.upperFirst}
  String toUpperFirstCase() => _fixCase(ChangeCaseType.upperFirst);

  /// Checkes if whole string is lowercase.
  bool isLowerCase() => toLowerCase() == this && toUpperCase() != this;

  /// Checkes if whole string is uppercase.
  bool isUpperCase() => toLowerCase() != this && toUpperCase() == this;

  String _fixCase(ChangeCaseType caseType, [String? separator]) {
    return caseType.map(
      camel: () => Camel().convert(this),
      constant: () => Constant().convert(this),
      dot: () => Dot().convert(this),
      kebab: () => Kebab().convert(this),
      lowerFirst: () => LowerFirst().convert(this),
      no: () => No().convert(this),
      pascal: () => Pascal().convert(this),
      path: () => Path(separator).convert(this),
      sentence: () => Sentence().convert(this),
      snake: () => Snake().convert(this),
      swap: () => Swap().convert(this),
      title: () => Title().convert(this),
      upperFirst: () => UpperFirst().convert(this),
      capital: () => Capital().convert(this),
      header: () => Header().convert(this),
      sponge: () => Sponge().convert(this),
    )();
  }
}
