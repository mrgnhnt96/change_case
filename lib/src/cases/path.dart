import 'package:change_case/src/change_case_helper.dart';

/// {@macro change_case.type.path}
class Path extends ChangeCaseHelper {
  /// {@macro change_case.type.path}
  Path([String? separator]) : _separator = separator ?? '/';

  final String _separator;
  @override
  String get deliminator => _separator;

  @override
  String transform(String section, int index) => section.toLowerCase();
}
