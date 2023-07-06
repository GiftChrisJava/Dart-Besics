import "dart:math";
import "dart:io";

void main() {
  int guess;
  Random rand = new Random(); // create a random number gen
  int answer = rand.nextInt(4); // generate any # 0 - 99

  do {
    print("Enter your Guess : ");
    String temp = stdin.readLineSync()!; // read user input

    // convert the input to integer
    guess = int.parse(temp);

    if (guess < answer) {
      print("Too low");
    } else if (guess > answer) {
      print("Too high");
    }
  } while (guess != answer);

  print("You got it!!");
}
