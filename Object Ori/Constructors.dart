import 'Dice.dart';

class Constructors {
  int id;
  String name;

  // long form constructor
  // Constructors(int id, String name) {
  //   this.id = id;
  //   this.name = name;
  // }

  // short form constructor
  // Constructors(this.id, this.name);

  // forwarding constructor
  // Constructors.yaza() : this(0, "yaza");

  Constructors.yaza() : this(); //named constructor

  // optional unnamed constructor
  Constructors({this.id = 100, this.name = "John"});

  @override
  String toString() {
    return "User(id : $id, name : $name)";
  }

  String toJson() {
    return '{"id":$id,"name":"$name"}';
  }
}

void main(List<String> args) {
  // final constr = Constructors(53, "Jane");
  // print(constr.toJson());

  // final yaza = Constructors.yaza();
  // print(yaza);

  final user = Constructors(id: 42, name: "Ray");
  print(user);

  final anonymousUser = Constructors.yaza();
  print(anonymousUser);
}
