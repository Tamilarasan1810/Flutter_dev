class Person {
  String? name;
  int? age;

  Person(this.name, this.age);

  // Person(String x, int y) {
  //   name = x;
  //   age = y;
  // }

}

void main() {
  var p1 = Person('Tamil', 20);
  var p2 = Person('Arasan', 20);
  print(p1.name);
  print(p1.age);
  print(p2.name);
  print(p2.age);
}
