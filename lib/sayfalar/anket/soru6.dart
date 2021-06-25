import 'package:flutter/material.dart';
import 'package:proje2/sayfalar/anket/soru7.dart';


class soru6 extends StatefulWidget {
  String AdSoyad = '';
  String cevap1 = '';
  String cevap2 = '';
  String cevap3 = '';
  String cevap4 = '';
  String cevap5 = '';
  soru6({required this.AdSoyad,required this.cevap1,required this.cevap2,required this.cevap3,required this.cevap4,required this.cevap5}) ;
  @override
  _soru6State createState() => _soru6State();
}
class _soru6State extends State<soru6> {

  String mevcutcevap = "";
  String mevcutcevap6 = "";

  void cevapkaydet(String) {
    mevcutcevap6 = mevcutcevap;
  }
  void sonrakisoru() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => soru7(AdSoyad: widget.AdSoyad,cevap1: widget.cevap1,cevap2 :widget.cevap2,cevap3: widget.cevap3,cevap4: widget.cevap4,cevap5 :widget.cevap5,cevap6: mevcutcevap6)),
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
                style: TextStyle(fontSize: 30.0,color: Colors.white) ,
              ),
              Text(
                'Mevcut Soru : ' + "6 \n" ,
                style: TextStyle(fontSize: 20,color: Colors.white),
              ),
              Text(
                'Her sınavdan sonra, sınav sonucu ile ilgili öğrencilere geri bildirim verilir',
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