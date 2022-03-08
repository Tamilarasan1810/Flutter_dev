main() {
  // it is a key value pair
  Map family = {'dad': 'Murugesan', 'Sons': 'TAMS', 'mom': 'Sampooranam'};
  print(family);
  print('Keys are: ${family.keys}');
  print('values are: ${family.values}');
  print('dad is: ${family['dad']}');
  print('sons are: ${family['Sons']}');

  //or

  Map<String, String> people = new Map<String, String>();
  people.putIfAbsent('dad', () => 'Murugesan');
  people.putIfAbsent('mom', () => 'Sampooranam');
  print(people);
}
