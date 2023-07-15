void talkAbout(String toShout, shoutFunction) {
  print(shoutFunction(toShout));
}

// defined functions inside the main function
void main() {
  // returns a string with an exclamation mark
  String exclame(String toExclame) => toExclame + "!";

  String manyTalk(String toMany) {
    String allTogether = "";
    for (int i = 0; i < 10; i++) {
      allTogether += toMany;
    }

    return allTogether;
  }

  talkAbout("Hello", exclame);
  talkAbout("TicToc", manyTalk);

  // define an anonymous function
  talkAbout("Wow", (String s) => s.toUpperCase());
}
