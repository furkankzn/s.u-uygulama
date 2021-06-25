import 'package:flutter/material.dart';
import 'package:proje2/drawer/ana-drawer.dart';

class descures extends StatefulWidget {
  @override
  _descuresState createState() => _descuresState();
}

class _descuresState extends State<descures> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff383E42),
        appBar: AppBar(
          title: Text('Gestures'),
        ),
        drawer:drawer(),
        body: Center(
           child : GestureDetector(
              onTap: () {
               displayAlert(context,'Tek Tıklama' );
              },
              onTapCancel: () {
                displayAlert(context,'Tek Tıklama İptali' );
              },
              onDoubleTap: () {
                displayAlert(context,'Çift Tıklama' );
              },
              onDoubleTapCancel: () {
                displayAlert(context,'Çift Tıklama İptali' );
              },
              onLongPress: () {
                displayAlert(context,'Uzun Tıklama' );
              },
            )
        )
    );
  }

  void displayAlert(BuildContext context, String typeOfGesture) {
    showDialog(
        context: context,
        builder: (BuildContext context){
          return AlertDialog(
            title: Text("TIKLAMA BİLGİSİ"),
            content: Text('$typeOfGesture'),
          actions: <Widget> [
             RaisedButton(
              child: Text('TAMAM'),
              onPressed: () {
              Navigator.pop(context, false);
               },
             ),

          ],
          );
        });
  }
}