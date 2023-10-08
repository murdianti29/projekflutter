import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profil Warung Sejahtera',
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Warung Sejahtera'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image.asset('assets/warung_makan.jpg'), 
            ListTile(
              leading: Icon(Icons.email),
              title: Text('Email: WarungSejahtera@gmail.com'), 
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('Telepon: +62 821 475 255'), 
            ),
            ListTile(
              leading: Icon(Icons.map),
              title: Text('Alamat: Jl. Pegadaian No. 15, Kota Semarang'), 
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Deskripsi Warung Makan:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Warung Makan XYZ adalah tempat makan yang menyajikan berbagai hidangan lezat dari berbagai jenis masakan. Kami mengutamakan kualitas dan rasa dalam setiap hidangan yang kami sajikan. Nikmati suasana yang nyaman dan pelayanan yang ramah di Warung Sejahtera.',
                style: TextStyle(fontSize: 16),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Menu Kami:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              title: Text('1. Ayam Betutu - Rp. 25.000'),
            ),
            ListTile(
              title: Text('2. Sate Lilit - Rp. 20.000'),
            ),
            ListTile(
              title: Text('3. Nasi Campur Bali - Rp. 35.000'),
            ),
            ListTile(
              title: Text('4. Nasi Jinggo - Rp. 30.000'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Text(
          'Jam Operasi: Senin - Minggu, 10:00 - 22:00',
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
