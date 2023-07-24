import "dart:io";

// calculate the score of the [cards] list
int calculateScore(List cards) {
  int score = 0;
  bool hasAce = false;

  for (var card in cards) {
    // card can b int or string ..var
    if (card is int) {
      score += card;
    } else if (card == "A") {
      hasAce = true;
    } else {
      score += 10;
    }
  }

  if (hasAce) {
    if ((score + 11) > 21) {
      score += 1;
    } else {
      score += 11;
    }
  }

  return score;
}

// print everyones score and decks
void printStatus(playerCards, dealerCards) {
  print("\nPlayer's total is ${calculateScore(playerCards)}");
  print(playerCards);
  print("Dealer's total is ${calculateScore(dealerCards)}");
  print(dealerCards + "\n");
}

// main method
void main() {
  List deck = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A"];
  List playerCards = [], dealerCards = [];

  deck.shuffle();

  print("Dealer draws first card");
  dealerCards.add(deck.removeLast());

  print("Player receives two cards");
  playerCards.add(deck.removeLast());
  playerCards.add(deck.removeLast());

  printStatus(playerCards, dealerCards);

  // player decision loop
  while (true) {
    print("Do you want to (H)it, (S)tay, or (Q)uit?");
    String selection = stdin.readLineSync()!.toUpperCase();

    if (selection == "H") {
      playerCards.add(deck.removeLast());
      printStatus(playerCards, dealerCards);

      if (calculateScore(playerCards) > 21) {
        print("You busted!! You lose-");
        exit(0); // quits the program
      } else if (selection == "S") {
        break; // stop offering to hit, leave this loop
      } else if (selection == "Q") {
        exit(0);
      }
    }

    print("Dealer draws rest of cards");

    while (calculateScore(dealerCards) < 17) {
      dealerCards.add(deck.removeLast());
    }

    printStatus(playerCards, dealerCards);

    if (calculateScore(dealerCards) > 21) {
      print("Dealer busts, you win");
    } else if (calculateScore(dealerCards) > calculateScore(playerCards)) {
      print("Dealer wins");
    } else if (calculateScore(dealerCards) < calculateScore(playerCards)) {
      print("You wins");
    } else {
      print("It is a tie");
    }
  }
}
