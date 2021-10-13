import 'package:change_case/src/change_case_helper.dart';

/// {@macro change_case.type.pascal}
class Pascal extends ChangeCaseHelper {
  @override
  String get deliminator => '';

  @override
  String transform(String section, int index, List<String> parts) {
    final firstLetter = section.substring(0, 1);
    final lowerLetters = section.substring(1).toLowerCase();

    return firstLetter.toUpperCase() + lowerLetters;
  }
}
