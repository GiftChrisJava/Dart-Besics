void main() {
  List greetings = ["hello", "Hi", "mean", "How"];

  for (String item in greetings) {
    print(item);
  }

  List numbers = [1, 2, 3];
  numbers.add(5);
  print(numbers);

  numbers.remove(1); // takes in an element
  print(numbers);

  print(numbers.contains(2));

  // list generics
  List<String> myStrings = ["strawberry", "lavender", "aqua", "violet"];

  // a list of list
  List<List<int>> myListOfLists = [
    [1, 2, 3],
    [4, 5, 6]
  ];

  // list object
  // List<int> numss = new List<int>();
}
