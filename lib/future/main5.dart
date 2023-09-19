import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

void main() {
  //HTTP 요청 및 응답 처리를 만들어 보자.
  //https://jsonplaceholder.typicode.com/posts/10
  //https://jsonplaceholder.typicode.com/posts
  fetchPost().then((res) => print(res.body));
  fetchPostList().then((res) => print(res.body));
}

Future<http.Response> fetchPost() async{
  const url = 'https://jsonplaceholder.typicode.com/posts/10';
  var response = await http.get(Uri.parse(url));

  return response;
}

Future<http.Response> fetchPostList() async{
  const url = 'https://jsonplaceholder.typicode.com/posts';
  var response = await http.get(Uri.parse(url));

  return response;
}