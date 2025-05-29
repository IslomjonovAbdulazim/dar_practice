import 'dart:io';

void main() async {
  final file = File("lib/passwords.txt");

  final res = await file.readAsString();

  String user = "";
  while (user != res) {
    stdout.write("Parolni kiriting: ");
    user = stdin.readLineSync() ?? "";
  }

  while (true) {
    print("Dasturimizga xush kelibsiz!");
    print("1. Parolni o'zgartirish");
    print("2. Parolni o'chirish");
    print("0. Dasturni to'xtatish");
    stdout.write("Tanlang: ");
    String choice = stdin.readLineSync() ?? "";

    if (choice == "0") {
      return;
    } else if (choice == "2") {
      await file.writeAsString("");
      print("Parol o'chirildi!\n");
    } else if (choice == "1") {
      stdout.write("Yangi Parol: ");
      final pass = stdin.readLineSync() ?? "";
      await file.writeAsString(pass);
      print("Parol O'zgardi\n");
    } else {
      print("Noto'g'ri tanlov!\n");
    }
  }
}








