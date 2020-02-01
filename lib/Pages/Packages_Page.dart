import 'package:community_app/Layouts/packages_layout.dart';
import 'package:flutter/cupertino.dart';

class packagess_page extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
     return _packages_page_state();
  }

}
class _packages_page_state extends State<packagess_page>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
       return packages_layout();
  }

}