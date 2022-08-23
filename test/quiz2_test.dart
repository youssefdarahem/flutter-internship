import 'package:quiz1/quiz2.dart';
import 'package:test/test.dart';

void main() {
  test('handshake', () {
    expect(decimalToSecretHandshake(19), ["double blink", "wink"]);
    expect(decimalToSecretHandshake(25), ["jump", "wink"]);
    expect(decimalToSecretHandshake(3), ["wink", "double blink"]);
    expect(decimalToSecretHandshake(10), ["double blink", "jump"]);
  });
}
