void main(List<String> args) {
  Set blankSet = new Set(); //empty set
  Set elements = new Set.from(["wind", "water", "fire"]);
  elements.add("fire");
  elements.addAll(["thunder", "lighting"]);
  elements.remove("water");

  print(elements);

  Set<String> jerryColors = new Set.from(["blue", "red", "green"]);
  Set<String> maryColors = new Set.from(["red", "green", "yellow"]);

  // set intercection
  Set<String> bothColors = jerryColors.intersection(maryColors);

  for (String color in bothColors) {
    print(color);
  }
}
