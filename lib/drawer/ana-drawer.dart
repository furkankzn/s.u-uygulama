import 'package:flutter/material.dart';
import 'package:proje2/sayfalar/anasayfa/anasayfa.dart';
import 'package:proje2/sayfalar/animasyonvegestures/animasyon.dart';
import 'package:proje2/sayfalar/anket/anketbaslangic.dart';
import 'package:proje2/sayfalar/animasyonvegestures/descures.dart';
import 'package:proje2/sayfalar/hakkinda.dart';
import 'package:proje2/sayfalar/havadurumu.dart';
import 'package:proje2/sayfalar/iletisim.dart';
import 'package:proje2/sayfalar/yapilacak.dart';

class drawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column (
        children:<Widget>[
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(5),
            color: Color(0xff383E42),
            child: Center(
                child: Column (
                    children:<Widget>[
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
                      )
                    ]
                )
            ),
          ),
        ListTile(
          leading: Icon(Icons.home),
          title: Text('Ana Sayfa' , style: TextStyle(fontSize: 16),
          ),
       onTap: () {
         Navigator.push(
           context,
           MaterialPageRoute(builder: (context) => anasayfa()),
         );
       },
        ),
          ListTile(
            leading: Icon(Icons.my_library_books_outlined),
            title: Text('Hava Durumu ' , style: TextStyle(fontSize: 16),
            ),
            onTap:() {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => havadurumu()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.search),
            title: Text('Anket ' , style: TextStyle(fontSize: 16),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => anketbaslangic()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.chrome_reader_mode_outlined),
            title: Text('Yapılacaklar' , style: TextStyle(fontSize: 16),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => yapilacak()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.phone),
            title: Text('Iletişim ' , style: TextStyle(fontSize: 16),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => hakkinda()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.info_rounded),
            title: Text('Hakkında ' , style: TextStyle(fontSize: 16),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => iletisim()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.warning),
            title: Text('Gestures ' , style: TextStyle(fontSize: 16),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => descures()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.wallpaper_rounded),
            title: Text('Animasyon ' , style: TextStyle(fontSize: 16),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => animasyon()),
              );
            },
          )
        ],
      ),
    );
  }
}
