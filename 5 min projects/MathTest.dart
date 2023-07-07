import "dart:math";
import "dart:io";

void main() {
  Random rand = new Random();
  int correctAnswer = 0;
  int userAnswer, operand1, operand2, operation;
  int questionAttempted = 0, numCorrect = 0;

  while (true) {
    operation = rand.nextInt(3); // 0 or 1 or 2
    operand1 = rand.nextInt(11); // 0 to 10
    operand2 = rand.nextInt(11);

    switch (operation) {
      case 0: // addition question
        print("$operand1 + $operand2 = ");
        correctAnswer = operand1 + operand2;
        break;

      case 1: // subtraction question
        print("$operand1 - $operand2 = ");
        correctAnswer = operand1 - operand2;
        break;

      case 2: // multiplication question
        print("$operand1 * $operand2 = ");
        correctAnswer = operand1 * operand2;
        break;

      default:
        break;
    }

    String inTemp = stdin.readLineSync()!;

    try {
      userAnswer = int.parse(inTemp);
    } on FormatException {
      // could not convrt
      print("Thanks for Playing");
      print("You got $numCorrect out of $questionAttempted correct");
      break;
    }

    if (userAnswer == correctAnswer) {
      numCorrect++;
      print("Correct!!");
    } else {
      print("Wrong");
    }

    questionAttempted++;
  }
}
