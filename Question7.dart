void main() {
  Map<String, String> contacts = {
    "mazid": "01711111111",
    "rafi": "01822222222",
    "john": "01933333333",
    "sara": "01644444444",
    "Tamzid": "01555555555",
    "Abid": "01766666666"
  };
  print("All Contacts:");
  print(contacts);
  var shortNames = contacts.keys.where((key) => key.length == 4);
  print("\nNames with 4 letters:");
  print(shortNames.toList());
}
