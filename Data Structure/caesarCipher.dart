import "dart:io";

///return a map that maps letters to others letters
///13 places away in thr English alphabet
Map<String, String> getROT13Map() {
  const List<String> ALPHABET = const [
    "a",
    "b",
    "c",
    "d",
    "e",
    "f",
    "g",
    "h",
    "i",
    "j",
    "k",
    "l",
    "m",
    "n",
    "o",
    "p",
    "q",
    "r",
    "s",
    "t",
    "u",
    "v",
    "w",
    "x",
    "y",
    "z"
  ];

  const int CHANGE = 13; // how many places to move letters

  Map<String, String> code = {}; // empty string map

  for (int i = 0; i < ALPHABET.length; i++) {
    if (i < CHANGE) {
      // move first 13 letters 13 places forward A=N
      code[ALPHABET[i]] = ALPHABET[i + CHANGE];
      code[ALPHABET[i].toUpperCase()] = ALPHABET[i + CHANGE].toUpperCase();
    } else {
      // last 13 letters go 13 places back
      code[ALPHABET[i]] = ALPHABET[i - CHANGE];
      code[ALPHABET[i].toUpperCase()] = ALPHABET[i - CHANGE].toUpperCase();
    }
  }

  return code;
}

void main() {
  Map<String, String> secretCode = getROT13Map();

  print("Enter the text you want to encrypt");
  String original = stdin.readLineSync()!;

  String changed = "";

  for (String charecter in original.split("")) {
    if (secretCode.containsKey(charecter)) {
      changed += secretCode[charecter].toString();
    } else {
      changed += charecter;
    }
  }

  print(changed);
}
