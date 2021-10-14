import 'package:change_case/src/cases/upper_first.dart';
import 'package:change_case/src/change_case_helper.dart';

/// {@macro change_case.type.capital}
class Capital extends ChangeCaseHelper {
  @override
  String get deliminator => ' ';

  @override
  String transform(String section, int index) {
    return UpperFirst().transform(section.toLowerCase(), index);
  }
}
