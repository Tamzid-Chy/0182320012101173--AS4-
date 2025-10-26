void main() {
  Map<String, dynamic> info = {
    "name": "Tamzid",
    "address": "Sylhet",
    "age": 21,
    "country": "Bangladesh"
  };

  info["country"] = "Japan"; // update value

  print("All keys and values:");
  info.forEach((key, value) => print("$key: $value"));
}
