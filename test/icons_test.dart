import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:movies_flutter/resources/resources.dart';

void main() {
  test('icons assets test', () {
    expect(File(Icons.icJpgAppIcon).existsSync(), isTrue);
    expect(File(Icons.icPngUser).existsSync(), isTrue);
  });
}
