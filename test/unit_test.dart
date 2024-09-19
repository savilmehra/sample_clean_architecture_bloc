import 'package:flutter_test/flutter_test.dart';
import 'package:sampleapp/utils/text_validaters/TextValidators.dart';

void main() {
  test('Sum function should calculate the sum of two integers', () {
    // Setup phase
    String a = "sadk@jj";
    String b = "sadk@gmail.com";
    final res = EmailValidator().validate(a);
    final res2 = EmailValidator().validate(b);

    expect(res, false);
    expect(res2, true);
    // Execution phase and assertions
  });
}

class Singleton {
 static final Singleton instance=Singleton._internal();

 factory Singleton()
 {
   return instance;
 }
  Singleton._internal();
}
