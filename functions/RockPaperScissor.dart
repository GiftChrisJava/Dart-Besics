import "dart:io";
import "dart:math";

// get a player move via the keyboard
// if move in invalid, return quit!
String getPlayerMove() {
  print("Would you like (R)ock, (P)aper, (S)cissor ? ");
  String selection = stdin.readLineSync()!.toUpperCase();

  switch (selection) {
    case "R":
      return "Rock";
      break;
    case "P":
      return "Paper";
      break;
    case "S":
      return "Scissor";
      break;
    default:
      return "Quit";
  }
}

// return a random move
String getComputerMove() {
  Random rand = new Random(); // Random object
  int number = rand.nextInt(3);

  switch (number) {
    case 0:
      return "Rock";
      break;
    case 1:
      return "Paper";
      break;
    case 2:
      return "Scissor";
      break;

    default:
      break;
  }
  return "";
}

// determine the winner
String whoWon(String playerMove, String computerMove) {
  if (playerMove == computerMove) {
    return "Its a tie";
  } else if (playerMove == "Rock" && computerMove == "Scissor") {
    return "You win";
  } else if (playerMove == "Paper" && computerMove == "Rock") {
    return "You win";
  } else if (playerMove == "Scissor" && computerMove == "Paper") {
    return "You win";
  } else
    return "You Lost";
}

void main() {
  while (true) {
    // main game loop infinite
    print("ROck, Paper, Scissors Shoot");
    String playerMove = getPlayerMove();

    if (playerMove == "Quit") {
      return; // exit the loop
    }

    print("You played $playerMove");

    String computerMove = getComputerMove();
    print("Computer played $computerMove");

    print(whoWon(playerMove, computerMove));
  }
}
