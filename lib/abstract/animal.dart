abstract class Animal {
  String name;

  Animal(this.name);

  void makeSound();
}

class Dog extends Animal {
  //메모리에 Animal이 먼저 올라 가야 한다.
  Dog(String name) : super(name);

  @override
  void makeSound() {
    print('$name가 멍멍합니다.');
  }
}

class Cat extends Animal {
  Cat(String name) : super(name);

  @override
  void makeSound() {
    print('$name가 야옹합니다.');
  }
}

void main(){
  //리스트에 객체 넣기
  //반복문을 통해 실행 해보기
  Dog dog = Dog('사무');
  Cat cat = Cat('토토');

  List<Animal> animal = [dog, cat];

  for(var s in animal) {
    s.makeSound();
    print('---------------------');
  }

}