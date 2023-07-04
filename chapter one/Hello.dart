//importing math functions
import 'dart:math';

void main() {
  // the num data type is applicable to int and double data types
  // dynamic datatype lets you assing any value to a variable

  var someone = 9.0;
  someone = 90;
  someone = 50;
  someone = 9.999;

  print(someone);

  // final is used when u do not know the value
  // of a variable at run time
  final hoursSinceMidNight = DateTime.now().hour;
  print(hoursSinceMidNight);

  //variables

  int num = 9;
  print(num.isEven);

  // rounding a number to the nearest integet
  print(3.595666.round());
  print(22 / 7);

  //print(22 ~/ 7); // integer division

  // math functions
  print(sin(45 * pi / 180));
  print(max(sqrt(2), pi / 2));
  print("\n");
  print(1 / sqrt(2));
  print(sin(45));

  dothis();
}

void dothis() {
  print("even odd");

  const int myAge = 21;
  double averageAge = 21;
  averageAge = 5.3;

  const testNumber = 6;
  const evenOdd = testNumber % 2;

  print(evenOdd);
}
