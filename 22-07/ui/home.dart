import 'package:flutter/material.dart';

myapp() {
  var mytext = Text(
    "Gajju",
    textDirection: TextDirection.ltr,
    textAlign: TextAlign.center,
  );
  var myalarmicon = Icon(
    Icons.access_alarm,
    color: Colors.grey.shade700,
  );
  var myandroidicon = Icon(Icons.android, color: Colors.grey.shade700);
  mypress() {
    print("something clicked");
  }

  mypress2() {
    print("something clicked on icon");
  }

  var MyButton1 = IconButton(icon: myandroidicon, onPressed: mypress);
  var MyButton2 = IconButton(icon: myalarmicon, onPressed: mypress2);
  var myappbar = AppBar(
    title: mytext,
    backgroundColor: Colors.amber,
    leading: myalarmicon,
    actions: <Widget>[MyButton1, MyButton2],
  );

  var url =
      'https://raw.githubusercontent.com/PRINCE1409/personal/master/wall.jpeg?token=AKTF3BO3WROV3GJTSF3D5KC7FROPO';
  var myimage = Image.network(
    url,
    width: double.infinity,
    height: double.infinity,
  );

  var myhome = Scaffold(
    appBar: myappbar,
    body: myimage,
    backgroundColor: Colors.green.shade900,
  );

  var design = MaterialApp(
    home: myhome,
  );
  return design;
}
