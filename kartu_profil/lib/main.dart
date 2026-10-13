
import 'package:flutter/material.dart';

void main() {
  runApp(const AplikasiPenghitung());
}

class AplikasiPenghitung extends StatelessWidget {
  const AplikasiPenghitung({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Eksperimen Hot Reload',
      theme: ThemeData(
        colorSchemeSeed: const Color(0xFF0B6B45),
        useMaterial3: true,
      ),
      home: const HalamanPenghitung(),
    );
  }
}

class HalamanPenghitung extends StatefulWidget {
  const HalamanPenghitung({super.key});

  @override
  State<HalamanPenghitung> createState() =>
      _HalamanPenghitungState();
}

class _HalamanPenghitungState extends State<HalamanPenghitung> {
  int _jumlah = 0;

  void _tambah() {
    setState(() {
      _jumlah++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Eksperimen Hot Reload'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$_jumlah',
              style: const TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: _tambah,
              child: const Text('Tambah'),
            ),
          ],
        ),
      ),
    );
  }
}
