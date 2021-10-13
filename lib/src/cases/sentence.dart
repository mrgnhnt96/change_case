import 'package:change_case/src/cases/upper_first.dart';
import 'package:change_case/src/change_case_helper.dart';

/// {@macro change_case.type.sentence}
class Sentence extends ChangeCaseHelper {
  @override
  String get deliminator => ' ';

  @override
  String transform(String section, int index, List<String> parts) {
    section = section.toLowerCase();

    if (index == 0) section = UpperFirst().transform(section, index, parts);

    return section;
  }

  @override
  String convert(String stringToFormat) {
    return super.convert(stringToFormat.trim());
  }
}
