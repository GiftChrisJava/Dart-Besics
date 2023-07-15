void main() {
  talkAbout("Hello", exclame);
  talkAbout("TikTok", manyTalk);
}

String exclame(String toExclame) => toExclame + "!";

void talkAbout(String toShout, shoutFunc) {
  print(shoutFunc(toShout));
}

String manyTalk(String toMany) {
  String allTogether = "";

  for (int i = 0; i < 10; i++) {
    allTogether = allTogether + toMany;
  }
  return allTogether;
}
