import 'dart:io';
import 'dart:async';

main() {
  stdout.write('How are you?\r\n');
  stdout.write('How are you?\n');

  print('Enter your name: ');
  String? name = stdin.readLineSync();

  stdout.write("HI da ${name}\r\n");

  print("Enter first name:");
  String? first = stdin.readLineSync();
  print("Enter last name:");
  String? last = stdin.readLineSync();
  print("Hello ${first}${last}");
}
