bool isLeap(int year) {
  if (year % 400 == 0 && year % 100 == 0) {
    return true;
  } else if (year % 4 == 0 && year % 100 != 0) {
    return true;
  } else {
    return false;
  }
}

List<String> stringPreprocessing(String phrase) {
  phrase = phrase.toLowerCase();
  phrase = phrase.trim();
  String first = phrase.substring(0, 1);
  if (first == "'") phrase = phrase.substring(1);
  phrase = phrase.replaceAll('\\n', ' ');
  phrase = phrase.replaceAll(RegExp(r"[\t\n\r]"), ' ');
  phrase = phrase.replaceAll(RegExp(r"[^\w\d'\s]+"),
      ''); //regex is used to match everything except w: word, d': "'", s: white space.
  phrase = phrase.replaceAll(RegExp(r"'[\s]+"), ' ');
  phrase = phrase.replaceAll(RegExp(r"[\s]'+"), ' ');
  List<String> words = phrase.split(" ");
  return words;
}

Map<String, int> countOccurrences(List<String> words) {
  Map<String, int> map = {};
  for (var word in words) {
    map[word] = map.containsKey(word) ? (map[word]! + 1) : (1);
  }
  return map;
}

void occurrenceseInPhrase(String phrase) {
  List<String> words = stringPreprocessing(phrase);
  print(countOccurrences(words));
}
