import 'package:change_case/src/change_case_helper.dart';

/// {@macro change_case.type.swap}
class Swap extends ChangeCaseHelper {
  @override
  String get deliminator => '_';

  @override
  String transform(String section, int index, List<String> parts) {
    final buffer = StringBuffer();

    for (final letter in section.split('')) {
      final lower = letter.toLowerCase();
      final isLowerCase = letter == lower;

      if (isLowerCase) {
        buffer.write(letter.toUpperCase());
        continue;
      }
      buffer.write(letter.toLowerCase());
    }

    return '$buffer';
  }

  @override
  String convert(String stringToFormat) => transform(stringToFormat, 0, []);
}
