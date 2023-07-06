const global = "hello, world"; // global variable
void main() {
  // local variable
  const local = "Hello, main";

  if (2 > 1) {
    // scope of this variable ends in this block
    const insideIf = "Hello, anybody";

    print(global);
    print(local);
    print(insideIf);
  }

  // ternary operator
  print((2 > 1) ? "2 is greater than 1" : "not the case");

  // switch
  var num = 2;

  switch (num) {
    case 0:
      print("zero");
      break;

    case 1:
      print("One");
      break;

    case 2:
      print("Two");
    // break;

    default:
      print("Not available");
  }
}
