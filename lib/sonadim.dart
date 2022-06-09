import 'package:flutter/material.dart';
import 'anaekran.dart';

class Sonasama extends StatelessWidget {
  const Sonasama({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(35),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              sb(),
              Text("Son Adım", style: TextStyle(fontSize: 45)),
              Divider(
                  thickness: 1,
                  color: Colors.black,
                  endIndent: MediaQuery.of(context).size.width / 2),
              sb(),
              Container(
                width: MediaQuery.of(context).size.width - 70,
                child: Center(
                  child: Text(
                    "Clothub'ın bütün avantajlarından yararlanabilmek için lütfen beden ölçülerinizi giriniz.",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              sb(),
              soru(context, "Kilo", "kg", 195),
              soru(context, "Boy", "cm", 195),
              soru(context, "Omuz Genişliği", "cm", 287),
              soru(context, "Göğüs Genişiği", "cm", 287),
              soru(context, "Bel Genişliği", "cm", 266),
              soru(context, "Kalça Genişliği", "cm", 285),
              soru(context, "Bacak Uzunluğu", "cm", 295),
              Container(
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
                      overlayColor:
                          MaterialStateProperty.all<Color>(Colors.transparent),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.transparent),
                      shadowColor:
                          MaterialStateProperty.all<Color>(Colors.transparent),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Anaekran()));
                    },
                    child: Center(
                      child: Text(
                        "Hesap Oluştur",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                    )),
              ),
              Center(
                child: TextButton(
                    style: ButtonStyle(
                        overlayColor:
                            MaterialStateProperty.all(Colors.transparent)),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Anaekran()));
                    },
                    child: Text(
                      "ATLA",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          decoration: TextDecoration.underline),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }

  Row soru(BuildContext context, String soru, String birim, int x) {
    return Row(
      children: [
        sb(),
        Text(
          soru,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width - x,
        ),
        Text(":"),
        Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Container(
              height: 22,
              width: 30,
              child: TextField(
                cursorColor: Colors.orange,
                cursorHeight: 22,
              )),
        ),
        Text(birim,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        sb(),
      ],
    );
  }

  SizedBox sb() {
    return SizedBox(
      height: 50,
    );
  }
}
