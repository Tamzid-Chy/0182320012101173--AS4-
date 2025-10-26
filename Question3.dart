import 'dart:io';

void main() {
  List<double> expenses = [];

  print("Enter your expenses (type 'done' to finish):");

  while (true) {
    stdout.write("Enter expense: ");
    String? input = stdin.readLineSync();

    if (input == null || input.toLowerCase() == 'done') {
      break;
    }

    double amount = double.parse(input);
    expenses.add(amount);
  }

  if (expenses.isEmpty) {
    print("No expenses entered!");
  } else {
    double total = expenses.reduce((a, b) => a + b);
    print("\nTotal expenses: $total");
  }
}
