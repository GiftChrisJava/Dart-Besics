import "dart:math";

void main() {
  const int ITERATIONS = 100000;
  double series = 1.0;
  double denominator = 3.0;
  double negative = -1.0;

  for (int i = 0; i < ITERATIONS; i++) {
    series += (negative * (1 / denominator));
    denominator += 2.0;
    negative += -1.0;
  }

  double pi = 4 * series;
  print("We calculated pi as $pi");
}
