void main() {

  //Future(미래타입) 을 선언해 보자.
  Future<String> name = Future.value("텐코딩");
  Future<int> number = Future.value(100);
  Future<bool> isTrue = Future.value(true);

  print(name);
  print(number);
  print(isTrue);
  print("--------------");
  //Future 타입을 소화 시키는 방법
  //방법 1 - 코드를 동기적으로 처리하는 방법
  // print(await name);
  // print(await number);
  // print(await isTrue);

  //방법 2 - 콜백 메서드 활용 Future.then(); 함수를 사용할 수 있다.
  name.then((v) => print("Future type에서 값꺼내기 : $v"));
  number.then((value) => print("값 확인 : $value"));
  isTrue.then((value) => print("값 확인 : $value"));
  print("------------------------");
}