import 'package:flutter/material.dart';
import 'package:proje2/drawer/ana-drawer.dart';
import 'package:proje2/sayfalar/anasayfa/anasayfa.dart';


class iletisim extends StatefulWidget {
  const iletisim({Key? key}) : super(key: key);

  @override
  _iletisimState createState() => _iletisimState();
}

class _iletisimState extends State<iletisim> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff383E42),
        appBar: AppBar(
          title: Text('Hakkinda'),
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
                          Text('Bu uygulama Dr. Öğretim Üyesi Ahmet Cevahir ÇINAR \ntarafından yürütülen 3301456 kodlu MOBİL PROGRAMLAMA\ndersi kapsamında 183311057 numaralı Furkan KOZAN\ntarafından 25 Haziran 2021 günü yapılmıştır.' ,style: TextStyle(color: Colors.white ,fontWeight: FontWeight.bold,fontSize: 15.0),),
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
