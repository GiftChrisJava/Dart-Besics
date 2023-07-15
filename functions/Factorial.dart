import 'dart:io';

// calculate n! recursively
int factorial(int n) {
  // base case
  if (n <= 1) {
    return 1;
  }

  return n * factorial(n - 1);
}

// calculate n! using for loop
int factorial2(int n) {
  int total = 1;

  for (int i = n; i > 0; i--) {
    total *= i;
  }

  return total;
}

void main() {
  int n = 0;

  print("what factorial do you want to calculate ?");
  String input = stdin.readLineSync()!;

  try {
    n = int.parse(input);
  } on FormatException {
    print("That was not an integer");
    return;
  }

  if (n <= 0) {
    print("This is not a positive integer");
    return;
  }

  print("n! is ${factorial(n)} recursively calculated");
  print("n! is ${factorial2(n)} recursively calculated");
}
