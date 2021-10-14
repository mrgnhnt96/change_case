import 'package:change_case/src/cases/capital.dart';
import 'package:change_case/src/change_case_helper.dart';

/// {@macro change_case.type.header}
class Header extends ChangeCaseHelper {
  @override
  String get deliminator => '-';

  @override
  String transform(String section, int index) {
    return Capital().transform(section, index);
  }
}
