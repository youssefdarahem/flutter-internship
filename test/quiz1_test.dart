import 'package:quiz1/quiz1.dart';
import 'package:test/test.dart';

void main() {
  test('calculate', () {
    expect(isLeap(2000), true);
    expect(isLeap(1997), false);
    expect(isLeap(1996), true);
    expect(isLeap(1900), false);
  });
}
