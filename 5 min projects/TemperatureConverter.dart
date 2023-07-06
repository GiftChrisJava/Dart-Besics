import "dart:io";

void main() {
  print("A) Convert Celsius to Fahrenheit\nB) Covert Fahrenhiet to Celsius");
  String selection;

  do {
    selection = stdin.readLineSync()!.toUpperCase();
  } while (selection != "A" && selection != "B");

  print("Enter starting temperature");
  String temperature = stdin.readLineSync()!;
  int temp = int.parse(temperature);

  switch (selection) {
    case "A":
      print("$temp degrees celsius is ${temp * 1.8 + 32} Fahreinhiet");
      break;

    case "B":
      print("$temp Fahreinhiet is ${(temp - 32) / 1.8} degrees Celsius");
      break;

    default:
      break;
  }
}
