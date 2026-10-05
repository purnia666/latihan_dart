void main() {
  final List<Map<String, dynamic>> mataKuliah = [
    {
      'kode': 'IF101',
      'nama': 'Pemrograman Dasar',
      'sks': 3,
    },
    {
      'kode': 'IF102',
      'nama': 'Basis Data',
      'sks': 3,
    },
    {
      'kode': 'IF103',
      'nama': 'Jaringan Komputer',
      'sks': 3,
    },
    {
      'kode': 'IF104',
      'nama': 'Pemrograman Mobile',
      'sks': 4,
    },
    {
      'kode': 'IF105',
      'nama': 'Kecerdasan Buatan',
      'sks': 3,
    },
    {
      'kode': 'IF106',
      'nama': 'Pengolahan Citra Digital',
      'sks': 2,
    },
  ];

  print('Data Mata Kuliah:');
  print(mataKuliah);

  // Pencarian berdasarkan kata kunci
final keyword = 'pemrograman';

final hasilPencarian = mataKuliah
    .where((m) => m['nama'].toString().toLowerCase().contains(keyword))
    .toList();

print('Hasil pencarian "$keyword":');
print(hasilPencarian);
// Filter berdasarkan SKS
final mataKuliah3SKS = mataKuliah
    .where((m) => m['sks'] == 3)
    .toList();

print('Mata kuliah dengan 3 SKS:');
print(mataKuliah3SKS);

// Mengurutkan berdasarkan nama mata kuliah
final urutNama = [...mataKuliah]
  ..sort((a, b) => a['nama'].compareTo(b['nama']));

print('Mata kuliah berdasarkan urutan nama:');
print(urutNama);
}