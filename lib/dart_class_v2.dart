void main() {

  Rectangle rectangle = Rectangle();
/*  rectangle.width = 4;
  rectangle.height = 5;*/
  try{
    double result = rectangle.calculateArea();
    print('직사각형의 넓이는 : $result');
  } catch(e){
    print('에러 확인 : $e');
  }

}

class Rectangle {
  double? width;
  double? height;

  double calculateArea(){
    return width!*height!; //개발자가 명시적으로 ! null이 아니다라고 명시할 수 있음.
  }
}