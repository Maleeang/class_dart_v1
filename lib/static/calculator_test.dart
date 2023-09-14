class Calculator {
  int total = 100;

  static int add(int a, int b) {
    //정적 메서드 안에서는 멤버 변수(객체 생성 이후에 사용 될 변수)를 사용할 수 없다
    //total += 1;
    return a + b;
  }

  static int multiply(int a, int b) {
    return a * b;
  }
}

void main() {
  int result1 = Calculator.add(10, 10);
  print(result1);

  int result2 = Calculator.multiply(10, 10);
  print(result2);
}