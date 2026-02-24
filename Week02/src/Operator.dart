/*
  Program: Demo Semua Operator Dart
*/

void main() {
  print('=== DEMO OPERATOR DART ===\n');

  int a = 10;
  int b = 3;

  // ======================
  // 1. Operator Aritmatika
  // ======================
  print('Aritmatika:');
  print('a + b = ${a + b}');
  print('a - b = ${a - b}');
  print('a * b = ${a * b}');
  print('a / b = ${a / b}');
  print('a ~/ b = ${a ~/ b}');
  print('a % b = ${a % b}');

  // ======================
  // 2. Increment & Decrement
  // ======================
  a++;
  b--;
  print('\nSetelah increment & decrement: a=$a, b=$b');

  // ======================
  // 3. Relasional
  // ======================
  print('\nRelasional:');
  print('a > b = ${a > b}');
  print('a == b = ${a == b}');
  print('a != b = ${a != b}');

  // ======================
  // 4. Logika
  // ======================
  bool kondisi1 = true;
  bool kondisi2 = false;

  print('\nLogika:');
  print('kondisi1 && kondisi2 = ${kondisi1 && kondisi2}');
  print('kondisi1 || kondisi2 = ${kondisi1 || kondisi2}');
  print('!kondisi1 = ${!kondisi1}');

  // ======================
  // 5. Assignment
  // ======================
  int x = 5;
  x += 2;
  x *= 3;
  print('\nAssignment: x = $x');

  // ======================
  // 6. Null-aware
  // ======================
  String? nama;
  String namaFinal = nama ?? 'Tamu';
  print('\nNull-aware: $namaFinal');

  // ======================
  // 7. Type Test
  // ======================
  var data = 100;
  print('\nType Test:');
  print('data is int: ${data is int}');
  print('data is! String: ${data is! String}');

  // ======================
  // 8. Ternary
  // ======================
  String hasil = (a > b) ? 'a lebih besar' : 'b lebih besar';
  print('\nTernary: $hasil');

  // ======================
  // 9. Bitwise
  // ======================
  print('\nBitwise:');
  print('5 & 3 = ${5 & 3}');
  print('5 | 3 = ${5 | 3}');
  print('5 ^ 3 = ${5 ^ 3}');
  print('5 << 1 = ${5 << 1}');
  print('5 >> 1 = ${5 >> 1}');
}
