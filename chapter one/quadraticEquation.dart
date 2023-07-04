import 'dart:math';

void main() {
  double a, b, c;
  a = 3.5;
  b = 7.23;
  c = 1.097;

  double root1 = ((-b + sqrt(pow(b, 2)) - 4 * a * c) / (2 * a));
  double root2 = ((-b - sqrt(pow(b, 2)) - 4 * a * c) / (2 * a));

  print(root1);
  print(root2);
}
