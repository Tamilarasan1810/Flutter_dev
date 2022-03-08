main() {
  //string
  String name = "Tamil arasan";
  print(name);
  print("Hello ${name}");

  //substring
  String firstname = name.substring(0, 5); //Tamil
  print("Hello ${firstname}");

  //index in a string
  int index = name.indexOf(' ');
  String lastname = name.substring(index).trim();
  print("Last name ${lastname}");

  String lastnames = name.substring(index);
  print("Last name ${lastnames}");

  //length
  print("The length of name is: ${name.length}");

  //contains

  print("Contains: ${name.contains('arasan')} ");

  // create a list
  List parts = name.split(" ");
  print("List: ${parts}  ::  ${parts[0] + " " + parts[1]}");
}
