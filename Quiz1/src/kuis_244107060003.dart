
// Fungsi untuk menghitung total belanja
double hitungTotal(List<double> hargaBarang) {
  double total = 0;

  // Perulangan for-in untuk menjumlahkan harga
  for (double harga in hargaBarang) {
    total += harga;
  }

  return total;
}

void main() {
  // Identitas
  String nama = "Sukma Ananda Putri";
  String nim = "244107060003"; 

  // Ambil 3 digit terakhir NIM
  String tigaDigit = nim.substring(nim.length - 3);
  double nilaiUnikNIM = double.parse(tigaDigit);

  // List harga barang
  List<double> hargaBarang = [45000.5, 32000.75, 78000.25, 15000.0, 25000.5];

  // Menambahkan nilai unik NIM ke dalam list
  hargaBarang.add(nilaiUnikNIM);

  // Hitung total belanja
  double totalAwal = hitungTotal(hargaBarang);

  // Null safety
  String? pesanDiskon;
  double diskon = 0;

  // Percabangan diskon
  if (totalAwal > 200000) {
    diskon = totalAwal * 0.10;
    pesanDiskon = "Diskon 10%";
  } else if (totalAwal >= 100000 && totalAwal <= 200000) {
    diskon = totalAwal * 0.05;
    pesanDiskon = "Diskon 5%";
  } else {
    diskon = 0;
    pesanDiskon = "Tidak ada diskon";
  }

  double totalAkhir = totalAwal - diskon;

  // Output
  print("Nama        : $nama");
  print("NIM         : $nim");
  print("Total Awal  : Rp $totalAwal");
  print("Besar Diskon: Rp $diskon");
  print("Keterangan  : ${pesanDiskon!}");
  print("Total Akhir : Rp $totalAkhir");
}
