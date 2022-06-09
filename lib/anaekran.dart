import 'package:flutter/material.dart';
import 'urunsayfasi.dart';
import 'bar_icon_icons.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Anaekran extends StatefulWidget {
  const Anaekran({Key? key}) : super(key: key);

  @override
  _AnaekranState createState() => _AnaekranState();
}

class _AnaekranState extends State<Anaekran> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        /*appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          title: Text("CLOTHUB",
              style: TextStyle(
                  fontFamily: "corcia", fontSize: 30, color: Colors.black)),
          actions: [
            IconButton(
                splashColor: Colors.transparent,
                onPressed: () {},
                icon: Icon(
                  Icons.add_circle_outline_outlined,
                  size: 37,
                )),
            SizedBox(
              width: 15,
            ),
            IconButton(
                splashColor: Colors.transparent,
                onPressed: () {},
                icon: Icon(
                  Icons.message,
                  size: 37,
                )),
            SizedBox(
              width: 15,
            ),
          ],
        ),*/
        body: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Container(
              height: 60,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text("CLOTHUB",
                        style: TextStyle(fontFamily: "corcia", fontSize: 30)),
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width - 75 - 242),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: IconButton(
                        splashColor: Colors.transparent,
                        onPressed: () {},
                        icon: Icon(
                          Icons.add_circle_outline_outlined,
                          size: 37,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: IconButton(
                        splashColor: Colors.transparent,
                        onPressed: () {},
                        icon: Icon(
                          Icons.message,
                          size: 37,
                        )),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                  blurRadius: 6,
                )
              ]),
              height: 85.5,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Hikaye(
                      "https://www.meme-arsenal.com/memes/a0730b37e732f04d75fc79a5258036f3.jpg"),
                  Hikaye(
                      "https://cdn.pixabay.com/photo/2016/03/12/23/18/man-1253004__340.jpg"),
                  Hikaye(
                      "https://cdn.pixabay.com/photo/2015/09/02/12/39/woman-918583__340.jpg"),
                  Hikaye(
                      "https://cdn.pixabay.com/photo/2019/11/03/20/11/portrait-4599553__340.jpg"),
                  Hikaye(
                      "https://cdn.pixabay.com/photo/2020/11/10/01/34/pet-5728249__340.jpg"),
                  Hikaye(
                      "https://cdn.pixabay.com/photo/2020/05/11/11/23/woman-5157666__340.jpg"),
                  Hikaye(
                      "https://cdn.pixabay.com/photo/2016/11/21/14/53/man-1845814__340.jpg"),
                  Hikaye(
                      "https://cdn.pixabay.com/photo/2016/03/09/15/10/man-1246508__340.jpg"),
                  Hikaye(
                      "https://cdn.pixabay.com/photo/2016/11/23/00/33/man-1851469__340.jpg"),
                  Hikaye(
                      "https://cdn.pixabay.com/photo/2015/03/03/08/55/portrait-657116__340.jpg"),
                  Hikaye(
                      "https://cdn.pixabay.com/photo/2021/06/25/13/22/girl-6363743__340.jpg"),
                  Hikaye(
                      "https://cdn.pixabay.com/photo/2014/04/12/14/59/portrait-322470__340.jpg")
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Container(
                height: 50,
                width: 0,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(2, 3),
                        color: Color.fromRGBO(36, 35, 35, 16),
                        blurRadius: 6,
                        spreadRadius: 0)
                  ],
                  border: Border.all(color: Colors.grey, width: 1.5),
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    IconButton(
                        splashColor: Colors.transparent,
                        onPressed: () {},
                        icon: Icon(Icons.search)),
                    Container(
                        width: MediaQuery.of(context).size.width / 2,
                        child: TextField(
                          decoration: InputDecoration.collapsed(hintText: ""),
                        )),
                    IconButton(
                      splashColor: Colors.transparent,
                      onPressed: () {},
                      icon: Icon(BarIcon.barcode_scan_icon_137911),
                      iconSize: 22,
                    ),
                    IconButton(
                      splashColor: Colors.transparent,
                      onPressed: () {},
                      icon: Icon(
                        Icons.camera,
                        size: 22,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            urun2(
                "https://cdn.dsmcdn.com/mnresize/1200/1800/ty64/product/media/images/20210201/17/59129630/136582584/1/1_org_zoom.jpeg",
                "Pull & Bear Kadın Nane Yeşili Crop Paça Straight Fit Jean",
                "https://cdn.dsmcdn.com/mnresize/1200/1800/ty64/product/media/images/20210201/17/59129630/136582584/2/2_org_zoom.jpeg",
                "https://cdn.dsmcdn.com/mnresize/1200/1800/ty63/product/media/images/20210201/17/59129630/136582584/3/3_org_zoom.jpeg",
                "https://cdn.dsmcdn.com/mnresize/1200/1800/ty63/product/media/images/20210201/17/59129630/136582584/4/4_org_zoom.jpeg",
                "https://cdn.dsmcdn.com/mnresize/1200/1800/ty63/product/media/images/20210201/17/59129630/136582584/5/5_org_zoom.jpeg",
                69,
                189,
                4.3,
                229.95,
                114.98,
                "https://cdn.dsmcdn.com/mnresize/1200/1800/ty82/product/media/images/20210310/15/70457374/105302832/2/2_org_zoom.jpg",
                "Mavi Star All Blue Gri Jean Pantolon",
                'https://cdn.dsmcdn.com/mnresize/1200/1800/ty81/product/media/images/20210310/15/70457374/105302832/4/4_org_zoom.jpg',
                'https://cdn.dsmcdn.com/mnresize/1200/1800/ty81/product/media/images/20210310/15/70457374/105302832/6/6_org_zoom.jpg',
                'https://cdn.dsmcdn.com/mnresize/1200/1800/ty80/product/media/images/20210310/15/70457374/105302832/1/1_org_zoom.jpg',
                'https://cdn.dsmcdn.com/mnresize/1200/1800/ty81/product/media/images/20210310/15/70457374/105302832/7/7_org_zoom.jpg',
                171,
                66,
                4.5,
                199.99,
                129.99),
            urun2(
                "https://cdn.dsmcdn.com/mnresize/1200/1800/ty147/product/media/images/20210720/16/111903596/207497488/1/1_org_zoom.jpg",
                "Pull & Bear Kadın Kahverengi Kontrast Fitilli Grafik Baskılı T-shirt",
                "https://cdn.dsmcdn.com/mnresize/1200/1800/ty149/product/media/images/20210720/16/111903596/207497488/2/2_org_zoom.jpg",
                "https://cdn.dsmcdn.com/mnresize/1200/1800/ty148/product/media/images/20210720/16/111903596/207497488/3/3_org_zoom.jpg",
                "https://cdn.dsmcdn.com/mnresize/1200/1800/ty149/product/media/images/20210720/16/111903596/207497488/4/4_org_zoom.jpg",
                "https://cdn.dsmcdn.com/mnresize/1200/1800/ty149/product/media/images/20210720/16/111903596/207497488/5/5_org_zoom.jpg",
                3,
                155,
                5.0,
                99.99,
                79.95,
                "https://cdn.dsmcdn.com/mnresize/1200/1800/ty81/product/media/images/20210305/19/69118526/149166977/1/1_org_zoom.jpg",
                "Happiness İst. Kadın Siyah Askılı Fitilli Elbise",
                "https://cdn.dsmcdn.com/mnresize/1200/1800/ty80/product/media/images/20210305/19/69118526/149166977/2/2_org_zoom.jpg",
                "https://cdn.dsmcdn.com/mnresize/1200/1800/ty80/product/media/images/20210305/19/69118526/149166977/3/3_org_zoom.jpg",
                "https://cdn.dsmcdn.com/mnresize/1200/1800/ty81/product/media/images/20210305/19/69118526/149166977/1/1_org_zoom.jpg",
                "https://cdn.dsmcdn.com/mnresize/1200/1800/ty80/product/media/images/20210305/19/69118526/149166977/2/2_org_zoom.jpg",
                410,
                670,
                4.3,
                64.95,
                58.46),
            urun2(
                "https://cdn.dsmcdn.com/mnresize/1200/1800/ty82/product/media/images/20210310/14/70431141/57260474/3/3_org_zoom.jpg",
                "Mavi Kadın Cindy Gri Jean Pantolon",
                "https://cdn.dsmcdn.com/mnresize/1200/1800/ty81/product/media/images/20210310/14/70431141/57260474/4/4_org_zoom.jpg",
                "https://cdn.dsmcdn.com/mnresize/1200/1800/ty80/product/media/images/20210310/14/70431141/57260474/5/5_org_zoom.jpg",
                "https://cdn.dsmcdn.com/mnresize/1200/1800/ty80/product/media/images/20210310/14/70431141/57260474/6/6_org_zoom.jpg",
                "https://cdn.dsmcdn.com/mnresize/1200/1800/ty82/product/media/images/20210310/14/70431141/57260474/1/1_org_zoom.jpg",
                35,
                31,
                4.4,
                180.49,
                159.99,
                "https://cdn.dsmcdn.com/mnresize/1200/1800/ty82/product/media/images/20210308/15/69800773/150057159/1/1_org_zoom.jpeg",
                "Riccon Buz Unisex Sneaker",
                "https://cdn.dsmcdn.com/mnresize/1200/1800/ty80/product/media/images/20210308/15/69800773/150057159/2/2_org_zoom.jpeg",
                "https://cdn.dsmcdn.com/mnresize/1200/1800/ty80/product/media/images/20210308/15/69800773/150057159/3/3_org_zoom.jpeg",
                "https://cdn.dsmcdn.com/mnresize/1200/1800/ty82/product/media/images/20210308/15/69800773/150057159/4/4_org_zoom.jpeg",
                "https://cdn.dsmcdn.com/mnresize/1200/1800/ty80/product/media/images/20210308/15/69800773/150057159/2/2_org_zoom.jpeg",
                25,
                35,
                4.1,
                399.99,
                120.20),
            urun2(
                "https://cdn.dsmcdn.com/mnresize/1200/1800/ty100/product/media/images/20210409/12/78886814/159879820/1/1_org_zoom.jpg",
                "Mavi Kadın There is Power Baskılı Gri Tişört",
                "https://cdn.dsmcdn.com/mnresize/1200/1800/ty99/product/media/images/20210409/12/78886814/159879820/2/2_org_zoom.jpg",
                "https://cdn.dsmcdn.com/mnresize/1200/1800/ty99/product/media/images/20210409/12/78886814/159879820/3/3_org_zoom.jpg",
                "https://cdn.dsmcdn.com/mnresize/1200/1800/ty101/product/media/images/20210409/12/78886814/159879820/4/4_org_zoom.jpg",
                "https://cdn.dsmcdn.com/mnresize/1200/1800/ty101/product/media/images/20210409/12/78886814/159879820/5/5_org_zoom.jpg",
                21,
                75,
                4.4,
                69.99,
                49.99,
                "https://cdn.dsmcdn.com/mnresize/1200/1800/ty152/product/media/images/20210730/14/114051207/78249550/1/1_org_zoom.jpg",
                "Y-London Bebe Mavi Bucket Şapka",
                "https://cdn.dsmcdn.com/mnresize/1200/1800/ty151/product/media/images/20210730/14/114051207/78249550/2/2_org_zoom.jpg",
                "https://cdn.dsmcdn.com/mnresize/1200/1800/ty152/product/media/images/20210730/14/114051207/78249550/3/3_org_zoom.jpg",
                "https://cdn.dsmcdn.com/mnresize/1200/1800/ty151/product/media/images/20210730/14/114051207/78249550/4/4_org_zoom.jpg",
                "https://cdn.dsmcdn.com/mnresize/1200/1800/ty151/product/media/images/20210730/14/114051207/78249550/5/5_org_zoom.jpg",
                315,
                150,
                4.3,
                99.54,
                29.49),
          ],
        ),
        bottomNavigationBar: BotNav());
  }

  Row urun2(
      String urunresmi,
      String urunadi,
      String ur21,
      String ur31,
      String ur41,
      String ur51,
      int yorumsayisi,
      int liked1,
      var puan,
      var indirimsiz,
      var indirimli,
      String urunresmi2,
      String urunadi2,
      String ur22,
      String ur32,
      String ur42,
      String ur52,
      int yorumsayisi2,
      int liked2,
      var puan2,
      var indirimsiz2,
      var indirimli2) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Urun(
            context: context,
            urunresmi: urunresmi,
            urunadi: urunadi,
            yorumsayisi: yorumsayisi,
            liked: liked1,
            puan: puan,
            indirimsiz: indirimsiz,
            indirimli: indirimli,
            ur2: ur21,
            ur3: ur31,
            ur4: ur41,
            ur5: ur51),
        Urun(
            context: context,
            urunresmi: urunresmi2,
            urunadi: urunadi2,
            yorumsayisi: yorumsayisi2,
            liked: liked2,
            puan: puan2,
            indirimsiz: indirimsiz2,
            indirimli: indirimli2,
            ur2: ur22,
            ur3: ur32,
            ur4: ur42,
            ur5: ur52),
      ],
    );
  }
}

// ignore: must_be_immutable
class Urun extends StatelessWidget {
  Urun({
    Key? key,
    required this.context,
    required this.urunresmi,
    required this.urunadi,
    required this.yorumsayisi,
    required this.liked,
    required this.puan,
    required this.indirimsiz,
    required this.indirimli,
    required this.ur2,
    required this.ur3,
    required this.ur4,
    required this.ur5,
  }) : super(key: key);

  final BuildContext context;
  final String urunresmi;
  final String urunadi;
  final int yorumsayisi;
  final int liked;
  double puan;
  double indirimsiz;
  double indirimli;
  final String ur2;
  final String ur3;
  final String ur4;
  final String ur5;

  @override
  Widget build(BuildContext context) {
    var indirim1 = indirimli / indirimsiz * 100;
    int indirim = (indirim1.toInt());
    indirim = 100 - indirim;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          alignment: AlignmentDirectional.topEnd,
          children: [
            Container(
              height: 246,
              width: 164,
              child: ElevatedButton(
                style: ButtonStyle(
                  shadowColor: MaterialStateProperty.all(Colors.transparent),
                  backgroundColor:
                      MaterialStateProperty.all(Colors.transparent),
                  padding: MaterialStateProperty.all(EdgeInsets.zero),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => UrunSayfasi(
                              urunresmi,
                              ur2,
                              ur3,
                              ur4,
                              ur5,
                              urunadi,
                              yorumsayisi,
                              puan,
                              liked,
                              indirimli,
                              indirimsiz)));
                },
                child: Container(
                  height: 246,
                  width: 164,
                  decoration: new BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(2, 3),
                            color: Color.fromRGBO(36, 35, 35, 16),
                            blurRadius: 6,
                            spreadRadius: 0)
                      ],
                      image: DecorationImage(
                          image: NetworkImage(urunresmi), fit: BoxFit.fill),
                      borderRadius: BorderRadius.circular(15)),
                ),
              ),
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.favorite_outline))
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          height: 40,
          width: 164,
          child: Text(
            urunadi,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
          ),
        ),
        Row(
          children: [
            RatingBar.builder(
              itemSize: 12,
              initialRating: puan,
              minRating: 0,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: Colors.black,
              ),
              onRatingUpdate: (rating) {
                print(rating);
              },
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              "($yorumsayisi)",
              style: TextStyle(fontSize: 12),
            ),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.orange[800],
                border: Border.all(color: Colors.grey, width: 1.5),
              ),
              height: 35,
              width: 35,
              child: Center(
                child: Text(
                  "%$indirim",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              children: [
                Text(
                  "$indirimsiz TL",
                  style: TextStyle(
                      decoration: TextDecoration.lineThrough,
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "$indirimli TL",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 30,
          width: 160,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey, width: 1.5),
            color: Colors.orange[800],
            borderRadius: BorderRadius.circular(23),
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromRGBO(252, 130, 16, 1),
                  Color.fromRGBO(241, 109, 14, 1),
                  Color.fromRGBO(255, 152, 26, 1),
                  Color.fromRGBO(252, 130, 16, 1),
                ]),
          ),
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
              onPressed: () {},
              child: Center(
                child: Text(
                  "Sepete Ekle",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              )),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}

class BotNav extends StatelessWidget {
  const BotNav({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedFontSize: 15,
      unselectedFontSize: 15,
      iconSize: 30,
      selectedItemColor: Colors.orange,
      unselectedItemColor: Colors.grey,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Anaekran()));
              },
              icon: Icon(
                Icons.home_outlined,
                size: 30,
              )),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Favorite()));
              },
              icon: Icon(
                Icons.favorite_border_outlined,
                size: 30,
              )),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.category_outlined),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.shopping_cart_outlined,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.portrait_outlined,
          ),
          label: '',
        ),
      ],
    );
  }
}

class Hikaye extends StatelessWidget {
  final resimlinki;
  Hikaye(this.resimlinki);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 2.0, top: 11),
      child: Column(
        children: <Widget>[
          Container(
            width: 65,
            height: 65,
            decoration: BoxDecoration(
                border: Border.all(
                    width: 2, color: Color.fromRGBO(70, 70, 70, 100)),
                borderRadius: BorderRadius.circular(35),
                image: DecorationImage(
                    fit: BoxFit.cover, image: NetworkImage(resimlinki))),
          ),
          SizedBox(
            height: 3,
          ),
        ],
      ),
    );
  }
}

class Favorite extends StatefulWidget {
  const Favorite({Key? key}) : super(key: key);

  @override
  _FavoriteState createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BotNav(),
    );
  }
}
