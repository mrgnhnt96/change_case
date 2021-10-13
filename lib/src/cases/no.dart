import 'package:change_case/src/change_case_helper.dart';

/// {@macro change_case.type.no}
class No extends ChangeCaseHelper {
  @override
  String get deliminator => ' ';

  @override
  String transform(String section, int index, List<String> parts) =>
      section.toLowerCase();
}
