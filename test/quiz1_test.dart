import 'package:quiz1/quiz1.dart';
import 'package:test/test.dart';

void main() {
  test('isLeap', () {
    expect(isLeap(2000), true);
    expect(isLeap(1997), false);
    expect(isLeap(1996), true);
    expect(isLeap(1900), false);
  });
  test('stringPreprocessing', () {
    String s1 =
        '"That\'s the password: \'PASSWORD 123\'!", cried the Special Agent.\nSo I fled.';
    expect(stringPreprocessing(s1).length, 12);
  });
  test('countOccurrences', () {
    String s1 =
        '"That\'s the password: \'PASSWORD 123\'!", cried the Special Agent.\nSo I fled.';
    var words = stringPreprocessing(s1);
    Map<String, int> map = {
      'that\'s': 1,
      'the': 2,
      'password': 2,
      '123': 1,
      'cried': 1,
      'special': 1,
      'agent': 1,
      'so': 1,
      'i': 1,
      'fled': 1
    };
    expect(countOccurrences(words), map);
  });
}
