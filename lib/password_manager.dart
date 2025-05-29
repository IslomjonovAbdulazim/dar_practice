import 'dart:io';

void main() async {
  final file = File("lib/passwords.txt");

  await file.writeAsString("qwerty");
  final res = await file.readAsString();
  print(res);
}