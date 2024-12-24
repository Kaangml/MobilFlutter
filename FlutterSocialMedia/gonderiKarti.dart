// ignore_for_file: avoid_print
// ignore_for_file: file_names
import 'package:flutter/material.dart';

class GonderiKarti extends StatelessWidget {
  final String profilResimLinki;
  final String isimSoyad;
  final String gecenSure;
  final String gonderiResimLinki;
  final String aciklama;

  const GonderiKarti({
    super.key,
    required this.profilResimLinki,
    required this.isimSoyad,
    required this.gecenSure,
    required this.gonderiResimLinki,
    required this.aciklama,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Material(
        elevation: 1.0,
        borderRadius: BorderRadius.circular(12.0),
        child: Container(
          padding: const EdgeInsets.all(15.0),
          width: double.infinity,
          height: 388.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 50.0,
                        height: 45.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          color: Colors.indigo,
                          image: DecorationImage(
                            image: NetworkImage(profilResimLinki),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 12.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            isimSoyad,
                            style: const TextStyle(
                              fontSize: 15.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            gecenSure,
                            style: const TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Icon(Icons.more_vert),
                ],
              ),
              const SizedBox(
                height: 15.0,
              ),
              Text(
                aciklama,
                style: const TextStyle(
                  fontSize: 18.0,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Image.network(
                gonderiResimLinki,
                width: double.infinity,
                height: 200.0,
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 4.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IkonluButonum(
                      ikonum: Icons.favorite,
                      yaziadi: "Begen",
                      fonksiyonum: () {
                        print("Begen");
                      }),
                  IkonluButonum(
                    ikonum: Icons.comment,
                    yaziadi: "Yorum Yap",
                    fonksiyonum: () {
                      print("Yorum yapildi");
                    },
                  ),
                  TextButton.icon(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.share,
                        color: Colors.grey,
                      ),
                      label: const Text(
                        "Paylas",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class IkonluButonum extends StatelessWidget {
  final IconData ikonum;
  final String yaziadi;
  final dynamic fonksiyonum;
  const IkonluButonum(
      {super.key,
      required this.ikonum ,
      required this.yaziadi ,
      required this.fonksiyonum});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: InkWell(
        onTap: fonksiyonum,
        child: Container(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Icon(
                ikonum,
                color: Colors.grey,
              ),
              const SizedBox(
                width: 8.0,
              ),
              Text(
                yaziadi,
                style: const TextStyle(
                  color: Colors.grey,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
