import 'package:change_case/src/change_case_helper.dart';

/// {@macro change_case.type.upper_first}
class UpperFirst extends ChangeCaseHelper {
  @override
  String get deliminator => throw UnimplementedError();

  @override
  String transform(String section, int index, List<String> parts) {
    return section.substring(0, 1).toUpperCase() + section.substring(1);
  }

  @override
  String convert(String stringToFormat) => transform(stringToFormat, 0, []);
}
