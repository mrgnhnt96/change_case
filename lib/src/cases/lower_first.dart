import 'package:change_case/src/change_case_helper.dart';

/// {@macro change_case.type.lower_first}
class LowerFirst extends ChangeCaseHelper {
  @override
  String get deliminator => throw UnimplementedError();

  @override
  String transform(String section, int index, List<String> parts) {
    if (section.isEmpty) return section;

    final string = section.substring(0, 1).toLowerCase() + section.substring(1);

    return string;
  }

  @override
  String convert(String stringToFormat) => transform(stringToFormat, 0, []);
}
