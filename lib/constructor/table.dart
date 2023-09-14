class Table {

  String? name;
  String? color;

  //이름이 있는 매개변수를 설정 할 수 있다.
  //이름이 있는 매개변수는 중괄호 {} 선언해서 가독성을 높일 수 있다.
  Table({this.name, this.color});

  void display() {
    print('Name : $name');
    print('Color : $color');
  }
} //end of table

void main() {

  //Table table1 = Table('이케아 의자', '블랙');
  Table table1 = Table(color: '레드', name: '게이밍 의자');
  table1.display();

}