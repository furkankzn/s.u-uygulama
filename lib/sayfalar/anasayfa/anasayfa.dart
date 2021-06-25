// @dart=2.9
import 'package:flutter/material.dart';
import 'package:proje2/drawer/ana-drawer.dart';
import 'package:proje2/sayfalar/anket/anketbaslangic.dart';
import 'package:proje2/sayfalar/hakkinda.dart';
import 'package:proje2/sayfalar/havadurumu.dart';
import 'package:proje2/sayfalar/iletisim.dart';
import 'package:proje2/sayfalar/yapilacak.dart';

class anasayfa extends StatefulWidget {
  @override
  _anasayfaState createState() => _anasayfaState();
}

class _anasayfaState extends State<anasayfa> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff383E42),
      appBar: AppBar(
          title:  Text("S.Ü Uygulaması")
      ),
      drawer:drawer(),
      body: SafeArea(
        child: Column(
          children: [
            Container(
                width: 150,
                height: 150,
                margin: EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(image: NetworkImage(
                      'https://i.hizliresim.com/bufq9gp.png'),
                      fit: BoxFit.fill
                  ),
                )
            ),
            Row(
              children: <Widget>[
                Text(' '),
              ],
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 410.0,
                  height: 50.0,
                  // ignore: deprecated_member_use
                  child: new RaisedButton(
                    child: new Text('Hava Durumu',style: TextStyle(fontSize: 24 ,color: Colors.white, fontWeight: FontWeight.bold)),
                    color: Color(0xff293133),
                    textColor: Colors.white,
                    splashColor: Colors.grey,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => havadurumu()),
                      );
                    },
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Text(' '),
              ],
            ),
            Row(
              children: <Widget>[
                // ignore: deprecated_member_use
                SizedBox(
                  width: 410.0,
                  height: 50.0,
                  // ignore: deprecated_member_use
                  child: new RaisedButton(
                    color: Color(0xff293133),
                    textColor: Colors.white,
                    splashColor: Colors.grey,
                    child: new Text('Anket Başlangıç Sayfası',style: TextStyle(fontSize: 24 ,color: Colors.white, fontWeight: FontWeight.bold)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => anketbaslangic()),
                      );
                    },
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Text(' '),
              ],
            ),
            Row(
              children: <Widget>[

                // ignore: deprecated_member_use
                SizedBox(
                  width: 410.0,
                  height: 50.0,
                  // ignore: deprecated_member_use
                  child: new RaisedButton(
                    color: Color(0xff293133),
                    textColor: Colors.white,
                    splashColor: Colors.grey,
                    child: new Text('Yapılacaklar',style: TextStyle(fontSize: 24 ,color: Colors.white, fontWeight: FontWeight.bold)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => yapilacak()),
                      );
                    },
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Text('                      '),
              ],
            ),
            Row(
              children: <Widget>[
                // ignore: deprecated_member_use
                SizedBox(
                  width: 410.0,
                  height: 50.0,
                  // ignore: deprecated_member_use
                  child: new RaisedButton(
                    color: Color(0xff293133),
                    textColor: Colors.white,
                    splashColor: Colors.grey,
                    child: new Text('İletişim',style: TextStyle(fontSize: 24 ,color: Colors.white, fontWeight: FontWeight.bold)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => hakkinda()),
                      );
                    },
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Text('             '),

              ],
            ),
            Row(
              children: <Widget>[
                // ignore: deprecated_member_use
                SizedBox(
                  width: 410.0,
                  height: 50.0,
                  // ignore: deprecated_member_use
                  child: new RaisedButton(
                    color: Color(0xff293133),
                    textColor: Colors.white,
                    splashColor: Colors.grey,
                    child: new Text('Hakkında',style: TextStyle(fontSize: 24 ,color: Colors.white, fontWeight: FontWeight.bold)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => iletisim()),
                      );
                    },
                  ),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
