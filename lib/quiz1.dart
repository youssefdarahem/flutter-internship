bool isLeap(int year) {
  // if divisable by 400 and 100 then it is a leap year
  if (year % 400 == 0 && year % 100 == 0) {
    return true;
    // if divisable by 4 but not by a 100 then also a leap year
  } else if (year % 4 == 0 && year % 100 != 0) {
    return true;
    // else not leap
  } else {
    return false;
  }
}

// this function removes all the unnecessary characters in the phrase.
List<String> stringPreprocessing(String phrase) {
  // first turning them all to lower case.
  phrase = phrase.toLowerCase();
  // then removing all the whitespaces from both ends.
  phrase = phrase.trim();
  // checks if the phrase starts with a ' to remove it.
  String first = phrase.substring(0, 1);
  if (first == "'") phrase = phrase.substring(1);
  // this removes all the '\n' becase in some texts it is not recognized as a new line rather as '\n' character.
  phrase = phrase.replaceAll('\\n', ' ');
  // this replaces all the new lines and the tabs whith a white space.
  phrase = phrase.replaceAll(RegExp(r"[\t\n\r]"), ' ');
  // this selcetes any characters such as ",- and removes them from the string.
  phrase = phrase.replaceAll(RegExp(r"[^\w\d'\s]+"), '');
  // removes the single quotation which is followed by a space.
  phrase = phrase.replaceAll(RegExp(r"'[\s]+"), ' ');
  // removes the single quotation which is trailed by a space.
  phrase = phrase.replaceAll(RegExp(r"[\s]'+"), ' ');
  List<String> words = phrase.split(" ");
  return words;
}

// countes the occurances in the preprocessed sentence.
Map<String, int> countOccurrences(List<String> words) {
  Map<String, int> map = {};
  for (var word in words) {
    map[word] = map.containsKey(word) ? (map[word]! + 1) : (1);
  }
  return map;
}

// combines both the above functions.
void occurrenceseInPhrase(String phrase) {
  List<String> words = stringPreprocessing(phrase);
  print(countOccurrences(words));
}
