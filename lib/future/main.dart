//await 키워드를 가지는 함수는 선언부에 async 를 선언 해주어야 한다.
void main() async {

  print("task 1 .........");
  var data1 = await fetchData(); //기대 값 : "2초 data" 문자열
  //실제 출력 값 : Instance of 'Future<String>'
  print(data1.runtimeType);
  print("data1 : $data1");
  print("task 2 .........");
  print("task 3 .........");

}

Future<String> fetchData() {
  // 2초 뒤에 실행되는 코드를 작성
  // return Future.delayed(const Duration(seconds: 2), () {
  //   return "2초 data";
  // });
  return Future.delayed(const Duration(seconds: 2), () => "2초 data");
}