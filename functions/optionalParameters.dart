// repetitions is optional
void repeat(String word, [repetitions = 5]) {
  if (repetitions != null) {
    for (int i = 0; i < repetitions; i++) {
      print(word);
    }
  } else {
    print(word);
  }
}

// void repeat(String word, [int repetitions = 1, String exclamation = ""]) {
//   for (int i = 0; i < repetitions; i++) {
//     print(word + exclamation); // the + operator can concatenate strings
//   }
// }

main() {
  repeat("Halla");
  // repeat("Halla", 10);
}
