void main() {
  String? name = "John";
  //String? name = null;
  String nameNotNullable = name!; //콘솔에 경고 발생
  print(name);
}