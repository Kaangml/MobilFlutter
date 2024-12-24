import 'package:flutter/material.dart';
import 'package:fmarket/sepetim.dart';
import 'package:fmarket/urunler.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Projem',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const Anasayfa(),
    );
  }
}

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  List<Widget> _icerikler = [];
  int _aktifIcerikno = 0;
  @override
  void initState() {
    super.initState();
    _icerikler = [
      Urunler(),
      Sepetim()
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "Uçarak gelsin",
          style: TextStyle(
              fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.grey),
        ),
      ),
      body: _icerikler[_aktifIcerikno],
      bottomNavigationBar:  BottomNavigationBar(
        currentIndex: _aktifIcerikno,
        selectedItemColor: Colors.red[400],
        unselectedItemColor: Colors.grey[600],
         items: const [
           BottomNavigationBarItem(icon: Icon(Icons.home), label: "Ürünler "),
           BottomNavigationBarItem(icon:  Icon(Icons.shopping_cart), label: "Sepetim ")
        ],
        onTap: (int tiklananButonPozisyonno ){
          setState(() {
            _aktifIcerikno = tiklananButonPozisyonno;
          });
        },
      ),
    );
  }
}
