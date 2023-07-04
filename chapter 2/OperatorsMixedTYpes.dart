void main() {
  const hourlyRate = 19.25;
  const hoursWorked = 10;

  //total cost will be  double
  const totalCost = hoursWorked * hourlyRate;

  print(totalCost);

  print(totalCost.toInt()); // conversion to int

  // another way of making totalCost an int
  //final totalCost = (hoursWorked * hourlyRate).toInt();

  const double actuallyDouble = 3;
  print(actuallyDouble);

  // ****  Downcasting ****
  num someNumber = 3;

  // casting it now
  final someInt = someNumber as int;

  print(someInt.isEven);

  //**** Optionally-typed ****
  dynamic myVar;
  myVar = 909;
  myVar = "rrfdd";
  myVar = ["d"];
  myVar = 'oky';
  print(myVar);
}
