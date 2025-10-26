import 'dart:io';

void main() {
  List<String> tasks = [];

  while (true) {
    print("1. Add Task");
    print("2. Remove Task");
    print("3. View All Tasks");
    print("4. Exit");
    stdout.write("Enter your choice (1-4): ");
    String? choice = stdin.readLineSync();

    if (choice == '1') {
      stdout.write("Enter task name: ");
      String? task = stdin.readLineSync();
      if (task != null && task.isNotEmpty) {
        tasks.add(task);
        print("Task added successfully!");
      } else {
        print("Task cannot be empty.");
      }
    } else if (choice == '2') {
      if (tasks.isEmpty) {
        print("No tasks to remove.");
      } else {
        print("Your Tasks:");
        for (int i = 0; i < tasks.length; i++) {
          print("${i + 1}. ${tasks[i]}");
        }
        stdout.write("Enter task number to remove: ");
        String? numStr = stdin.readLineSync();
        int? index = int.tryParse(numStr ?? "");
        if (index != null && index > 0 && index <= tasks.length) {
          print("Removed: ${tasks.removeAt(index - 1)}");
        } else {
          print("Invalid task number.");
        }
      }
    } else if (choice == '3') {
      if (tasks.isEmpty) {
        print("No tasks found.");
      } else {
        print("\nYour Tasks:");
        for (int i = 0; i < tasks.length; i++) {
          print("${i + 1}. ${tasks[i]}");
        }
      }
    } else if (choice == '4') {
      print("Exiting To-Do App. Goodbye!");
      break;
    } else {
      print("Invalid choice. Please enter 1–4.");
    }
  }
}
