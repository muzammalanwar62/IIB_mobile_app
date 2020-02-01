import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';

class notification_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
//      appBar: GradientAppBar(
//        title: Text('Notification'),
//        backgroundColorStart: Color(0xff90676f),
//        backgroundColorEnd: Color(0xffe09e8f),
//      ),
      body: Container(
        color: Color(0xffdfd4f4),
        child: ListView(
          children: <Widget>[
        ListTile(
        leading: FlutterLogo(),
        title:Text("Notification Title"),
        subtitle: Text("Notification Description"),
    ),
          ],
        ),
      ),
    );
  }
}
