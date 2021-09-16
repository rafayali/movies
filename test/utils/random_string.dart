import 'dart:math';

String randomString(int length) {
  var rand = Random();
  var codeUnits = List.generate(length, (index) {
    return rand.nextInt(33) + 89;
  });

  return String.fromCharCodes(codeUnits);
}

int randomInt(int length) {
  var rand = Random();
  return rand.nextInt(pow(10, length).ceil());
}
