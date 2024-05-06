import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Stateless Widget'),
          backgroundColor: Colors.blue, // Mengatur warna biru pada AppBar
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TeksUtama(
                teks1: '',
                teks2: 'Daftar Absensi #113 Mobile Programming Lanjut',
              ),
              TeksUtama(
                teks1: '32. Innayah Nur Fauziah',
                teks2: 'STI202102224',
              ),
              TeksUtama(
                teks1: '33. Resta Amalia Yuliani',
                teks2: 'STI202102226',
              ),
              TeksUtama(
                teks1: '34. Alisha Nathania Septianty',
                teks2: 'STI202102228',
                backgroundColor: Colors
                    .green, // Menambahkan warna latar belakang hijau pada teks
              ),
              TeksUtama(
                teks1: '35. Nur Kholiq',
                teks2: 'STI202102234',
              ),
              TeksUtama(
                teks1: '36. Zainun',
                teks2: 'STI202102243',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TeksUtama extends StatelessWidget {
  final String teks1;
  final String teks2;
  final Color? backgroundColor; // Menambahkan parameter backgroundColor

  const TeksUtama({
    Key? key,
    required this.teks1,
    required this.teks2,
    this.backgroundColor, // Menambahkan parameter backgroundColor
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color:
              backgroundColor, // Mengatur warna latar belakang sesuai dengan parameter
          child: Text(
            teks1,
            textDirection: TextDirection.ltr,
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.red,
            ),
          ),
        ),
        Container(
          // Menggunakan Container untuk menambahkan latar belakang
          color:
              backgroundColor, // Mengatur warna latar belakang sesuai dengan parameter
          child: Text(
            teks2,
            textDirection: TextDirection.ltr,
          ),
        ),
      ],
    );
  }
}
