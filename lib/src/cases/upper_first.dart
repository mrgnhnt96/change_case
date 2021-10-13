import 'package:change_case/src/change_case_helper.dart';

/// {@macro change_case.type.upper_first}
class UpperFirst extends ChangeCaseHelper {
  @override
  String get deliminator => throw UnimplementedError();

  @override
  String transform(String section, int index, List<String> parts) {
    if (section.isEmpty) return section;

    var firstLetter = '';

    var index = 1;
    for (final letter in section.split('')) {
      if (RegExp(r'\w').hasMatch(letter)) {
        firstLetter = letter.toUpperCase();
        break;
      }
      index++;
    }

    return firstLetter + section.substring(index);
  }

  @override
  String convert(String stringToFormat) => transform(stringToFormat, 0, []);
}
