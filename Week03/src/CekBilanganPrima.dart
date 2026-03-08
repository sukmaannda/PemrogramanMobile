import 'dart:io';

void main() {
  print('--- Program Cek Bilangan Prima ---');
  stdout.write('Masukkan angka: ');

  // Mengambil input dari user
  int? angka = int.tryParse(stdin.readLineSync()!);

  if (angka == null || angka <= 1) {
    print('$angka bukan bilangan prima.');
  } else {
    bool isPrima = true;

    // Perulangan untuk mengecek pembagi
    for (int i = 2; i <= angka ~/ 2; i++) {
      // Percabangan untuk cek sisa bagi
      if (angka % i == 0) {
        isPrima = false;
        break;
      }
    }

    if (isPrima) {
      print('Angka $angka adalah bilangan prima!');
    } else {
      print('Angka $angka bukan bilangan prima.');
    }
  }
}
