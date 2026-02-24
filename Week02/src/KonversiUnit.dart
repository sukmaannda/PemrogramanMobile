import 'dart:io';

/*
  PROGRAM KONVERSI UNIT LENGKAP
  Kategori:
  1. Panjang
  2. Massa
  3. Volume
  4. Suhu

  Menggunakan Map untuk faktor konversi
*/

void main() {
  while (true) {
    print('\n=== APLIKASI KONVERSI UNIT ===');
    print('1. Panjang');
    print('2. Massa');
    print('3. Volume');
    print('4. Suhu');
    print('5. Keluar');

    stdout.write('Pilih kategori (1-5): ');
    int pilihan = int.parse(stdin.readLineSync()!);

    switch (pilihan) {
      case 1:
        konversiPanjang();
        break;
      case 2:
        konversiMassa();
        break;
      case 3:
        konversiVolume();
        break;
      case 4:
        konversiSuhu();
        break;
      case 5:
        print('Terima kasih!');
        return;
      default:
        print('Pilihan tidak valid!');
    }
  }
}

//////////////////////////////////////////////////////////
// PANJANG
//////////////////////////////////////////////////////////

void konversiPanjang() {
  print('\n=== KONVERSI PANJANG ===');

  Map<String, double> panjang = {
    'mm': 0.001,
    'cm': 0.01,
    'm': 1,
    'km': 1000,
    'inch': 0.0254,
  };

  prosesKonversi(panjang, 'Panjang', false);
}

//////////////////////////////////////////////////////////
// MASSA
//////////////////////////////////////////////////////////

void konversiMassa() {
  print('\n=== KONVERSI MASSA ===');

  Map<String, double> massa = {
    'mg': 0.000001,
    'g': 0.001,
    'kg': 1,
    'ton': 1000,
    'lb': 0.453592,
  };

  prosesKonversi(massa, 'Massa', true);
}

//////////////////////////////////////////////////////////
// VOLUME
//////////////////////////////////////////////////////////

void konversiVolume() {
  print('\n=== KONVERSI VOLUME ===');

  Map<String, double> volume = {
    'ml': 0.001,
    'liter': 1,
    'm3': 1000,
    'galon': 3.78541,
    'cup': 0.24,
  };

  prosesKonversi(volume, 'Volume', true);
}

//////////////////////////////////////////////////////////
// SUHU
//////////////////////////////////////////////////////////

void konversiSuhu() {
  print('\n=== KONVERSI SUHU ===');
  print('Unit tersedia: C, F, K, R, Re');

  stdout.write('Masukkan nilai suhu: ');
  double nilai = double.parse(stdin.readLineSync()!);

  stdout.write('Dari (C/F/K/R/Re): ');
  String dari = stdin.readLineSync()!;

  stdout.write('Ke (C/F/K/R/Re): ');
  String ke = stdin.readLineSync()!;

  double hasil = nilai;

  // Konversi ke Celsius dulu
  if (dari == 'F') hasil = (nilai - 32) * 5 / 9;
  if (dari == 'K') hasil = nilai - 273.15;
  if (dari == 'R') hasil = nilai * 5 / 4;
  if (dari == 'Re') hasil = nilai * 5 / 4;

  // Konversi dari Celsius ke tujuan
  if (ke == 'F') hasil = (hasil * 9 / 5) + 32;
  if (ke == 'K') hasil = hasil + 273.15;
  if (ke == 'R') hasil = hasil * 4 / 5;
  if (ke == 'Re') hasil = hasil * 4 / 5;

  print('\n=== HASIL ===');
  print('$nilai° $dari = ${hasil.toStringAsFixed(2)}° $ke');
}

//////////////////////////////////////////////////////////
// FUNGSI UMUM KONVERSI (MAP)
//////////////////////////////////////////////////////////

void prosesKonversi(
    Map<String, double> data, String kategori, bool cekNegatif) {
  print('Unit tersedia: ${data.keys.join(', ')}');

  stdout.write('Masukkan nilai: ');
  double nilai = double.parse(stdin.readLineSync()!);

  if (cekNegatif && nilai < 0) {
    print('Nilai tidak boleh negatif untuk $kategori!');
    return;
  }

  stdout.write('Dari unit: ');
  String dari = stdin.readLineSync()!;

  stdout.write('Ke unit: ');
  String ke = stdin.readLineSync()!;

  if (!data.containsKey(dari) || !data.containsKey(ke)) {
    print('Unit tidak valid!');
    return;
  }

  // Konversi ke satuan dasar (SI)
  double nilaiDasar = nilai * data[dari]!;

  // Konversi ke unit tujuan
  double hasil = nilaiDasar / data[ke]!;

  print('\n=== HASIL KONVERSI ===');
  print('$nilai $dari = ${hasil.toStringAsFixed(4)} $ke');
}