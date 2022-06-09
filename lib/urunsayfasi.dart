import 'package:acilisekrani/anaekran.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_swiper/flutter_swiper.dart';

// ignore: must_be_immutable
class UrunSayfasi extends StatefulWidget {
  int yorumsayisi, liked;
  double puan, indirimli, indirimsiz;
  final String urunresmi, urunadi, ur2, ur3, ur4, ur5;

  UrunSayfasi(
      this.urunresmi,
      this.ur2,
      this.ur3,
      this.ur4,
      this.ur5,
      this.urunadi,
      this.yorumsayisi,
      this.puan,
      this.liked,
      this.indirimli,
      this.indirimsiz);

  @override
  _UrunSayfasiState createState() => _UrunSayfasiState();
}

class _UrunSayfasiState extends State<UrunSayfasi> {
  @override
  Widget build(BuildContext context) {
    double indirimsiz = widget.indirimsiz, indirimli = widget.indirimli;
    int ys = widget.yorumsayisi;
    int liked = widget.liked;
    double oran = indirimli / indirimsiz * 100;
    int oran2 = 100 - (oran.toInt());
    return Scaffold(
      backgroundColor: Colors.white,
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[];
        },
        body: ListView(
          primary: false,
          physics: BouncingScrollPhysics(),
          children: <Widget>[
            Stack(
              alignment: AlignmentDirectional.topEnd,
              children: [
                ElevatedButton(
                    style: ButtonStyle(
                        elevation: MaterialStateProperty.all(0),
                        padding: MaterialStateProperty.all(EdgeInsets.zero)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SwiperWid(
                                  widget.urunresmi,
                                  widget.ur2,
                                  widget.ur3,
                                  widget.ur4,
                                  widget.ur5)));
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.width / 2 * 3,
                      decoration: new BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(widget.urunresmi),
                            fit: BoxFit.fill),
                      ),
                    )),
                Column(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.share_outlined),
                        iconSize: 50),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.notifications_outlined),
                        iconSize: 50),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.compare_outlined),
                        iconSize: 50)
                  ],
                ),
              ],
            ),
            Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Center(
                      child:
                          Text(widget.urunadi, style: TextStyle(fontSize: 20)),
                    ))),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15),
              child: Row(
                children: [
                  RatingBar.builder(
                    itemSize: 20,
                    initialRating: widget.puan,
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
                  Text(
                    "($ys)",
                    style: TextStyle(fontSize: 12),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 10 * 4,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.favorite_border_outlined),
                    padding: EdgeInsets.all(0),
                    splashRadius: 20,
                  ),
                  Text("$liked"),
                ],
              ),
            ),
            divider(),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15),
              child: Row(children: [
                Text("Satıcı"),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 5 * 3,
                ),
                Text("Mavi"),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8),
                  child: Container(
                    child: Center(
                      child: Text("9.6", style: TextStyle(fontSize: 12)),
                    ),
                    height: 15,
                    width: 20,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(color: Colors.grey, spreadRadius: 1)
                        ],
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.green),
                  ),
                ),
                Icon(
                  Icons.info_outline,
                  size: 15,
                )
              ]),
            ),
            divider(),
            Center(
              child: Container(
                height: 32,
                width: 220,
                decoration: BoxDecoration(
                    boxShadow: [BoxShadow(color: Colors.grey, spreadRadius: 1)],
                    borderRadius: BorderRadius.circular(23),
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          Color.fromRGBO(252, 130, 16, 1),
                          Color.fromRGBO(241, 109, 14, 1),
                          Color.fromRGBO(255, 152, 26, 1),
                          Color.fromRGBO(252, 130, 16, 1),
                        ])),
                child: ElevatedButton(
                  style: ButtonStyle(
                      shadowColor:
                          MaterialStateProperty.all(Colors.transparent),
                      backgroundColor:
                          MaterialStateProperty.all(Colors.transparent)),
                  onPressed: () {},
                  child: Center(
                    child: Text("ÖN İZLEME",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold)),
                  ),
                ),
              ),
            ),
            divider(),
            Text("    Bu Ürünle Yapılmış Kombinler"),
            Kombin(),
            divider(),
            Column(
              children: [
                A("Ürün Değerlendirmeleri"),
                A("Ürün Açıklamaları"),
                A("Soru & Cevap"),
                A("Kampanyalar"),
                A("Taksit Seçenekleri"),
              ],
            ),
            divider(),
            Padding(
                padding: const EdgeInsets.only(left: 13),
                child: Text("Bu Kategoride En Çok Satılmış Ürünler")),
            Category(
                "https://cdn.dsmcdn.com/mnresize/1200/1800/ty82/product/media/images/20210310/16/70475077/10036843/1/1_org_zoom.jpg",
                "https://cdn.dsmcdn.com/mnresize/1200/1800/ty70/product/media/images/20210215/15/62841988/140280734/1/1_org_zoom.jpg",
                "https://cdn.dsmcdn.com/mnresize/1200/1800/ty82/product/media/images/20210310/14/70431141/57260474/3/3_org_zoom.jpg",
                "https://cdn.dsmcdn.com/mnresize/1200/1800/ty80/product/media/images/20210310/16/70475077/10036843/2/2_org_zoom.jpg",
                "https://cdn.dsmcdn.com/mnresize/1200/1800/ty69/product/media/images/20210215/15/62841988/140280734/2/2_org_zoom.jpg",
                "https://cdn.dsmcdn.com/mnresize/1200/1800/ty81/product/media/images/20210310/14/70431141/57260474/4/4_org_zoom.jpg",
                "https://cdn.dsmcdn.com/mnresize/1200/1800/ty82/product/media/images/20210310/16/70475077/10036843/3/3_org_zoom.jpg",
                "https://cdn.dsmcdn.com/mnresize/1200/1800/ty68/product/media/images/20210215/15/62841988/140280734/3/3_org_zoom.jpg",
                "https://cdn.dsmcdn.com/mnresize/1200/1800/ty80/product/media/images/20210310/14/70431141/57260474/5/5_org_zoom.jpg",
                "https://cdn.dsmcdn.com/mnresize/1200/1800/ty82/product/media/images/20210310/16/70475077/10036843/4/4_org_zoom.jpg",
                "https://cdn.dsmcdn.com/mnresize/1200/1800/ty69/product/media/images/20210215/15/62841988/140280734/5/5_org_zoom.jpg",
                "https://cdn.dsmcdn.com/mnresize/1200/1800/ty80/product/media/images/20210310/14/70431141/57260474/6/6_org_zoom.jpg",
                "https://cdn.dsmcdn.com/mnresize/1200/1800/ty82/product/media/images/20210310/16/70475077/10036843/5/5_org_zoom.jpg",
                "https://cdn.dsmcdn.com/mnresize/1200/1800/ty70/product/media/images/20210215/15/62841988/140280734/6/6_org_zoom.jpg",
                "https://cdn.dsmcdn.com/mnresize/1200/1800/ty82/product/media/images/20210310/14/70431141/57260474/1/1_org_zoom.jpg",
                "Mavi Kadın Cindy Vintage Jean Pantolon",
                "Mavi Star All Blue Koyu Jean Pantolon",
                "Mavi Kadın Cindy Gri Jean Pantolon ",
                60,
                55,
                31,
                574,
                191,
                35,
                4.4,
                2.0,
                4.5,
                189.99,
                209.99,
                180.49,
                90.89,
                175.65,
                159.99),
            divider(),
            Padding(
                padding: const EdgeInsets.only(left: 13),
                child: Text("Sıklıkla Birlikte Alınanlar")),
            Category(
                "https://cdn.dsmcdn.com/mnresize/1200/1800/ty81/product/media/images/20210310/17/70491633/145702133/1/1_org_zoom.jpg", //url1
                "https://cdn.dsmcdn.com/mnresize/1200/1800/ty100/product/media/images/20210409/12/78886814/159879820/1/1_org_zoom.jpg",
                "https://cdn.dsmcdn.com/mnresize/1200/1800/ty78/product/media/images/20210304/22/68789889/146420434/1/1_org_zoom.jpg",
                "https://cdn.dsmcdn.com/mnresize/1200/1800/ty81/product/media/images/20210310/17/70491633/145702133/2/2_org_zoom.jpg", //url2
                "https://cdn.dsmcdn.com/mnresize/1200/1800/ty99/product/media/images/20210409/12/78886814/159879820/2/2_org_zoom.jpg",
                "https://cdn.dsmcdn.com/mnresize/1200/1800/ty81/product/media/images/20210304/22/68789889/146420434/2/2_org_zoom.jpg",
                "https://cdn.dsmcdn.com/mnresize/1200/1800/ty82/product/media/images/20210310/17/70491633/145702133/3/3_org_zoom.jpg", //url3
                "https://cdn.dsmcdn.com/mnresize/1200/1800/ty99/product/media/images/20210409/12/78886814/159879820/3/3_org_zoom.jpg",
                "https://cdn.dsmcdn.com/mnresize/1200/1800/ty78/product/media/images/20210304/22/68789889/146420434/3/3_org_zoom.jpg",
                "https://cdn.dsmcdn.com/mnresize/1200/1800/ty83/product/media/images/20210313/1/71002691/145702133/1/1_org_zoom.jpg", //url4
                "https://cdn.dsmcdn.com/mnresize/1200/1800/ty101/product/media/images/20210409/12/78886814/159879820/4/4_org_zoom.jpg",
                "https://cdn.dsmcdn.com/mnresize/1200/1800/ty81/product/media/images/20210304/22/68789889/146420434/4/4_org_zoom.jpg",
                "https://cdn.dsmcdn.com/mnresize/1200/1800/ty80/product/media/images/20210310/17/70491633/145702133/4/4_org_zoom.jpg", //url5
                "https://cdn.dsmcdn.com/mnresize/1200/1800/ty101/product/media/images/20210409/12/78886814/159879820/5/5_org_zoom.jpg",
                "https://cdn.dsmcdn.com/mnresize/1200/1800/ty78/product/media/images/20210304/22/68789889/146420434/5/5_org_zoom.jpg",
                "TRENDYOLMİLLA Lacivert Yüksek Bel Wide Leg Jeans", //isim
                "Mavi Kadın There is Power Baskılı Gri Tişört",
                "Mavi Kadın Papatya Baskılı Siyah Tişört",
                350, //liked
                72,
                52,
                51, //yorum
                23,
                135,
                4.1, //puan
                4.3,
                4.7,
                189.99, //indirimsiz
                49.99,
                160.49,
                80.00, //indirimli
                34.99,
                129.99),
            divider(),
            Padding(
                padding: const EdgeInsets.only(left: 13),
                child: Text("Son Baktığınız Ürünler")),
            Category(
                "https://cdn.dsmcdn.com/mnresize/1200/1800/ty64/product/media/images/20210201/17/59129630/136582584/1/1_org_zoom.jpeg",
                "https://cdn.dsmcdn.com/mnresize/1200/1800/ty147/product/media/images/20210720/16/111903596/207497488/1/1_org_zoom.jpg",
                "https://cdn.dsmcdn.com/mnresize/1200/1800/ty81/product/media/images/20210305/19/69118526/149166977/1/1_org_zoom.jpg",
                "https://cdn.dsmcdn.com/mnresize/1200/1800/ty64/product/media/images/20210201/17/59129630/136582584/2/2_org_zoom.jpeg",
                "https://cdn.dsmcdn.com/mnresize/1200/1800/ty149/product/media/images/20210720/16/111903596/207497488/2/2_org_zoom.jpg",
                "https://cdn.dsmcdn.com/mnresize/1200/1800/ty80/product/media/images/20210305/19/69118526/149166977/2/2_org_zoom.jpg",
                "https://cdn.dsmcdn.com/mnresize/1200/1800/ty63/product/media/images/20210201/17/59129630/136582584/3/3_org_zoom.jpeg",
                "https://cdn.dsmcdn.com/mnresize/1200/1800/ty148/product/media/images/20210720/16/111903596/207497488/3/3_org_zoom.jpg",
                "https://cdn.dsmcdn.com/mnresize/1200/1800/ty80/product/media/images/20210305/19/69118526/149166977/3/3_org_zoom.jpg",
                "https://cdn.dsmcdn.com/mnresize/1200/1800/ty63/product/media/images/20210201/17/59129630/136582584/4/4_org_zoom.jpeg",
                "https://cdn.dsmcdn.com/mnresize/1200/1800/ty149/product/media/images/20210720/16/111903596/207497488/4/4_org_zoom.jpg",
                "https://cdn.dsmcdn.com/mnresize/1200/1800/ty81/product/media/images/20210305/19/69118526/149166977/1/1_org_zoom.jpg",
                "https://cdn.dsmcdn.com/mnresize/1200/1800/ty63/product/media/images/20210201/17/59129630/136582584/5/5_org_zoom.jpeg",
                "https://cdn.dsmcdn.com/mnresize/1200/1800/ty149/product/media/images/20210720/16/111903596/207497488/5/5_org_zoom.jpg",
                "https://cdn.dsmcdn.com/mnresize/1200/1800/ty80/product/media/images/20210305/19/69118526/149166977/2/2_org_zoom.jpg",
                "Pull & Bear Kadın Nane Yeşili Crop Paça Straight Fit Jean",
                "Pull & Bear Kadın Kahverengi Kontrast Fitilli Grafik Baskılı T-shirt",
                "Happiness İst. Kadın Siyah Askılı Fitilli Elbise PG00004",
                189, //like
                155,
                670,
                69, //yorum
                3,
                410,
                4.3, //puan
                5.0,
                3.9,
                229.95, //indirimsiz
                99.99,
                64.95,
                114.98, //indirimli
                79.95,
                58.46),
            divider(),
            Padding(
                padding: const EdgeInsets.only(left: 13),
                child: Text("Bizim Önerilerimiz")),
            Category(
                "https://cdn.dsmcdn.com/mnresize/1200/1800/ty161/product/media/images/20210818/22/119632576/157595610/1/1_org_zoom.jpg",
                "https://cdn.dsmcdn.com/mnresize/1200/1800/ty60/product/media/images/20210126/18/57441998/63346589/1/1_org_zoom.jpg",
                "https://cdn.dsmcdn.com/mnresize/1200/1800/ty100/product/media/images/20210406/19/78328103/120875246/1/1_org_zoom.jpg",
                "https://cdn.dsmcdn.com/mnresize/1200/1800/ty159/product/media/images/20210818/22/119632576/157595610/2/2_org_zoom.jpg",
                "https://cdn.dsmcdn.com/mnresize/1200/1800/ty59/product/media/images/20210126/18/57441998/63346589/2/2_org_zoom.jpg",
                "https://cdn.dsmcdn.com/mnresize/1200/1800/ty99/product/media/images/20210406/19/78328103/120875246/2/2_org_zoom.jpg",
                "https://cdn.dsmcdn.com/mnresize/1200/1800/ty159/product/media/images/20210818/22/119632576/157595610/3/3_org_zoom.jpg",
                "https://cdn.dsmcdn.com/mnresize/1200/1800/ty59/product/media/images/20210126/18/57441998/63346589/3/3_org_zoom.jpg",
                "https://cdn.dsmcdn.com/mnresize/1200/1800/ty99/product/media/images/20210406/19/78328103/120875246/3/3_org_zoom.jpg",
                "https://cdn.dsmcdn.com/mnresize/1200/1800/ty151/product/media/images/20210803/11/115297607/182587487/1/1_org_zoom.jpg",
                "https://cdn.dsmcdn.com/mnresize/1200/1800/ty60/product/media/images/20210126/18/57441998/63346589/4/4_org_zoom.jpg",
                "https://cdn.dsmcdn.com/mnresize/1200/1800/ty99/product/media/images/20210406/19/78328103/120875246/4/4_org_zoom.jpg",
                "https://cdn.dsmcdn.com/mnresize/1200/1800/ty159/product/media/images/20210818/22/119632637/157478943/1/1_org_zoom.jpg",
                "https://cdn.dsmcdn.com/mnresize/1200/1800/ty60/product/media/images/20210126/18/57441998/63346589/5/5_org_zoom.jpg",
                "https://cdn.dsmcdn.com/mnresize/1200/1800/ty101/product/media/images/20210406/19/78328103/120875246/5/5_org_zoom.jpg",
                "Hediyem Sende Kadın Siyah Kalın Bağcıklı Günlük Casual Ayakkabı",
                "TRENDYOLMİLLA Beyaz Kolsuz Basic Örme T-Shirt",
                "Mango Motorcu Tarz Ceket",
                60, //like
                55,
                31,
                197, //yorum
                2163,
                219,
                3.6, //puan
                4.3,
                3.9,
                189.00, //indirimsiz
                44.99,
                299.99,
                29.99, //indirimli
                35.99,
                119.99),
          ],
        ),
      ),
      bottomNavigationBar:
          BotNav2(oran2: oran2, indirimsiz: indirimsiz, indirimli: indirimli),
    );
  }

  Row A(String isim) {
    return Row(
      children: [
        IconButton(onPressed: () {}, icon: Icon(Icons.arrow_right)),
        Text(isim)
      ],
    );
  }

  Divider divider() {
    return Divider(
      color: Colors.black,
    );
  }
}

// ignore: must_be_immutable
class Category extends StatelessWidget {
  final urunresmi1,
      urunresmi2,
      urunresmi3,
      urunadi1,
      urunadi2,
      urunadi3,
      url21,
      url22,
      url23,
      url31,
      url32,
      url33,
      url41,
      url42,
      url43,
      url51,
      url52,
      url53;
  var liked1,
      liked2,
      liked3,
      yorum1,
      yorum2,
      yorum3,
      puan1,
      puan2,
      puan3,
      indirimsiz1,
      indirimsiz2,
      indirimsiz3,
      indirimli1,
      indirimli2,
      indirimli3;
  Category(
      this.urunresmi1,
      this.urunresmi2,
      this.urunresmi3,
      this.url21,
      this.url22,
      this.url23,
      this.url31,
      this.url32,
      this.url33,
      this.url41,
      this.url42,
      this.url43,
      this.url51,
      this.url52,
      this.url53,
      this.urunadi1,
      this.urunadi2,
      this.urunadi3,
      this.liked1,
      this.liked2,
      this.liked3,
      this.yorum1,
      this.yorum2,
      this.yorum3,
      this.puan1,
      this.puan2,
      this.puan3,
      this.indirimsiz1,
      this.indirimsiz2,
      this.indirimsiz3,
      this.indirimli1,
      this.indirimli2,
      this.indirimli3);
  @override
  Widget build(BuildContext context) {
    final urunresmi = [urunresmi1, urunresmi2, urunresmi3];
    final url2 = [url21, url22, url23];
    final url3 = [url31, url32, url33];
    final url4 = [url41, url42, url43];
    final url5 = [url51, url52, url53];
    final urunadi = [urunadi1, urunadi2, urunadi3];
    var yorumsayisi = [yorum1, yorum2, yorum3];
    var liked = [liked1, liked2, liked3];
    var puan = [puan1, puan2, puan3];
    var indirimsiz = [indirimsiz1, indirimsiz2, indirimsiz3];
    var indirimli = [indirimli1, indirimli2, indirimli3];
    return Container(
      height: 430,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: urunresmi.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
            child: Urun(
                context: context,
                urunresmi: urunresmi[index],
                urunadi: urunadi[index],
                yorumsayisi: yorumsayisi[index],
                liked: liked[index],
                puan: puan[index],
                indirimsiz: indirimsiz[index],
                indirimli: indirimli[index],
                ur2: url2[index],
                ur3: url3[index],
                ur4: url4[index],
                ur5: url5[index]),
          );
        },
      ),
    );
  }
}

class Kombin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final linklist = [
      "https://www.meme-arsenal.com/memes/a0730b37e732f04d75fc79a5258036f3.jpg",
      "https://cdn.pixabay.com/photo/2016/03/12/23/18/man-1253004__340.jpg",
      "https://cdn.pixabay.com/photo/2015/09/02/12/39/woman-918583__340.jpg",
      "https://cdn.pixabay.com/photo/2019/11/03/20/11/portrait-4599553__340.jpg",
      "https://cdn.pixabay.com/photo/2020/11/10/01/34/pet-5728249__340.jpg",
      "https://cdn.pixabay.com/photo/2020/05/11/11/23/woman-5157666__340.jpg",
      "https://cdn.pixabay.com/photo/2016/11/21/14/53/man-1845814__340.jpg",
      "https://cdn.pixabay.com/photo/2016/03/09/15/10/man-1246508__340.jpg",
      "https://cdn.pixabay.com/photo/2016/11/23/00/33/man-1851469__340.jpg",
      "https://cdn.pixabay.com/photo/2015/03/03/08/55/portrait-657116__340.jpg",
      "https://cdn.pixabay.com/photo/2021/06/25/13/22/girl-6363743__340.jpg",
      "https://cdn.pixabay.com/photo/2014/04/12/14/59/portrait-322470__340.jpg"
    ];
    return Container(
      height: 85.5,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: linklist.length,
        itemBuilder: (BuildContext context, int index) {
          return Hikaye(linklist[index]);
        },
      ),
    );
  }
}

// ignore: must_be_immutable

class BotNav2 extends StatelessWidget {
  const BotNav2({
    Key? key,
    required this.oran2,
    required this.indirimsiz,
    required this.indirimli,
  }) : super(key: key);

  final int oran2;
  final double indirimsiz;
  final double indirimli;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 8),
            child: Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(color: Colors.grey, spreadRadius: 1),
              ], color: Colors.orange[800]),
              height: 50,
              width: 50,
              child: Center(
                child: Text("%$oran2",
                    style: TextStyle(fontSize: 20, color: Colors.white)),
              ),
            ),
          ),
          Container(
            height: 50,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("$indirimsiz TL",
                    style: TextStyle(decoration: TextDecoration.lineThrough)),
                Text("$indirimli TL")
              ],
            ),
          ),
          SizedBox(width: MediaQuery.of(context).size.width / 13),
          Container(
            child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  shadowColor: MaterialStateProperty.all(Colors.transparent),
                  padding: MaterialStateProperty.all(EdgeInsets.all(0)),
                  backgroundColor:
                      MaterialStateProperty.all(Colors.transparent)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "SEPETE EKLE",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("M",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black)),
                          SizedBox(
                            height: 50,
                            width: 30,
                            child: IconButton(
                                iconSize: 20,
                                onPressed: () {},
                                icon: Icon(
                                  Icons.arrow_upward,
                                  color: Colors.black,
                                )),
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 1,
                          )
                        ],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: 40,
                      width: 60)
                ],
              ),
            ),
            decoration: BoxDecoration(
                boxShadow: [BoxShadow(color: Colors.grey, spreadRadius: 1)],
                borderRadius: BorderRadius.circular(23),
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Color.fromRGBO(252, 130, 16, 1),
                      Color.fromRGBO(241, 109, 14, 1),
                      Color.fromRGBO(255, 152, 26, 1),
                      Color.fromRGBO(252, 130, 16, 1),
                    ])),
            height: 50,
            width: MediaQuery.of(context).size.width * 11 / 20,
          ),
        ],
      ),
      height: 60,
    );
  }
}

class SwiperWid extends StatefulWidget {
  final ur1, ur2, ur3, ur4, ur5;
  SwiperWid(
    this.ur1,
    this.ur2,
    this.ur3,
    this.ur4,
    this.ur5,
  );
  @override
  _SwiperWidState createState() => _SwiperWidState();
}

class _SwiperWidState extends State<SwiperWid> {
  @override
  Widget build(BuildContext context) {
    final imageList = [
      widget.ur1,
      widget.ur2,
      widget.ur3,
      widget.ur4,
      widget.ur5
    ];
    return Container(
      color: Colors.white,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Swiper(
          control: SwiperControl(color: Colors.amber),
          itemWidth: MediaQuery.of(context).size.width,
          itemHeight: MediaQuery.of(context).size.width / 2 * 3,
          viewportFraction: 1,
          scale: 1,
          itemCount: imageList.length,
          itemBuilder: (context, index) {
            return Image.network(
              imageList[index],
            );
          },
          pagination: SwiperPagination(
            builder: DotSwiperPaginationBuilder(color: Colors.orange),
            alignment: Alignment.bottomCenter,
          ),
        ),
      ),
    );
  }
}
