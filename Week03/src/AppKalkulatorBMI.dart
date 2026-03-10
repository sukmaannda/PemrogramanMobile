import 'dart:io';

void main() {
  List<String> history = [];
  bool lanjut = true;

  while (lanjut) {
    print("=== Aplikasi Kalkulator BMI ===");

    stdout.write("Masukkan tinggi badan (cm): ");
    double tinggiCm = double.parse(stdin.readLineSync()!);

    stdout.write("Masukkan berat badan (kg): ");
    double berat = double.parse(stdin.readLineSync()!);

    double tinggiMeter = tinggiCm / 100;
  }
}
