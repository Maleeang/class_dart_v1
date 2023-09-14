class Employee {
  String? name;
  int? empno;
  static int number = 0;

  Employee(String name) {
    this.name = name;
    number++;
    empno=number;
  }

  //함수는 - 독립적인 일련에 코드의 묶음 이다.
  //메서드는 멤버 변수를 활용해서 기능을 구현한다.
  void display() {
    print('이름 : $name');
    print('사원 번호 : $empno');
  }
}

void main() {
  //제약 조건
  //Employee 클래스 안에 사원 번호 데이터를 받는 변수를 선언 하시오
  //단, Employee가 인스턴스화 되면 사원 번호는 자동으로 1 씩 증가 할 수 있도록
  //만들어 보세요
  Employee employee1 = Employee('홍길동');
  Employee employee2 = Employee('물곰');
  Employee employee3 = Employee('고구마');

  employee1.display();
  employee2.display();
  employee3.display();
}