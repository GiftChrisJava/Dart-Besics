import 'dart:math';

// returns a list with 2 randomly
// generated birthday in it
List<DateTime> generateBirthDays() {
  List<DateTime> birthdays = [];

  Random rand = new Random();

  const int YEAR = 1987;
  const int NUM_MONTHS = 12;
  const int NUM_DAYS = 28; // for simplicity
  const int BIRTHDAYS_TO_GENERATE = 23;

  for (int i = 0; i < BIRTHDAYS_TO_GENERATE; i++) {
    // generate a random month
    int randMonth = rand.nextInt(NUM_MONTHS) + 1;

    // generate a random day
    int randDay = rand.nextInt(NUM_DAYS) + 1;

    // add birthday object to list
    birthdays.add(new DateTime(YEAR, randMonth, randDay));
  }

  return birthdays;
}

/// returns true if [1] has duplicate elements
/// otherwise returns false
bool contaisDuplicates(List myList) {
  for (int i = 0; i < myList.length; i++) {
    print(myList.skip(i + 1));

    if (myList.skip(i + 1).contains(myList[i])) {
      return true;
    }
  }

  return false;
}

// main
void main() {
  const int ITERATIONS = 10;
  List<DateTime> birthdays;
  int matches = 0;

  for (int i = 0; i < ITERATIONS; i++) {
    birthdays = generateBirthDays();

    if (contaisDuplicates(birthdays)) {
      matches++;
    }
  }

  print(
      "There were at least two people with the same birthday ${(matches / ITERATIONS) * 100}% ofthe time.");
}
