import 'package:flutter/material.dart';
import 'package:proje2/drawer/ana-drawer.dart';

class animasyon extends StatefulWidget {
  @override
  _animasyonState createState() => _animasyonState();
}

class _animasyonState extends State<animasyon> {
    double _width= 100;
    double _height= 100;

    _updateState() {
      setState(() {
        _width = 400;
        _height= 400;
      });
    }

    _kucult() {
      setState(() {
        _width = 100;
        _height= 100;
      });
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff383E42),
        appBar: AppBar(
          title: Text('Animasyon'),
        ),
        drawer:drawer(),
        body: Center(
          child:Column (
            mainAxisAlignment:  MainAxisAlignment.center,
            children:<Widget> [
              RaisedButton(onPressed: (){
                _updateState();
              },
                child: Text("Büyüt"),
              ),
              AnimatedContainer(
                duration: Duration(milliseconds: 400),
                width: _width,
                height: _height,
                color: Color(0xff293133),
                child: Center(
                  child: Text("ANİMASYON"),
                ),
              ),
              RaisedButton(onPressed: (){
                _kucult();
              },
                child: Text("Küçült"),
              ),
            ],
          )
        )
    );
  }
}