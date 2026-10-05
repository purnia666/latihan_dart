import 'dart:io';

void main() {
  int total = 0;
  bool selesai = false;

  do {
    print('=== APLIKASI MENU KANTIN ===');
    print('1. Nasi Goreng - Rp15000');
    print('2. Mie Goreng   - Rp12000');
    print('3. Ayam Geprek  - Rp18000');
    print('4. Es Teh       - Rp5000');
    print('0. Selesai');

    stdout.write('Pilih menu: ');

   try {
  int pilihan = int.parse(stdin.readLineSync()!);

    switch (pilihan) {
      case 1:
        print('Kamu memilih Nasi Goreng');
        total += 15000;
        break;

      case 2:
        print('Kamu memilih Mie Goreng');
        total += 12000;
        break;

      case 3:
        print('Kamu memilih Ayam Geprek');
        total += 18000;
        break;

      case 4:
        print('Kamu memilih Es Teh');
        total += 5000;
        break;

      case 0:
        print('Program selesai');
        selesai = true;
        break;

            default:
        print('Pilihan tidak valid');
    }
  } catch (e) {
    print('Input tidak valid. Masukkan angka 0-4.');
  }
  } while (!selesai);

  print('Total yang harus dibayar: Rp$total');
}