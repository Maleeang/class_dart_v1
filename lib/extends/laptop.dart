//Laptop 클래스 설계 - 멤버 데이터 name, color - 생성자 정의
class Laptop {

  String name;
  String color;

  Laptop(this.name, this.color);

  @override
  String toString() {
    return 'name : $name, color : $color';
  }
}
//MacBook 클래스 설계
class MacBook extends Laptop{

  MacBook(name, color) : super(name, color) {
    print('초기화 이니셜라이즈에 body를 붙여서 코드를 추가 할 수 있다.');
  }

}

void main() {
  MacBook macBook = MacBook('에플', '그레이');
  print(macBook.toString());
}