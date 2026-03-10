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

    double bmi = berat / (tinggiMeter * tinggiMeter);

    String kategori;
    if (bmi < 18.5) {
      kategori = "Kurus";
    } else if (bmi >= 18.5 && bmi < 25) {
      kategori = "Normal";
    } else {
      kategori = "Gemuk";
    }

    print("\nHasil BMI Anda: ${bmi.toStringAsFixed(2)}");
    print("Kategori: $kategori");

    history.add("BMI: ${bmi.toStringAsFixed(2)} - $kategori");

    stdout.write("\nHitung lagi? (y/n): ");
    String? jawab = stdin.readLineSync();

    if (jawab?.toLowerCase() != 'y') {
      lanjut = false;
    }

    print("");
  }

  print("=== Riwayat Perhitungan BMI ===");
  for (int i = 0; i < history.length; i++) {
    print("${i + 1}. ${history[i]}");
  }

  print("Terima kasih telah menggunakan aplikasi BMI!");
}
