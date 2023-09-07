class User {
  int id = 0;
  String name = "";

  @override
  String toString() {
    return "User(id : $id, name : $name)";
  }

  String toJson() {
    return '{"id":$id,"name":"$name"}';
  }
}

class MyPassword {
  String _plaintext = "123fjd";

  String get plainText => _plaintext;

  String get obfuscated {
    final lenght = _plaintext.length;
    return "*" * lenght;
  }

  // setters
  set plainText(String text) {
    if (text.length < 6) {
      print("password must have 6 or more charecters");
      return;
    }

    _plaintext = text;
  }
}

void main(List<String> args) {
  // created an object of the Use class new is optional in dart
  final user = User();
  user.id = 20;
  user.name = "Mercy";

  print(user.toString());
  print(user.toJson());

  final mypassword = MyPassword();

  final text = mypassword.obfuscated;
  print(text);
}
