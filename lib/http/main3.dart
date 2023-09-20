import 'package:http/http.dart' as http;
import 'dart:convert';

void main() async{

  http.Response res = await fetchTodoList();
  String jsonArrayStr;
  List<Todo> todoList = [];
  if(res.statusCode ==200){
    print('통신성공');
    List<dynamic> listbody = json.decode(res.body);
    // for(var m in listbody) {
    //   Todo todo = Todo.fromJson(m);
    //   todoList.add(todo);
    // }
    print(todoList.toString());
    //추후 학습
    List<Todo> myTodo = listbody.map((e) => Todo.fromJson(e)).toList();
  }else{
    print('통신실패');
  }
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