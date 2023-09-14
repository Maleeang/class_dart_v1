import 'dart:math';
//주사위 게임
//1.주사위 숫자는 열거형으로
//2.dart:math; 랜덤 변수 하나를 뽑아 주세요
//3.switch 구문을 활용해서 패턴 매칭을 시켜주세요 enum - 랜덤 숫자
enum Dice {one,two,three,four,five,six}

void main() {
  Random random = Random();
  int randomNumber = random.nextInt(6) + 1;
  var number;

  switch(randomNumber) {
    case 1:
      number = Dice.one;
    case 2:
      number = Dice.two;
    case 3:
      number = Dice.three;
    case 4:
      number = Dice.four;
    case 5:
      number = Dice.five;
    case 6:
      number = Dice.six;
  }

  print(number);

  switch(number) {
    case Dice.one:
      print('일');
    case Dice.two:
      print('이');
    case Dice.three:
      print('삼');
    case Dice.four:
      print('사');
    case Dice.five:
      print('오');
    case Dice.six:
      print('육');
  }
}