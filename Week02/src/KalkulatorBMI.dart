import 'dart:io';

/*
  Program : Kalkulator BMI
  Input   : Berat (kg) dan Tinggi (cm)
  Proses  : Konversi cm ke meter lalu hitung BMI
  Output  : Nilai BMI dan kategori
*/

void main() {
  print('=== KALKULATOR BMI ===');

  // Input berat badan
  stdout.write('Masukkan berat badan (kg): ');
  double berat = double.parse(stdin.readLineSync()!);

  // Input tinggi badan dalam cm
  stdout.write('Masukkan tinggi badan (cm): ');
  double tinggiCm = double.parse(stdin.readLineSync()!);

  // Validasi input
  if (berat <= 0 || tinggiCm <= 0) {
    print('❌ Berat dan tinggi harus lebih dari 0!');
    return;
  }

  // Konversi cm ke meter
  double tinggiMeter = tinggiCm / 100;

  // Hitung BMI
  double bmi = berat / (tinggiMeter * tinggiMeter);

  // Kategori BMI menggunakan operator ternary
  String kategori = bmi < 18.5
      ? 'Kurus'
      : bmi < 25
      ? 'Normal'
      : bmi < 30
      ? 'Gemuk'
      : 'Obesitas';

  // Output hasil
  print('\n=== HASIL ===');
  print('BMI Anda: ${bmi.toStringAsFixed(2)}');
  print('Kategori: $kategori');
}
