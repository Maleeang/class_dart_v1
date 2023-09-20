import 'package:http/http.dart' as http;
import 'dart:convert';

void main() async{

  String jsonArrStr = '''
    [
    {
      "userId": 1,
      "id": 1,
      "title": "delectus aut autem",
      "completed": false
    },
    {
      "userId": 1,
      "id": 2,
      "title": "quis ut nam facilis et officia qui",
      "completed": false
    }
    ]
  ''';
  //json.decode(String) --> Map<String, dynamic> jsonObject
  //json.decode(String) --> List<dynamic> jsonArray
  print(json.decode(jsonArrStr).runtimeType);
  List<dynamic> listBody1 = json.decode(jsonArrStr);
  print(listBody1[0]);
  List<Todo> todos = [];
  for(var m in listBody1) {
    Todo letTodo = Todo.fromJson(m);
    todos.add(letTodo);
  }
  print(todos.length);
  print(todos[0].title);
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

Future<http.Response> fetchTodoList() async{
  const url = "https://jsonplaceholder.typicode.com/todos";
  final response = await http.get(Uri.parse(url));
  return response;
}