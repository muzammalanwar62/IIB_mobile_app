import 'package:community_app/Layouts/Dashboard_Layout.dart';
import 'package:flutter/material.dart';

class home_page extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
     return _home_page_state();
  }

}
class _home_page_state extends State<home_page>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return dashboard_layout();
  }

}