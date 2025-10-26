void main() {
  List<String> friends = ["Arif", "Tamzid", "Amin", "Rafi", "Abir", "Shahriar", "Nishat"];
  var namesWithA = friends.where((name) => name.toLowerCase().startsWith('a'));
  print("Friends with 'A': $namesWithA");
}
