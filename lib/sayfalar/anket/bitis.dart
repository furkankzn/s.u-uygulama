import 'package:flutter/material.dart';
import 'package:proje2/drawer/ana-drawer.dart';
import 'package:proje2/sayfalar/anasayfa/anasayfa.dart';

class bitis extends StatefulWidget {
  String AdSoyad = '';
  String cevap1 = '';
  String cevap2 = '';
  String cevap3 = '';
  String cevap4 = '';
  String cevap5 = '';
  String cevap6 = '';
  String cevap7 = '';
  String cevap8 = '';
  String cevap9 = '';
  bitis({required this.AdSoyad,required this.cevap1,required this.cevap2,required this.cevap3,required this.cevap4,required this.cevap5,required this.cevap6,required this.cevap7,required this.cevap8,required this.cevap9});
  @override
  _sorularState createState() => _sorularState();
}

class _sorularState extends State<bitis> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff383E42),
      appBar: AppBar(
        title: Text('Anket Başlangıç Sayfası'),
      ),
      drawer:drawer(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Soru 1) Ders planları hedefleri açıktır',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
              Text('Cevabınız : '+ widget.cevap1, style: TextStyle(color: Colors.redAccent ,fontWeight: FontWeight.bold)),
              Text('\nSoru 2) Derslerde öğretim teknolojisi etkili olarak kullanılmaktadır',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
              Text('Cevabınız : '+ widget.cevap2 ,style: TextStyle(color: Colors.redAccent ,fontWeight: FontWeight.bold),),
              Text('\nSoru 3) Programda ki dersler uygulama açısından yeterlidir',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
              Text('Cevabınız : '+ widget.cevap3 ,style: TextStyle(color: Colors.redAccent ,fontWeight: FontWeight.bold),),
              Text('\nSoru 4) Derslerin amaçlarını içeren ders planı öğrencilere verilmektedir',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
              Text('Cevabınız : '+ widget.cevap4 ,style: TextStyle(color: Colors.redAccent ,fontWeight: FontWeight.bold),),
              Text('\nSoru 5) Öğretim elemanları ders saatlerini etkili olarak kullanmaktadır',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
              Text('Cevabınız : '+ widget.cevap5 ,style: TextStyle(color: Colors.redAccent ,fontWeight: FontWeight.bold),),
              Text('\nSoru 6) Her sınavdan sonra, sınav sonucu ile ilgili öğrencilere geri bildirim verilir',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
              Text('Cevabınız : '+ widget.cevap6 ,style: TextStyle(color: Colors.redAccent ,fontWeight: FontWeight.bold),),
              Text('\nSoru 7) Her öğrenciye danışman atanmaktadır',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
              Text('Cevabınız : '+ widget.cevap7 ,style: TextStyle(color: Colors.redAccent ,fontWeight: FontWeight.bold),),
              Text('\nSoru 8) Danışmanım bana gerekli zamanı ayırmaktadır',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
              Text('Cevabınız : '+ widget.cevap8 ,style: TextStyle(color: Colors.redAccent ,fontWeight: FontWeight.bold),),
              Text('\nSoru 9) Pandemi döneminde online eğitim ulaşılabilirdir',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
              Text('Cevabınız : '+ widget.cevap9 ,style: TextStyle(color: Colors.redAccent ,fontWeight: FontWeight.bold),),
              Text('\n'+widget.AdSoyad,style: TextStyle(color: Colors.white ,fontWeight: FontWeight.bold,fontSize: 15.0,),),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 2.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xff293133), onPrimary: Colors.white,textStyle: TextStyle( fontWeight: FontWeight.bold)),
                  onPressed:  () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => anasayfa()),
                    );
                  },
                  child: Text('Anasayfaya Dön'),

                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}