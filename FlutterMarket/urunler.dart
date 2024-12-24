import 'package:flutter/material.dart';

class Urunler extends StatefulWidget {
  const Urunler({super.key});

  @override
  State<Urunler> createState() => _UrunlerState();
}

class _UrunlerState extends State<Urunler> with SingleTickerProviderStateMixin{
 
late TabController televizyonKontrolcusu;

@override
  void initState() {
    super.initState();
    televizyonKontrolcusu=TabController(length: 4, vsync: this);

  }
 
 
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 250.0,
          child: TabBarView(
            children: [
              Container(color: Colors.amber,),
              Container(color: Colors.blue,),
              Container(color: Colors.green,),
              Container(color: Colors.teal,)
            ],
            ),
        )
      ],
    );
  }
}
