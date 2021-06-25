import 'package:flutter/material.dart';

import 'bitis.dart';


class soru9 extends StatefulWidget {
  String AdSoyad = '';
  String cevap1 = '';
  String cevap2 = '';
  String cevap3 = '';
  String cevap4 = '';
  String cevap5 = '';
  String cevap6 = '';
  String cevap7 = '';
  String cevap8 = '';

  soru9({required this.AdSoyad,required this.cevap1,required this.cevap2,required this.cevap3,required this.cevap4,required this.cevap5,required this.cevap6,required this.cevap7,required this.cevap8}) ;
  @override
  _soru9State createState() => _soru9State();
}
class _soru9State extends State<soru9> {

  String mevcutcevap = "";
  String mevcutcevap9 = "";

  void cevapkaydet(String) {
    mevcutcevap9 = mevcutcevap;
  }
  void sonrakisoru() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => bitis(AdSoyad: widget.AdSoyad,cevap1: widget.cevap1,cevap2 :widget.cevap2,cevap3: widget.cevap3,cevap4: widget.cevap4,cevap5: widget.cevap5,cevap6: widget.cevap6,cevap7: widget.cevap7,cevap8: widget.cevap8,cevap9: mevcutcevap9)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xff383E42),
      appBar: AppBar(
        title: Text('Anket Başlangıç Sayfası'),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                '',
                style: TextStyle(fontSize: 30.0) ,
              ),
              Text(
                'Mevcut Soru : ' + "9 \n" ,
                style: TextStyle(fontSize: 20,color: Colors.white),
              ),
              Text(
                'Pandemi döneminde online eğitim ulaşılabilirdir',
                style: TextStyle(fontSize: 30,color: Colors.white),
                textAlign: TextAlign.center,

              ),
              Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xff293133), onPrimary: Colors.white,textStyle: TextStyle( fontWeight: FontWeight.bold)),
                    onPressed: () {
                      setState(() {
                        mevcutcevap = "Kesinlikle Katılıyorum";
                        cevapkaydet(mevcutcevap);
                      });
                      sonrakisoru();
                    },
                    child: Text(
                      'Kesinlikle Katılıyorum',
                      style: TextStyle(fontSize: 17.0),
                    ),
                  )
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xff293133), onPrimary: Colors.white,textStyle: TextStyle( fontWeight: FontWeight.bold)),
                    onPressed: () {
                      setState(() {
                        mevcutcevap = 'Katılıyorum';
                        cevapkaydet(mevcutcevap);
                      });
                      sonrakisoru();
                    },
                    child: Text(
                      'Katılıyorum',
                      style: TextStyle(fontSize: 17.0),
                    ),
                  )
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xff293133), onPrimary: Colors.white,textStyle: TextStyle( fontWeight: FontWeight.bold)),
                    onPressed: () {
                      setState(() {
                        mevcutcevap = 'Kararsızım';
                        cevapkaydet(mevcutcevap);
                      });
                      sonrakisoru();
                    },
                    child: Text(
                      'Kararsızım',
                      style: TextStyle(fontSize: 17.0),
                    ),
                  )
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xff293133), onPrimary: Colors.white,textStyle: TextStyle( fontWeight: FontWeight.bold)),
                    onPressed: () {
                      setState(() {
                        mevcutcevap = 'Katılmıyorum';
                        cevapkaydet(mevcutcevap);
                      });
                      sonrakisoru();
                    },
                    child: Text(
                      'Katılmıyorum',
                      style: TextStyle(fontSize: 17.0),
                    ),
                  )
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xff293133), onPrimary: Colors.white,textStyle: TextStyle( fontWeight: FontWeight.bold)),
                    onPressed: () {
                      setState(() {
                        mevcutcevap = 'Kesinlikle Katılmıyorum';
                        cevapkaydet(mevcutcevap);
                      });
                      sonrakisoru();
                    },
                    child: Text(
                      'Kesinlikle Katılmıyorum',
                      style: TextStyle(fontSize: 17.0),
                    ),
                  )
              ),
            ]
        ),
      ),
    );
  }
}