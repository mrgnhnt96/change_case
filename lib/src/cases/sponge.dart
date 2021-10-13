import 'dart:math';

import 'package:change_case/src/change_case_helper.dart';

/// {@macro change_case.type.sponge}
class Sponge extends ChangeCaseHelper {
  @override
  String get deliminator => throw UnimplementedError();

  @override
  String transform(String section, int index, List<String> parts) {
    final buffer = StringBuffer();

    final rand = Random();

    for (final letter in section.split('')) {
      final randNum = rand.nextInt(50);
      if (randNum > 25) {
        buffer.write(letter.toLowerCase());
        continue;
      }
      buffer.write(letter.toUpperCase());
    }

    return '$buffer';
  }

  @override
  String convert(String stringToFormat) => transform(stringToFormat, 0, []);
}
