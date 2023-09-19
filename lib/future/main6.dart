import 'dart:convert';

void main() {
  //여러 줄의 문자열
  String jsonStr = '''
    {
      "userId": 1,
      "id": 1,
      "title": "delectus aut autem",
      "completed": false
    }
  ''';
  //1 단계
  //JSON 문자열 형식을 Map 구조로 파싱해보자.
  print('jsonMap : ${json.decode(jsonStr).runtimeType}');
  print(json.decode(jsonStr)); //json.decode() 메서드를 사용해서 Map구조로 변환된 결과
  Map<String, dynamic> jsonMap = json.decode(jsonStr);
  jsonMap.forEach((key, value) {
    // print("key : $key");
    // print("value : $value");
    print("$key : $value");
  });

  Todo myTodo = Todo.fromJson(jsonMap);
  print(myTodo.userId);
  print(myTodo.id);
  print(myTodo.title);
  print(myTodo.completed);
}

class Todo {
  int userId;
  int id;
  String title;
  bool completed;
  //기본생성자
  Todo(this.userId, this.id, this.title, this.completed);
  //명명된 생성자
  Todo.fromJson(Map<String, dynamic> json)
      : userId = json["userId"], id = json["id"], title = json["title"], completed = json["completed"];

}