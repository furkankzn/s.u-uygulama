import 'package:flutter/material.dart';
import 'package:proje2/drawer/ana-drawer.dart';
import 'package:proje2/sayfalar/anasayfa/anasayfa.dart';

class hakkinda extends StatefulWidget {
  @override
  _hakkindaState createState() => _hakkindaState();
}

class _hakkindaState extends State<hakkinda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff383E42),
        appBar: AppBar(
          title: Text('İletişim'),
        ),
        drawer:drawer(),
        body: SafeArea(
            child: Column(
                children:[
                  Row(
                    children: <Widget>[
                      Text(' '),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Text(' Resmi sitesi: https://www.selcuk.edu.tr' ,style: TextStyle(color: Colors.white ,fontWeight: FontWeight.bold,fontSize: 15.0),),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Text(' '),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Text(' Telefon numarası: 0 (332) 241 00 41' ,style: TextStyle(color: Colors.white ,fontWeight: FontWeight.bold,fontSize: 15.0),),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Text(' '),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Text(' Resmi E-postası: iletisim@selcuk.edu.tr' ,style: TextStyle(color: Colors.white ,fontWeight: FontWeight.bold,fontSize: 15.0),),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Text(' '),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Text(' Rektörlük adresi: Selçuk Üniversitesi Rektörlüğü, Alaeddin\nKeykubat Yerleşkesi, Akademi Mah. Yeni İstanbul Cad.\nNo:369 Posta Kodu:42130 Selçuklu-Konya / TÜRKİYE' ,style: TextStyle(color: Colors.white ,fontWeight: FontWeight.bold,fontSize: 15.0),),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Text(' '),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Text(' Resmi Facebook sayfası: fb.com/selcukuniresmi#' ,style: TextStyle(color: Colors.white ,fontWeight: FontWeight.bold,fontSize: 15.0),),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Text(' '),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Text(' Resmi YouTube kanalı: Selçuk Üniversitesi' ,style: TextStyle(color: Colors.white ,fontWeight: FontWeight.bold,fontSize: 15.0),),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Text(' '),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Text(' Resmi Twitter hesabı: @selcukuniresmi' ,style: TextStyle(color: Colors.white ,fontWeight: FontWeight.bold,fontSize: 15.0),),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Text(' '),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Text(' Resmi İntagram hesabı: selcukuniresmi' ,style: TextStyle(color: Colors.white ,fontWeight: FontWeight.bold,fontSize: 15.0),),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Text(' '),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Text(' '),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Text(' '),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Text(' '),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Text(' '),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Text(' '),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Text(' '),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Text(' '),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Text(' '),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Text(' '),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Text(' '),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Text(' '),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Text(' '),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
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
                ]
            )
        )
    );

  }
}