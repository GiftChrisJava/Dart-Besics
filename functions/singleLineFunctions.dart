void main(List<String> args) {
  sayHello("Jad");
  print(multiply(5, 5));
  print(luckyNumber());
}

sayHello(String name) => print("Hello, $name");
int multiply(int num1, int num2) => num1 * num2;
int luckyNumber() => 7;
