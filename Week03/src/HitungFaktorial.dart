import 'dart:io';

void main() {
  print('--- Program Hitung Faktorial ---');
  stdout.write('Masukkan angka bulat positif: ');

  // Mengambil input dan konversi ke integer
  String? input = stdin.readLineSync();
  int? angka = int.tryParse(input ?? '');

  // 1. Percabangan untuk validasi input
  if (angka == null) {
    print('Input tidak valid. Harap masukkan angka.');
  } else if (angka < 0) {
    print('Faktorial tidak terdefinisi untuk angka negatif.');
  } else if (angka == 0) {
    print('Faktorial dari 0 adalah 1.');
  } else {
    double hasil = 1; // Menggunakan double untuk menampung angka besar

    // 2. Perulangan untuk menghitung faktorial jika angka > 0
    // n! = n * (n-1) * (n-2) * ... * 1
    for (int i = 1; i <= angka; i++) {
      hasil *= i;
    }

// 3. Output hasil faktorial
    print('Hasil faktorial dari $angka ($angka!) adalah: $hasil');
  }
}
