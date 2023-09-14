class Rectangle {
  double? width;
  double? height;

  Rectangle(this.width, this.height);

  void calculateArea() {
    print(width!*height!);
  }
}

class Circle {
  double radius;

  Circle(this.radius);

  void calculateArea(){
    print(3.14*radius*radius);
  }
}



void main() {
  Rectangle rectangle = Rectangle(3, 4);
  rectangle.calculateArea();

  Circle circle = Circle(5);
  circle.calculateArea();
}