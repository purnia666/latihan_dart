void main() {
  List<Map<String, dynamic>> mahasiswa = [
    {'nama': 'okta', 'nilai': 85},
    {'nama': 'virgin', 'nilai': 78},
    {'nama': 'yosni', 'nilai': 90},
    {'nama': 'oka', 'nilai': 88},
    {'nama': 'ferry', 'nilai': 76},
    {'nama': 'ida', 'nilai': 92},
    {'nama': 'rain', 'nilai': 80},
    {'nama': 'darco', 'nilai': 95},
    {'nama': 'okta', 'nilai': 87},
  ];

  print(mahasiswa);

  List<int> nilai = mahasiswa
      .map((m) => m['nilai'] as int)
      .toList();

  double rataRata = nilai.reduce((a, b) => a + b) / nilai.length;

  print('Rata-rata: $rataRata');

  int nilaiTertinggi = nilai.reduce((a, b) => a > b ? a : b);
  int nilaiTerendah = nilai.reduce((a, b) => a < b ? a : b);

  print('Nilai tertinggi: $nilaiTertinggi');
  print('Nilai terendah: $nilaiTerendah');

  List<String> nama = mahasiswa
      .map((m) => m['nama'] as String)
      .toList();

  List<String> namaMengulang = nama
      .where((name) => nama.where((n) => n == name).length > 1)
      .toSet()
      .toList()
    ..sort();

  print('Nama yang mengulang: $namaMengulang');

  Map<String, int> inventori = {
    'Buku': 10,
    'Pulpen': 3,
    'Pensil': 7,
    'Penghapus': 2,
    'Penggaris': 4,
  };

  print('Inventori awal: $inventori');

  // Tambah item
inventori['Spidol'] = 6;

// Ubah stok
inventori['Pulpen'] = 8;

// Hapus item
inventori.remove('Pensil');

print('Inventori setelah perubahan: $inventori');

var stokSedikit = inventori.entries
    .where((entry) => entry.value < 5);

print('Barang dengan stok di bawah 5: $stokSedikit');

// Praktikum 3
var nilaiTinggi = filterData(
  mahasiswa,
  (m) => m['nilai'] >= 90,
);

var nilaiRendah = filterData(
  mahasiswa,
  (m) => m['nilai'] < 80,
);

var namaOkta = filterData(
  mahasiswa,
  (m) => m['nama'] == 'okta',
);

print('Nilai >= 90: $nilaiTinggi');
print('Nilai < 80: $nilaiRendah');
print('Nama okta: $namaOkta');

// Perbandingan dengan perulangan biasa
List<Map<String, dynamic>> hasilLoop = [];

for (var m in mahasiswa) {
  if (m['nilai'] >= 90) {
    hasilLoop.add(m);
  }
}

print('Hasil dengan perulangan biasa: $hasilLoop');
}

List<T> filterData<T>(
  List<T> data,
  bool Function(T) kriteria,
) {
  return data.where(kriteria).toList();
}