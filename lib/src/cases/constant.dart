import 'package:change_case/src/change_case_helper.dart';

/// {@macro change_case.type.constant}
class Constant extends ChangeCaseHelper {
  @override
  String get deliminator => '_';

  @override
  String transform(String section, int index, List<String> parts) =>
      section.toUpperCase();
}
