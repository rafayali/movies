import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:movies_flutter/resources/resources.dart';

void main() {
  test('images assets test', () {
    expect(File(Images.imgSvgTmdbBlueSquare2).existsSync(), isTrue);
  });
}
