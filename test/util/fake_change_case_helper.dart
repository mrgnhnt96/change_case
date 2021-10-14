import 'package:change_case/src/change_case_helper.dart';

class FakeCase extends ChangeCaseHelper {
  @override
  String get deliminator => throw UnimplementedError();

  @override
  String transform(String section, int index) {
    throw UnimplementedError();
  }
}
