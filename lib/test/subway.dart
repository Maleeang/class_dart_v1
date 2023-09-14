class Subway {

  int lineNumber;
  int count;
  int money;

  Subway(this.lineNumber, this.count, this.money);

  void take(int money) {
    this.money += money;
    this.count++;
  }

  void showInfo(){
    print('호선 : $lineNumber');
    print('승객 수 : $count');
    print('수익금 : $money');
  }
}