import 'dart:io';
import 'package:quiz1/quiz2.dart';

void main(List<String> arguments) {
  print('Enter a decimal number : ');
  int input = int.parse(stdin.readLineSync()!);
  List<String> result = decimalToSecretHandshake(input);
  print(result);
}
