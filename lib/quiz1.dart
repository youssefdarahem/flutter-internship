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
