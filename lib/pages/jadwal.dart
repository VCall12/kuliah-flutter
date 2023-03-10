import 'package:app01/pages/quotes.dart';
import 'package:flutter/material.dart';
import 'package:app01/pages/profil.dart';

class JadwalPage extends StatelessWidget {
  final List<String> _jadwalpage = [
    'Pemrograman Perangkat Bergerak',
    'Manajemen Pengadaan & Investasi TI',
    'Pengukuran Kinerja & Evaluasi SI',
    'Perencanaan Strategis SI/TI',
    'Kuliah Kerja Nyata',
    'Pengolahan Citra Digital',
    'Konstruksi & Pengujian Perangkat Lunak',
    'Perencanaan Sumber Daya Perusahaan',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mata Kuliah'),
        leading: Container(),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: _jadwalpage.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              color: Color.fromARGB(255, 255, 195, 64), // warna background card
              child: ListTile(
                title: Text(_jadwalpage[index]),
                onTap: () {
                  Navigator.pushNamed(context, '/quotes');
                },
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return QuotesPage();
              },
            ),
          );
        },
        child: const Text("Quotes"),
      ),
    );
  }
}
