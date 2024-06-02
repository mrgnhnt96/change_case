import 'package:change_case/src/change_case_helper.dart';

/// {@macro change_case.type.upper_first}
class UpperFirst extends ChangeCaseHelper {
  @override
  String get deliminator => throw UnimplementedError();

  @override
  String transform(String section, int index) {
    for (var i = 0; i < section.length; i++) {
      if (RegExp(r'\w').hasMatch(section[i])) {
        return section[i].toUpperCase() + section.substring(i + 1);
      }
    }
    return section;
  }

  @override
  String convert(String stringToFormat) => transform(stringToFormat, 0);
}
