import 'package:community_app/Layouts/Notification_Screen_Layout.dart';
import 'package:community_app/Layouts/events_screen.dart';
import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';

class events_page extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal
      ),
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: GradientAppBar(
            title: Text("Events & Annoucements"),
            backgroundColorStart: Color(0xff90676f),
            backgroundColorEnd: Color(0xffe09e8f),

            bottom: TabBar(
              tabs: <Widget>[
                Tab(text: "Events"),
                Tab(text: "Notifications",),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              events_screen(),
              notification_screen(),
            ],
          ),
        ),
      ),
    );
  }

}