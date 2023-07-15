import "dart:io";

// function to clear the screen
void clearScreen() {
  if (Platform.isWindows) {
    // For Windows-based systems
    final result = Process.runSync('cls', [], runInShell: true);
    if (result.stdout != null && result.stdout is List<int>) {
      stdout.add(result.stdout as List<int>);
    }
  } else {
    // For other platforms (Unix, Linux, macOS)
    print('\x1B[2J\x1B[0;0H');
  }
}

// call a method to get prayer move
String getPlayerMove() {
  clearScreen(); // clear the string

  print("Player 1, enter your move (R)ock, (P)aper, (S)cissors:");
  String selection = stdin.readLineSync()!.toUpperCase();

  switch (selection) {
    case "R":
      return "Rock";
      break;
    case "P":
      return "Paper";
      break;
    case "S":
      return "Scissors";
      break;
    default:
      return "Quit";
  }
}

// call a method to get prayer 2 move
String getPlayer2Move() {
  clearScreen(); // clear the string

  print("Player 2, enter your move (R)ock, (P)aper, (S)cissors:");
  String selection = stdin.readLineSync()!.toUpperCase();

  switch (selection) {
    case "R":
      return "Rock";
      break;
    case "P":
      return "Paper";
      break;
    case "S":
      return "Scissors";
      break;
    default:
      return "Quit";
  }
}

// determine the winner player1Move
String whoWon(String player1Move, String player2Move) {
  if (player1Move == player2Move) {
    return "Its a tie";
  } else if (player1Move == "Rock" && player2Move == "Scissor") {
    return "Prayer 1 wins!!";
  } else if (player1Move == "Paper" && player2Move == "Rock") {
    return "Prayer 1 wins";
  } else if (player1Move == "Scissor" && player2Move == "Paper") {
    return "Prayer 1 wins";
  } else
    return "Prayer 2 wins";
}

void main() {
  while (true) {
    // main game loop infinite
    print("ROck, Paper, Scissors Shoot");

    String player1Move = getPlayerMove();
    if (player1Move == "Quit") {
      return; // exit the loop
    }

    String player2Move = getPlayer2Move();
    if (player2Move == "Quit") {
      return; // exit the loop
    }

    // clear the screen
    clearScreen();

    print("Player 1 played $player1Move");
    print("Player 2 played $player2Move");

    print(whoWon(player1Move, player2Move));
  }
}
