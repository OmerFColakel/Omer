import 'package:flutter/material.dart';
import 'girisyap.dart';

class Acilisekrani extends StatefulWidget {
  const Acilisekrani({
    Key? key,
  }) : super(key: key);

  @override
  _AcilisekraniState createState() => _AcilisekraniState();
}

class _AcilisekraniState extends State<Acilisekrani> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomCenter,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 60),
                child: Container(
                  height: 825 / 2,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                        Color.fromRGBO(252, 130, 16, 1),
                        Color.fromRGBO(241, 109, 14, 1),
                        Color.fromRGBO(255, 152, 26, 1),
                        Color.fromRGBO(252, 130, 16, 1),
                      ])),
                ),
              ),
              Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 3),
                        color: Colors.orange,
                        blurRadius: 6,
                        spreadRadius: 0)
                  ],
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(image: AssetImage("logo/logo.jpeg")),
                ),
              )
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Text("Clothub'a Hoş Geldiniz",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
          SizedBox(height: 25),
          Container(
            width: 325,
            height: 115,
            child: Text(
              "Clothub olarak kullandığımız teknolojiler ile giyim sektörünü kendi merkezimizde toplayıp kullanıcı memnuniyeti yüksek bir e-ticaret şirketi olmayı hedefliyoruz.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            height: 45,
            width: 332,
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      offset: Offset(2, 3),
                      color: Colors.black,
                      blurRadius: 6,
                      spreadRadius: 0)
                ],
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color.fromRGBO(252, 130, 16, 1),
                      Color.fromRGBO(241, 109, 14, 1),
                      Color.fromRGBO(255, 152, 26, 1),
                      Color.fromRGBO(252, 130, 16, 1),
                    ]),
                borderRadius: BorderRadius.circular(23)),
            child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.transparent),
                    shadowColor:
                        MaterialStateProperty.all<Color>(Colors.transparent),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(23),
                    ))),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Giris()));
                },
                child: Center(
                  child: Text(
                    "Hadi Başlayalım",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                )),
          )
        ],
      ),
    );
  }
}
