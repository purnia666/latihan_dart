import 'package:flutter/material.dart';

void main() {
  runApp(const AplikasiKartuIdentitas());
}

class AplikasiKartuIdentitas extends StatefulWidget {
  const AplikasiKartuIdentitas({super.key});

  @override
  State<AplikasiKartuIdentitas> createState() =>
      _AplikasiKartuIdentitasState();
}

class _AplikasiKartuIdentitasState
    extends State<AplikasiKartuIdentitas> {
  bool modeGelap = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kartu Identitas Digital',
      theme: ThemeData(
        colorSchemeSeed: const Color(0xFF0B6B45),
        useMaterial3: true,
        brightness:
            modeGelap ? Brightness.dark : Brightness.light,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Kartu Identitas Digital'),
          centerTitle: true,
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: modeGelap
                    ? Colors.grey[850]
                    : Colors.white,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: modeGelap
                      ? Colors.white24
                      : const Color(0xFFE2E8E4),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.08),
                    blurRadius: 10,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Column(
                      children: [
                        const CircleAvatar(
                          radius: 48,
                          backgroundColor: Color(0xFF0B6B45),
                          child: Icon(
                            Icons.person,
                            size: 55,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 16),
                        const Text(
                          'KARTU IDENTITAS MAHASISWA',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
                  const Center(
                    child: Text(
                      'Ni Putu Purnia Dewi',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Center(
                    child: Text('NIM: 202463121009'),
                  ),
                  const SizedBox(height: 6),
                  const Center(
                    child: Text(
                      'Program Studi: Teknik Komputer',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 24),
                  const Divider(),
                  const SizedBox(height: 12),
                  const Row(
                    children: [
                      Icon(
                        Icons.school,
                        color: Color(0xFF0B6B45),
                      ),
                      SizedBox(width: 12),
                      Expanded(
                        child: Text('Universitas Warmadewa'),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  const Row(
                    children: [
                      Icon(
                        Icons.computer,
                        color: Color(0xFF0B6B45),
                      ),
                      SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          'Fakultas Teknik dan Perencanaan',
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  const Row(
                    children: [
                      Icon(
                        Icons.phone_android,
                        color: Color(0xFF0B6B45),
                      ),
                      SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          'Minat: Pemrograman Mobile',
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        setState(() {
                          modeGelap = !modeGelap;
                        });
                      },
                      icon: Icon(
                        modeGelap
                            ? Icons.light_mode
                            : Icons.dark_mode,
                      ),
                      label: Text(
                        modeGelap
                            ? 'Aktifkan Mode Terang'
                            : 'Aktifkan Mode Gelap',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
