import 'package:quiz1/quiz1.dart' as quiz1;
import 'dart:io';

void main(List<String> arguments) {
  //Excersie A
  print('Enter a year : ');
  int year = int.parse(stdin.readLineSync()!);
  bool isLeap = quiz1.isLeap(year);
  isLeap ? print('$year is a Leap year') : print('$year is Not a Leap year!');
}
