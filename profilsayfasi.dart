import 'package:flutter/material.dart';
import 'package:flutter_application_2/gonderiKarti.dart';

class ProfilSayfasi extends StatelessWidget {
  final String isimSoyad;
  final String kullaniciAdi;
  final String kapakResimlinki;
  final String profilResimLinki;

  const ProfilSayfasi({super.key,   required this.isimSoyad, required this.kullaniciAdi, required this.kapakResimlinki, required this.profilResimLinki});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        body: ListView(
          children: [
            Stack(
              children: [
                Container(
                  height: 230.0,
                  //  color: Colors.yellow,
                ),
                Container(
                  height: 180.0,
                  decoration:  BoxDecoration(
                      color: Colors.green,
                      image: DecorationImage(
                          image: NetworkImage(
                              kapakResimlinki),
                          fit: BoxFit.cover)),
                ),
                Positioned(
                  left: 20.0,
                  bottom: 0.0,
                  child: Hero(tag: kullaniciAdi,
                    child: Container(
                      width: 120.0,
                      height: 120.0,
                      decoration: BoxDecoration(
                          color: Colors.lightBlue,
                          borderRadius: BorderRadius.circular(60.0),
                          border: Border.all(width: 2.0, color: Colors.white),
                          image:  DecorationImage(
                              image: NetworkImage(
                                  profilResimLinki),
                              fit: BoxFit.cover)),
                    ),
                  ),
                ),
                 Positioned(
                  top: 185.0,
                  left: 145.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        isimSoyad,
                        style: const TextStyle(
                            fontSize: 18.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        kullaniciAdi,
                        style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.grey[600],
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: 130.0,
                  right: 15.0,
                  child: Container(
                    width: 100.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Colors.grey[200],
                        border: Border.all(width: 2.0, color: Colors.white)),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.add_circle,
                          size: 18.0,
                        ),
                        SizedBox(width: 2.0),
                        Text(
                          "Takip et ",
                          style: TextStyle(
                              fontSize: 15.0,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
                IconButton(
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      Navigator.pop(context,true);
                    })
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            Container(
              height: 75.0,
              color: Colors.grey.withOpacity(0.1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  sayac("Takipci","20K"),
                  sayac("Takip","500"),
                  sayac("Paylasim","75")
                ],
              ),
            ),
            const GonderiKarti(
            profilResimLinki:
                "https://images.pexels.com/photos/1459497/pexels-photo-1459497.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
            aciklama: "Bir seyler",
            gecenSure: "60dk",
            gonderiResimLinki:
                "https://images.pexels.com/photos/1792626/pexels-photo-1792626.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
            isimSoyad: "Kaan Gumele",
          ),
          ],
        ));
  }

  Column sayac(String baslik, String sayi) {
    return  Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      sayi,
                      style: const TextStyle(
                          fontSize: 18.0,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 1.0,),
                    Text(
                      baslik,
                      style: const TextStyle(
                          fontSize: 15.0,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                );
  }
}
