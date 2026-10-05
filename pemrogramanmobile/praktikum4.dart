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
}