import 'package:change_case/src/cases/pascal.dart';
import 'package:change_case/src/change_case_helper.dart';

/// {@macro change_case.type.camel}
class Camel extends ChangeCaseHelper {
  @override
  String get deliminator => '';

  @override
  String transform(String section, int index, List<String> parts) {
    if (index == 0) return section.toLowerCase();

    return Pascal().transform(section, index, parts);
  }
}
