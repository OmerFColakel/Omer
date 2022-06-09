import 'dart:ui';
import 'sonadim.dart';
import 'package:flutter/material.dart';

class Kayitol extends StatefulWidget {
  const Kayitol({Key? key}) : super(key: key);

  @override
  _KayitolState createState() => _KayitolState();
}

class _KayitolState extends State<Kayitol> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.only(left: 35, right: 35, top: 105),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Kayıt Ol",
              style: TextStyle(fontSize: 45),
            ),
            Divider(
              thickness: 1,
              color: Colors.black,
              endIndent: MediaQuery.of(context).size.width / 2,
            ),
            k3(20),
            k1("Ad"),
            k2(context),
            k3(20),
            k1("Soyad"),
            k2(context),
            k3(20),
            k1("Kullanıcı Adı"),
            k2(context),
            k3(20),
            k1("Email Adresi"),
            k2(context),
            k3(20),
            k1("Şifre"),
            k2(context),
            k3(20),
            k1("Yeniden Şifre"),
            k2(context),
            k3(20),
            Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.check_box_outline_blank)),
                Container(
                    height: 34,
                    width: 274,
                    child: Text(
                        "Kullanıcı Sözleşmesi ve Gizlilik Politikasını Onaylıyorum."))
              ],
            ),
            SizedBox(
              height: 20,
            ),
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
                        MaterialPageRoute(builder: (context) => Sonasama()));
                  },
                  child: Center(
                    child: Text(
                      "Hesap Oluştur",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  )),
            )
          ],
        ),
      ),
    ));
  }

  SizedBox k3(int x) {
    return SizedBox(
      height: 20,
    );
  }

  Container k2(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 70,
      height: 30,
      child: TextField(
        cursorHeight: 22,
        cursorColor: Colors.orange,
      ),
    );
  }

  Text k1(String name) {
    return Text(
      name,
      style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
    );
  }
}
