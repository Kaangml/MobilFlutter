import 'package:flutter/material.dart';
import 'package:flutter_application_2/profilsayfasi.dart';

import 'gonderiKarti.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ArayüzProjem',
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        elevation: 0.0,
        leading: IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.grey,
              size: 32.0,
            ),
            onPressed: () {}),
        title: const Text(
          "Socia World",
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.grey,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              icon: Icon(
                Icons.notifications,
                color: Colors.purple[300],
                size: 32.0,
              ),
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return Column(children: [
                        duyuru("Kamil seni takip etti", "3dk önce "),
                        duyuru("mesaj", "gecenSure"),
                        duyuru("Birisi daha takip etti ", "45dk sonra")
                      ]);
                    });
              })
        ],
      ),
      body: ListView(
        children: [
          Container(
            height: 100.0,
            decoration:
                BoxDecoration(color: Colors.grey[100], boxShadow: const [
              BoxShadow(
                //Golgelendirmek icin
                color: Colors.grey,
                offset: Offset(0.0, 3.0),
                blurRadius: 5.0,
              ),
            ]),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                profilKartiOlustur(
                    "Kaan",
                    "https://images.pexels.com/photos/15324791/pexels-photo-15324791/free-photo-of-peyzaj-orman-agaclar-pastoral.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
                    "Kaan Gümele",
                    "https://www.muhendisbeyinler.net/wp-content/uploads/2018/09/1.jpg"),
                profilKartiOlustur(
                  "Aylin",
                  "https://cdn.pixabay.com/photo/2023/11/26/20/58/horse-8414296_1280.jpg",
                  "Aylin Çanakci",
                  "https://media.istockphoto.com/id/1414457681/tr/foto%C4%9Fraf/3d-illustration-of-golden-number-2-or-two-isolated-on-beige-background.jpg?s=612x612&w=0&k=20&c=pQolQHRqPi0Ub0XEnxXSv3dTjEqxwYxcjFuC-pd0-1g=",
                ),
                profilKartiOlustur(
                  "Acelya",
                  "https://cdn.pixabay.com/photo/2023/09/29/07/52/rocks-8283191_1280.jpg",
                  "Acelya Gümele",
                  "https://www.istockphoto.com/photo/smiling-confident-brunette-girl-gm1420793518-466648347?utm_source=pixabay&utm_medium=affiliate&utm_campaign=SRP_photo_sponsored&utm_content=https%3A%2F%2Fpixabay.com%2Ftr%2Fphotos%2Fsearch%2F3%2520say%25C4%25B1s%25C4%25B1%2F&utm_term=3+say%C4%B1s%C4%B1",
                ),
                profilKartiOlustur(
                  "Hilal",
                  "https://cdn.pixabay.com/photo/2023/11/26/21/11/dog-8414313_1280.jpg",
                  "Hilal Çanakci",
                  "https://media.istockphoto.com/id/1158450495/tr/foto%C4%9Fraf/arka-plan-bahar-ho%C5%9F-g%C3%BCzel-elbise-gen%C3%A7-izole-zevk-mutlu-sevimli-ho%C5%9F-portre-yaz-zaman-%C3%A7ekici.jpg?s=612x612&w=0&k=20&c=0lTjrBPrGDyfYDa8E66XWSH0zQ1DXAfCC7C0uw5X9nc=",
                ),
                profilKartiOlustur(
                  "Selma",
                  "https://cdn.pixabay.com/photo/2023/10/05/11/47/sweet-potatoes-8295778_1280.jpg",
                  "Selma Gümele",
                  "https://media.istockphoto.com/id/1136304110/tr/foto%C4%9Fraf/kad%C4%B1n-el-%C3%BCzerine-ah%C5%9Fap-bir-blok-koyarak-ve-ah%C5%9Fap-masa-%C3%BCzerinde-istifleme-ah%C5%9Fap-bloklar.jpg?s=1024x1024&w=is&k=20&c=lzZ5f80EKpcgduUnLz-cybtYu9K-cf_37XB8DDPZUzk=",
                ),
                profilKartiOlustur(
                  "Leyla",
                  "https://cdn.pixabay.com/photo/2023/11/21/04/12/chicken-8402334_1280.jpg",
                  "Leyla Çanakci",
                  "https://media.istockphoto.com/id/527887140/tr/foto%C4%9Fraf/birthday-cupcakes.jpg?s=612x612&w=0&k=20&c=OSiqyqCrVxwsc8OxH1Z3MMsTg1JQnyohPLrXCmONn60=",
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          const GonderiKarti(
            profilResimLinki:
                "https://images.pexels.com/photos/15324791/pexels-photo-15324791/free-photo-of-peyzaj-orman-agaclar-pastoral.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
            aciklama: "Bir seyler",
            gecenSure: "60dk",
            gonderiResimLinki:
                "https://images.pexels.com/photos/1792626/pexels-photo-1792626.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
            isimSoyad: "Kaan Gumele",
          ),
          const GonderiKarti(
            profilResimLinki:
                "https://images.pexels.com/photos/1792626/pexels-photo-1792626.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
            aciklama: "İki seyler",
            gecenSure: "18dk",
            gonderiResimLinki:
                "https://images.pexels.com/photos/1792626/pexels-photo-1792626.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
            isimSoyad: "Aylin Canakci",
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        backgroundColor: Colors.purple[300],
        child: Icon(
          Icons.add_a_photo,
          color: Colors.white,
        ),
      ),
    );
  }

  Padding duyuru(String mesaj, String gecenSure) {
    return Padding(
      padding: EdgeInsets.all(12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            mesaj,
            style: TextStyle(fontSize: 15.0),
          ),
          Text(gecenSure)
        ],
      ),
    );
  }

  Widget profilKartiOlustur(String kullaniciAdi, String resimLinki,
      String isimSoyad, String kapakResimlinki) {
    return Material(
      child: InkWell(
        onTap: () async {
          bool veri = await Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext context) => ProfilSayfasi(
                    profilResimLinki: resimLinki,
                    kullaniciAdi: kullaniciAdi,
                    isimSoyad: isimSoyad,
                    kapakResimlinki: kapakResimlinki,
                  )));
          if (veri) {
            print("Kullanici profil sayfasindan döndü.");
          }
        },
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
          child: Column(
            children: [
              Stack(
                alignment: Alignment.topRight,
                children: [
                  Hero(
                    tag: kullaniciAdi,
                    child: Container(
                      height: 70.0,
                      width: 70.0,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(width: 2.0, color: Colors.grey),
                          borderRadius: BorderRadius.circular(35.0),
                          image: DecorationImage(
                            image: NetworkImage(resimLinki),
                            fit: BoxFit.contain,
                          )),
                    ),
                  ),
                  Container(
                    height: 20.0,
                    width: 20.0,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(25.0),
                      border: Border.all(
                        width: 2.0,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 4.0),
              Text(
                kullaniciAdi,
                style: const TextStyle(
                  fontSize: 15.0,
                  color: Colors.black,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
