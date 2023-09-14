class Animal {
  //속성 만들어 주세요
  String? species;
  String? color;
  int? size;

  Animal(this.species, this.color, this.size){
    showInfo();
  }

  //기능 만들어주세요
  void showInfo(){
    print('Species : $species');
    print('Color : $color');
    print('Size : $size');
  }
}

void main() {

  Animal animal = Animal('lion', 'red', 210);
/*  animal.species = 'lion';
  animal.size = 210;
  animal.color = 'white';

  animal.showInfo();*/

}