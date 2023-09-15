import 'package:flutter/cupertino.dart';

abstract class Shape {
  double area(){
    return 0.0;
  }
}

//implements - 강제성이 있는 행동의 규약이다.
class Circle implements Shape {
  double radius;

  Circle(this.radius);

  @override
  double area() {
    return 3.14 * radius * radius;
  }
}

class Ractangle implements Shape {
  double width;
  double height;

  Ractangle(this.width, this.height);

  @override
  double area() {
    return width * height;
  }
}

void main(){
  List<Shape> shapes = [Circle(5.0), Ractangle(4.0, 5.0)];
  shapes.forEach((element) {
    print(element.area());
  });
}