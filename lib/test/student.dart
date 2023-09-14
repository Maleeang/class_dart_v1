import 'package:flutter_v1/test/subway.dart';

class Student {
  String name;
  int money;

  Student(this.name, this.money);

  void takeSubway(Subway takeSubway) {
    this.money -= 1300;
    takeSubway.take(1300);
  }

}