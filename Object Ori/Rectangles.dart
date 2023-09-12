class Rectangle {
  double _width = 0;
  double _height = 0;

  double get width {
    return _width;
  }

  double get hieght {
    return _height;
  }

  set width(double number) {
    if (number < 0) {
      print("Negative number entered");
      return;
    }

    _width = number;
  }

  set height(double number) {
    if (number < 0) {
      print("Negative number entered");
      return;
    }

    _height = number;
  }

  // calculate area
  double get area {
    return _height * _width;
  }
}
