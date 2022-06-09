import 'package:acilisekrani/anaekran.dart';
import 'package:acilisekrani/bar_icon_icons.dart';
import 'package:flutter/material.dart';
import 'kayıtol.dart';

class Giris extends StatefulWidget {
  const Giris({Key? key}) : super(key: key);

  @override
  _GirisState createState() => _GirisState();
}

int a = 0;

class _GirisState extends State<Giris> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(top: 105, left: 35, right: 35),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "Giriş Yap",
              style: TextStyle(fontSize: 45),
            ),
            Divider(
              thickness: 1,
              color: Colors.black,
              endIndent: MediaQuery.of(context).size.width / 2,
            ),
            SizedBox(
              height: 60,
            ),
            Text(
              "Email Adresi",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            Container(
              width: MediaQuery.of(context).size.width - 70,
              height: 30,
              child: TextField(
                cursorHeight: 22,
                cursorColor: Colors.orange,
              ),
            ),
            SizedBox(
              height: 45,
            ),
            Text(
              "Şifre",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            Container(
                width: MediaQuery.of(context).size.width - 70,
                height: 30,
                child: TextField(
                  cursorHeight: 22,
                  cursorColor: Colors.orange,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      splashColor: Colors.transparent,
                      onPressed: () {},
                      icon: Icon(Icons.remove_red_eye),
                    ),
                  ),
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.transparent,
                      shadowColor: Colors.transparent),
                  onPressed: () {},
                  child: Text(
                    "Şifremi Unuttum",
                    style: TextStyle(fontSize: 12, color: Colors.black),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50),
              child: Container(
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
                        splashFactory: NoSplash.splashFactory,
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.transparent),
                        shadowColor: MaterialStateProperty.all<Color>(
                            Colors.transparent),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(23),
                        ))),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Anaekran()));
                    },
                    child: Center(
                      child: Text(
                        "Giriş Yap",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    )),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Center(child: Text("veya", style: TextStyle(fontSize: 18))),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                    splashRadius: 1,
                    iconSize: 50,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Anaekran()));
                    },
                    icon: Icon(Icons.facebook)),
                IconButton(
                    splashRadius: 1,
                    iconSize: 50,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Anaekran()));
                    },
                    icon: Icon(BarIcon.twitter)),
                IconButton(
                    splashRadius: 1,
                    iconSize: 50,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Anaekran()));
                    },
                    icon: Icon(BarIcon.instagram)),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Hesabın yok mu?"),
                ElevatedButton(
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all<EdgeInsets>(
                          EdgeInsets.zero),
                      shadowColor:
                          MaterialStateProperty.all(Colors.transparent),
                      backgroundColor:
                          MaterialStateProperty.all(Colors.transparent)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Kayitol()));
                  },
                  child: Text(
                    "Kayıt Ol",
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.black),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    ));
  }
}
