import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:proje2/drawer/ana-drawer.dart';


class havadurumu extends StatefulWidget {
  const havadurumu({key}) : super(key: key);

  @override
  _havadurumuState createState() => _havadurumuState();
}

class _havadurumuState extends State<havadurumu> {
  var temp;
  var description;
  var currently;
  var humidity;
  var windSpeed;

  Future getWeather() async {
    http.Response response = await http.get(Uri.parse(
        "https://api.openweathermap.org/data/2.5/weather?q=Konya&units=imperial&appid=d539fe707be6d1a30473ce54c7784439"));
    var results = jsonDecode(response.body);
    setState(() {
      this.temp = results['main']['temp'];
      this.description = results['weather'][0]['description'];
      this.currently = results['weather'][0]['main'];
      this.humidity = results['main']['humidity'];
      this.windSpeed = results['wind']['speed'];
    });
  }

  @override
  void initState() {
    super.initState();
    this.getWeather();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff383E42),
        appBar: AppBar(
          title: Text('Hava Durumu'),
        ),
        drawer:drawer(),
        body: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height / 3,
              width: MediaQuery.of(context).size.width,
              color: Color(0xff293133),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(bottom: 10.0),
                    child: Text("Şuan Konya'da",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 14.0)),
                  ),
                  Text(
                    temp != null
                        ? (5 / 9 * (temp - 32)).round().toString() + "\u00B0"
                        : "Yükleniyor",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40.0,
                        fontWeight: FontWeight.w600),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10.0),
                    child: Text(
                      currently != null ? currently.toString() : "Yükleniyor",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w600),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: ListView(
                    children: <Widget>[
                      ListTile(
                        title: Text("Sıcaklık",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 20.0),
                        ),
                        trailing: Text(temp != null
                            ? (5 / 9 * (temp - 32)).round().toString() + "\u00B0"
                            : "Yükleniyor",
                              style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 20.0),
                        ),
                      ),
                      ListTile(
                        title: Text("Hava",
                            style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 20.0),),
                        trailing: Text(description != null
                            ? description.toString()
                            : "Yükleniyor",
                            style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 20.0),),
                      ),
                      ListTile(
                        title: Text("Sıcaklık Nem",
                              style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 20.0),
                        ),
                        trailing:
                        Text(humidity != null ? humidity.toString() : "Yükleniyor",
                            style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 20.0),),
                      ),
                      ListTile(
                        title: Text("Rüzgar Hızı",
                            style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 20.0),),
                        trailing: Text(
                            windSpeed != null ? windSpeed.toString() : "Yükleniyor",
                            style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 20.0),),
                      )
                    ],
                  ),
                ))
          ],
        ));
  }
}
