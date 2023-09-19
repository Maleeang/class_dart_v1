import 'dart:convert';
import 'package:http/http.dart' as http;

void main() async{

/*  String jsonStr = '''
  {
    "id": 1,
    "name": "Leanne Graham",
    "username": "Bret",
    "email": "Sincere@april.biz",
    "address": {
    "street": "Kulas Light",
    "suite": "Apt. 556",
    "city": "Gwenborough",
    "zipcode": "92998-3874",
    "geo": {
    "lat": "-37.3159",
    "lng": "81.1496"
    }
    },
    "phone": "1-770-736-8031 x56442",
    "website": "hildegard.org",
    "company": {
      "name": "Romaguera-Crona",
      "catchPhrase": "Multi-layered client-server neural-net",
      "bs": "harness real-time e-markets"
    }
  }
  ''';*/
  String jsonStr;
  http.Response response = await fetchPost();
  jsonStr = response.body;
  print(jsonStr);
  Map<String, dynamic> jsonMap = json.decode(jsonStr);
  User myUser = User.fromJson(jsonMap);
  print(myUser.company);
  print(myUser.name);
  print(myUser.address.city);
  print(myUser.address.geo.lng);

}

class User {
  int id;
  String name;
  String username;
  String email;

  String phone;
  String website;

  Address address;
  Company company;

  User.fromJson(Map<String, dynamic> json) : id = json["id"], name = json["name"],
        username = json["username"], email= json["email"], phone=json["phone"], website=json["website"], address = Address.formJson(json["address"]), company = Company.fromJson(json["company"]);
}

class Address {
  String street;
  String suite;
  String city;
  String zipcode;
  Geo geo;

  Address.formJson(Map<String, dynamic> json) : street=json["street"], suite=json["suite"],
  city=json["city"], zipcode=json["zipcode"], geo = Geo.fromJson(json["geo"]);
}

class Geo {
  String lat;
  String lng;

  Geo.fromJson(Map<String, dynamic> json) : lat = json["lat"], lng = json["lng"];
}

class Company {
  String name;
  String catchPhrase;
  String bs;

  Company.fromJson(Map<String, dynamic> json) : name = json["name"], catchPhrase=json["catchPhrase"],
  bs = json["bs"];
}

Future<http.Response> fetchPost() async{
  String url = "https://jsonplaceholder.typicode.com/users/1";
  var response = await http.get(Uri.parse(url));
  return response;
}