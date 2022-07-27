import 'package:quiz1/quiz1.dart' as quiz1;
import 'dart:io';

void main(List<String> arguments) {
  print('Enter 0 for Excersise(A) and 1 for Excersise(B)');
  int input = int.parse(stdin.readLineSync()!);
  if (input == 0) {
    //Excersie A
    print('Enter a year : ');
    int year = int.parse(stdin.readLineSync()!);
    bool isLeap = quiz1.isLeap(year);
    isLeap ? print('$year is a Leap year') : print('$year is Not a Leap year!');
  } else {
    // Excersie B
    print('Enter a phrase : ');
    String phrase = stdin.readLineSync()!;
    quiz1.occurrenceseInPhrase(phrase);
  }
}
