import 'package:flutter/material.dart';
import 'package:proje2/drawer/ana-drawer.dart';
import 'package:proje2/sayfalar/anasayfa/anasayfa.dart';

class yapilacak extends StatefulWidget {
  const yapilacak({Key? key}) : super(key: key);

  @override
  _yapilacakState createState() => _yapilacakState();
}

class _yapilacakState extends State<yapilacak> {
  TextEditingController t1 = TextEditingController();
  List yapilacakListesi = [];

  elemanEkle() {
    setState(() {
      yapilacakListesi.add(t1.text);
      t1.clear();
    });
  }

  elemanCikar() {
    setState(() {
      yapilacakListesi.remove(t1.text);
      t1.clear();
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Yapılacaklar'),
      ),
        drawer:drawer(),
          body:Container(
            child: Column(
              children: <Widget>[
                Flexible(
                  child: ListView.builder(
                    itemCount: yapilacakListesi.length,
                    itemBuilder: (context, siraNumarasi) => ListTile(
                      title: Text(yapilacakListesi[siraNumarasi]),
                    ),
                  ),
                ),
                TextField(
                  controller: t1,
                ),
                RaisedButton(
                  color: Color(0xff293133),
                  textColor: Colors.white,
                  splashColor: Colors.grey,
                  onPressed: elemanEkle,
                  child: Text("Ekle"),
                ),
                RaisedButton(
                  color: Color(0xff293133),
                  textColor: Colors.white,
                  splashColor: Colors.grey,
                  onPressed: elemanCikar,
                  child: Text("Çıkar"),
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
              ],
            ),
          ),
    );
  }
}
