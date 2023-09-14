void main(){

  Person personKim = Person();
  personKim.myName = "홍길동";
  personKim.phone = '010-1234-1234';
  personKim.age = 20;
  personKim.dispalyInfo();

}

//클래스 설계 하기
class Person {
  //dart 2.2 버전 이후 부터 진행
  //Nullable 타입에 이해
  //dart 이전 버전에서는 모든 변수가 null이 아닌 값으로 셋팅되었다.
  //명시적으로 null을 허용하는 여부를 표현할 수 있는 타입이 Nullable타입이다.
  //String != String?
  String? myName;
  String? phone;
  int? age;

  void dispalyInfo(){
    print('Person name : $myName');
    print('Phone number : $phone');
    print('age : $age');
  }

} //end of Person