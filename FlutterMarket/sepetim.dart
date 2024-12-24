import 'package:flutter/material.dart';

class Sepetim extends StatelessWidget {
  const Sepetim({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Center(
          child: Text(
            "Sepetim",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.red[400]),
          ),
        ),
        const ListTile(
          title: Text("Çikolatali gofret"),
          subtitle: Text("2 adet x 3.50 TL"),
          trailing: Text("7TL"),
        ),
        const ListTile(
          title: Text("Meyve Suyu"),
          subtitle: Text("1 adet x 2 TL"),
          trailing: Text("7TL"),
        ),
        const ListTile(
          title: Text("Islak Kek"),
          subtitle: Text("2 adet x 5.50 TL"),
          trailing: Text("11TL"),
        ),
        const SizedBox(height: 20.0,),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 25.0),
              child: Column(
                children: [
                  Text(
                    "Toplam tutar",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.red[400]),
                  ),
                  const SizedBox(height: 5.0,),
                   const Text(
                    "20TL",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  )
                ],          
              ),
            ),
          ],
        ),
        const SizedBox(height: 20.0,),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            height: 45.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.red[400],
            ),
            child:   const Center(
              child:  Text(
                        "Alişverişi Tamamla",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
            ),
          ),
        )
      ],
    );
  }
}
