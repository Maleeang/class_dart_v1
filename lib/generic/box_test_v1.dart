//사용 방법 - 선언 방법
class Box<T> {
  T value;

  Box(this.value);

  T getValue() {
    return value;
  }
}

void main() {
  //1단계 - 문자열
  var stringBox = Box<String>('Hello, Dart!');
  print(stringBox.getValue());

  //2단계 - 정수
  var intBox = Box<int>(50);
  print(intBox.getValue());

  var numbers = [1,2,3,4,5];
  var firstEven = findFirst(numbers, (n) => n%2 == 0);
  print("first Even : $firstEven");
  var firstOdd = findFirst(numbers, (n) => n%2 != 0);
  print("first Odd : $firstOdd");
  var lastEven = findLastEven(numbers, (n) => n%2 == 0);
  print("Last Even : $lastEven");
}

//제네릭 함수의 사용
T? findFirst<T>(List<T> items, bool Function(T) check) {
  var count = 0;
  //처음부터 끝까지 반복처리
  for(var i in items) {
    count++;
    print("count : $count, item : $i");
    //check는 함수이다.
    //check 함수는 어떤 데이터 타입이든 매개변수로 담을 수 있다.
    //check 함수의 구현 부분은 사용 시점에 구현하고, 단 그 구현의 결과의
    //데이터 타입은 bool 형태가 되어야 한다.
    if(check(i)){
      return i;
    }
  }
  return null;
}

T? findLastEven<T>(List<T> items, bool Function(T) check) {
  var count=0;
  for(int i=items.length-1; i>=0; i--) {
    count++;
    if(check(items[i])) {
      return items[i];
    }
  }
  return null;
}