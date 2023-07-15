import "dart:io";
import "dart:math";

Random rand = new Random(); // random object

// generate random integer
int randRondomGenerator() {
  return rand.nextInt(11);
}

// perform addition
int getSum(int num1, int num2) => num1 + num2;

// perform subtraction
int getDifference(int num1, int num2) => num1 - num2;

// perform multiplication
int getProduct(int num1, int num2) => num1 * num2;

// perform division
double getDivision(int num1, int num2) {
  while (num2 == 0) {
    num2 = randRondomGenerator();
  }

  return num1 / num2;
}

void main() {
  num correctAnswer = 0;
  int userAnswer, operand1, operand2, operation;
  int questionAttempted = 0, numCorrect = 0;

  while (true) {
    operation = rand.nextInt(4);
    operand1 = randRondomGenerator();
    operand2 = randRondomGenerator();

    switch (operation) {
      case 0: // addition question
        print("$operand1 + $operand2 = ");
        correctAnswer = getSum(operand1, operand2);
        break;

      case 1: // subtraction question
        print("$operand1 - $operand2 = ");
        correctAnswer = getDifference(operand1, operand2);
        break;

      case 2: // multiplication question
        print("$operand1 * $operand2 = ");
        correctAnswer = getProduct(operand1, operand2);
        break;

      case 3: // division question
        print("$operand1 / $operand2 = ");
        correctAnswer = getDivision(operand1, operand2);
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
