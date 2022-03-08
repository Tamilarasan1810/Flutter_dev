void main(List<String> args) {
  var a = true;
  print("a is: ${a} and it's runtimeType is ${a.runtimeType}");
  num b = 10;
  print("b is: ${b} and it's runtumeType is ${b.runtimeType}");

  int d = 12;
  double c = 10.23;

  int x = int.parse("12");
  print(x);

  int err = int.parse("12.123", onError: (source) => 0);
  print(err);
  print('\n');

  String name = "Tamilarasan";
  print(name);
}
