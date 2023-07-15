import "dart:io";

///find the nth term in the fibo sequence
int fib(int n) {
  if (n < 2) {
    // the base case
    return n;
  }

  return fib(n - 2) + fib(n - 1);
}

void main() {
  int n;

  print("What n do you want to lookup in the Fibonacci sequence ? ");
  String input = stdin.readLineSync()!;

  // handle errors
  try {
    n = int.parse(input);
  } on FormatException {
    print("That was not an integer.It could no be converted");
    return;
  }

  print("Fib($n) = ${fib(n)}");
}
