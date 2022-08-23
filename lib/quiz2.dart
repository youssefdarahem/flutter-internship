List<String> decimalToSecretHandshake(int decimal) {
  List<String> secretHandshake = [
    'wink',
    'double blink',
    'close your eyes',
    'jump'
  ];
  List<String> result = [];
  // convert from decimal to binary
  String binary = decimal.toRadixString(2);
  print('binary : $binary');

  // reverse the binary string  in order to be able to parse to the desired string
  var reversed = binary.split('').reversed.toList();

  // check if longer length is less than five then no need to reverse the operations
  if (reversed.length < 5) {
    for (var i = 0; i < reversed.length; i++) {
      if (reversed[i] == '1') {
        result.add(secretHandshake[i]);
      }
    }
    //other wise reverse the result list if the fifth bit is 1
  } else {
    for (var i = 0; i < 4; i++) {
      if (reversed[i] == '1') {
        result.add(secretHandshake[i]);
      }
    }
    if (reversed[4] == '1') {
      result = result.reversed.toList();
    }
  }

  return result;
}
