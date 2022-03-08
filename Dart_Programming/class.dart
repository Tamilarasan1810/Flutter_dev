class Person {
  String name = 'Tamilarasan';
  int age = 20;
}

void main(List<String> args) {
  var p1 = Person();
  var p2 = Person();
  print(p1.name);
  print(p1.age);
  p2.name = 'Murugesan';
  p2.age = 50;
  print(p2.name);
  print(p2.age);
}
