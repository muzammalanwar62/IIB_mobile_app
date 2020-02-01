
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:community_app/Layouts/books_list_layout.dart';
import 'package:community_app/Layouts/login_page.dart';

import 'package:community_app/Layouts/rooms_detail_layout.dart';
import 'package:community_app/Model/fooditem.dart';
import 'package:community_app/Pages/Home_Page.dart';
import 'package:community_app/Pages/offices_page.dart';
import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'Layouts/credit_card_page_layout.dart';


void main() => runApp(Myapp());

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Community",

        theme: ThemeData(
          appBarTheme: AppBarTheme(
            color: Colors.black26,
            brightness: Brightness.dark
          ),
            primarySwatch: Colors.teal,
         // scaffoldBackgroundColor: Colors.red,
            accentColor: Color(0xff53A4D),
         // backgroundColor: Colors.red,
         // brightness: Brightness.dark,

        ),
        home: LoginPage(),
        debugShowCheckedModeBanner: false,
        );
  }
}



