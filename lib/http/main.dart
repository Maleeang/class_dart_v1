import 'package:http/http.dart' as http;
import 'dart:convert';

void main() async{
  Map<String, String> header = {};
  var res = await fetchTodo();
  Todo? todo;

  if(res.statusCode == 200) {
    print('통신성공');
    print(res.headers.runtimeType);
    print(res.body.runtimeType);
    header = res.headers;
    Map<String, dynamic> httpBody = json.decode(res.body);
    print(httpBody.toString());
    todo = Todo.fromJson(httpBody);

  } else {
    print("통신실패");
  }
  print('-----------------------------');

  print(todo.toString());
}

class Todo {
  final int userId;
  final int id;
  final String title;
  final bool completed;

  Todo({required this.userId, required this.id, required this.title, required this.completed});

  Todo.fromJson(Map<String, dynamic> map) : userId = map["userId"], id = map["id"], title = map["title"], completed = map["completed"];

  @override
  String toString() {
    return "userId : $userId, id : $id, title : $title, completed : $completed";
  }
}

Future<http.Response> fetchTodo() async{
  const url = "https://jsonplaceholder.typicode.com/todos/1";
  final response = await http.get(Uri.parse(url));
  return response;
}