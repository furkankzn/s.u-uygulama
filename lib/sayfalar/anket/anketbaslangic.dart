import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:proje2/sayfalar/anket/soru1.dart';

class anketbaslangic extends StatefulWidget {
  const anketbaslangic({Key? key}) : super(key: key);

  @override
  _anketbaslangicState createState() => _anketbaslangicState();
}

class _anketbaslangicState extends State<anketbaslangic> {
  final _kontrolcu = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff383E42),
      appBar: AppBar(
        title: Text('Anket Başlangıç Sayfası'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '        Selçuk Üniversitesi\nöğrenci memnuniyet anketi\n\n',
              style: TextStyle(fontSize: 25.0 ,fontWeight: FontWeight.bold,color: Colors.white) ,
            ),
            Text(
              'Adınız ve soyadınız',
              style: TextStyle(fontSize: 18.0,color: Colors.white) ,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: _kontrolcu,
                decoration: const InputDecoration(
                  hintText: 'Adınızı ve Soyadınızı giriniz', hintStyle: TextStyle(fontSize: 18.0, color: Colors.white),
                ),
                keyboardType: TextInputType.text,
                inputFormatters: [
                  FilteringTextInputFormatter.singleLineFormatter
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Color(0xff293133), onPrimary: Colors.white,textStyle: TextStyle( fontWeight: FontWeight.bold)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => soru1(AdSoyad: _kontrolcu.text)),
                  );
                },
                child: Text('Ankete başla'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}









