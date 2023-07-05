void main() {
  // multi-line string
  const bigString = '''
  you have a string 🎯
  that constains multiple ❤
  lines 
  by
  doing this. ''';

  print(bigString);

  //ignoring any spacial charecters
  const rawString = r"My name is \n Jone";
  print(rawString);

  print('I \u2764 Dart\u0021');
  print('I love \u{1F3AF}');
}
