void main() {
  // ==========================================
  // LATIHAN 1: KONVERSI SUHU
  // ==========================================

  double celsius = 25;

  print("=== KONVERSI SUHU ===");
  print("Celsius    : $celsius°C");
  print("Fahrenheit : ${celsiusToFahrenheit(celsius)}°F");
  print("Kelvin     : ${celsiusToKelvin(celsius)} K");

  // ==========================================
  // LATIHAN 2: CLASS PRODUK
  // ==========================================

  print("\n=== PRODUK ===");

  Product produk = Product(
    nama: "Laptop",
    harga: 8000000,
    diskon: 10,
  );

  print("Nama Produk : ${produk.nama}");
  print("Harga       : Rp${produk.harga}");
  print("Diskon      : ${produk.diskon}%");
  print("Harga Akhir : Rp${produk.hargaAkhir()}");

  // ==========================================
  // LATIHAN 3: var, final, const, dan late
  // ==========================================

  print("\n=== VAR, FINAL, CONST, DAN LATE ===");

  // var digunakan untuk nilai yang masih dapat berubah.
  var nama = "Nia";
  nama = "Niaa";
  print("var   : $nama");

  // final digunakan untuk nilai yang hanya diisi satu kali.
  final tahun = 2026;
  print("final : $tahun");

  // const digunakan untuk nilai konstan.
  const phi = 3.14;
  print("const : $phi");

  // late digunakan ketika nilai akan diberikan kemudian.
  late String pesan;
  pesan = "Selamat belajar Dart!";
  print("late  : $pesan");
}


// ==========================================
// FUNCTION KONVERSI SUHU
// ==========================================

double celsiusToFahrenheit(double celsius) {
  return (celsius * 9 / 5) + 32;
}

double celsiusToKelvin(double celsius) {
  return celsius + 273.15;
}


// ==========================================
// CLASS PRODUK
// ==========================================

class Product {
  String nama;
  double harga;
  double diskon;

  Product({
    required this.nama,
    required this.harga,
    this.diskon = 0,
  });

  double hargaAkhir() {
    return harga - (harga * diskon / 100);
  }
}