import "dart:math";

void main() {
  const int TRIALS = 1000000;
  int correct = 0;
  Random rand = new Random();

  for (int i = 0; i < TRIALS; i++) {
    int randomDoor = rand.nextInt(3) + 1; // radom door 1 - 3
    int guess = 1; // we guess 1 door
    int eliminated;

    if (randomDoor == 2) {
      eliminated = 3; // eleminated door 3
    } else if (randomDoor == 3) {
      eliminated = 2; // eliminated door 2
    } else {
      // randomDoor must be 1
      eliminated = rand.nextInt(2) + 2; // 2 or 3 eliminated
    }

    if (eliminated == 2) {
      guess = 3; // switch our guess to door 3
    } else if (eliminated == 3) {
      guess = 2; // switch our guess to door 2
    }

    if (guess == randomDoor) {
      correct++;
    }
  }

  print("The percentage of correct guessed was ${(correct / TRIALS) * 100}%");
}
