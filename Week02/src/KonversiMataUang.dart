import 'dart:io';

/*
  Program: Konversi Mata Uang
  Mata uang:
  1. IDR
  2. USD
  3. EUR
*/

void main() {
  print('=== KONVERSI MATA UANG ===');

  // Kurs tetap (const karena diketahui saat compile-time)
  const double kursUsdToIdr = 15000;
  const double kursEurToIdr = 16000;

  stdout.write('Masukkan jumlah uang: ');
  double jumlah = double.parse(stdin.readLineSync()!);

  stdout.write('Dari mata uang (IDR/USD/EUR): ');
  String dari = stdin.readLineSync()!.toUpperCase();

  stdout.write('Ke mata uang (IDR/USD/EUR): ');
  String ke = stdin.readLineSync()!.toUpperCase();

  double hasil = 0;

  // Konversi ke IDR dulu
  if (dari == 'USD') {
    jumlah *= kursUsdToIdr;
  } else if (dari == 'EUR') {
    jumlah *= kursEurToIdr;
  }

  // Konversi dari IDR ke tujuan
  if (ke == 'USD') {
    hasil = jumlah / kursUsdToIdr;
  } else if (ke == 'EUR') {
    hasil = jumlah / kursEurToIdr;
  } else {
    hasil = jumlah;
  }

  print('\nHasil konversi: ${hasil.toStringAsFixed(2)} $ke');
}
