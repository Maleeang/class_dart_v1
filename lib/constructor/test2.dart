class Bus {
  int number;
  int profit = 0;

  Bus(this.number);

  void takeMoney() {
    profit += 1300;
  }
}

class Student {

  int money;

  Student(this.money);

  void getBus(Bus bus) {
    money -= 1300;
    bus.takeMoney();
  }
}

void main() {
  Student student = Student(10000);
  Bus bus = Bus(100);
  Bus bus2 = Bus(200);

  student.getBus(bus);
  student.getBus(bus2);

  print('학생의 돈 : ${student.money}');
  print('100번 버스 수익 : ${bus.profit}');
  print('200번 버스 수익 : ${bus.profit}');
}