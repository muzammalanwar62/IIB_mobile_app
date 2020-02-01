import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';

import 'credit_card_page_layout.dart';

class packages_layout extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
     return Scaffold(
         appBar: GradientAppBar(
           title: Text('Membership Packages'),
           backgroundColorStart: Color(0xff9676f),
           backgroundColorEnd: Color(0xffe09e8f),
         ),
       body: Center(
         child:  ListView(
           scrollDirection: Axis.horizontal,
           children: <Widget>[
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Container(
                 width: MediaQuery
                     .of(context)
                     .size
                     .width - 40.0,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(12.0),
                   color: Color(0xff5a348b),
                   gradient: LinearGradient(
                       colors: [ Color(0xffcccccc), Color(0xffb3cde0)],
                       begin: Alignment.centerRight,
                       end: Alignment(-1.0, -1.0)
                   ), //Gradient
                 ),

                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: <Widget>[
                     Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: <Widget>[
                         //Text
                         Padding(
                           padding: const EdgeInsets.only(top: 8.0),
                           child: Container(
                             child: Row(
                               children: <Widget>[
                                 Container(
                                   child: Row(
                                     mainAxisAlignment: MainAxisAlignment
                                         .spaceEvenly,
                                     children: <Widget>[
                                       Padding(
                                         padding: const EdgeInsets.all(8.0),
                                         child: Container(
                                           child: Icon(FontAwesomeIcons.dropbox,
                                             color: new Color(0xffffffff),
                                             size: 40.0,),),
                                       ),
                                       Padding(
                                         padding: const EdgeInsets.all(8.0),
                                         child: Container(
                                           child: Text(
                                             'Silver', style: TextStyle(
                                             color: Colors.white,
                                             fontSize: 30.0,
                                           ),),),
                                       ),
                                       Padding(
                                         padding: const EdgeInsets.all(8.0),
                                         child: Container(
                                           child: Text(
                                             '\u0024199.99', style: TextStyle(
                                               color: Colors.white,
                                               fontSize: 30.0
                                           ),),),
                                       ),
                                     ],),
                                 ),
                               ],

                             ),
                           ),
                         ),

                         //Two Column Table
                         DataTable(
                           columns: <DataColumn>[
                             DataColumn(
                               label: Text(''),
                             ),
                             DataColumn(
                               label: Text(''),
                             ),
                           ],
                           rows: <DataRow>[
                             DataRow(
                                 cells: <DataCell>[
                                   DataCell(
                                     Icon(FontAwesomeIcons.check,
                                       color: Colors.white,),
                                   ),
                                   DataCell(
                                     Text('Limited cities',
                                       style: TextStyle(
                                         color: Colors.white,
                                         fontSize: 16.0,
                                       ),),
                                   ),

                                 ]
                             ),
                             DataRow(
                                 cells: <DataCell>[
                                   DataCell(
                                     Icon(FontAwesomeIcons.check,
                                       color: Colors.white,),
                                   ),
                                   DataCell(
                                     Text('1 month', style: TextStyle(
                                       color: Colors.white,
                                       fontSize: 16.0,
                                     ),),
                                   ),

                                 ]
                             ),
                             DataRow(
                                 cells: <DataCell>[
                                   DataCell(
                                     Icon(FontAwesomeIcons.times,
                                         color: Colors.white54),
                                   ),
                                   DataCell(
                                     Text('Cafe',
                                       style: TextStyle(
                                         color: Colors.white,
                                         fontSize: 16.0,
                                       ),),
                                   ),

                                 ]
                             ),
                             DataRow(
                                 cells: <DataCell>[
                                   DataCell(
                                     Icon(FontAwesomeIcons.check,
                                         color: new Color(0xffffffff)),
                                   ),
                                   DataCell(
                                     Text(
                                       '10 Persons', style: TextStyle(
                                       color: Colors.white,
                                       fontSize: 16.0,
                                     ),),
                                   ),

                                 ]
                             ),
                             DataRow(
                                 cells: <DataCell>[
                                   DataCell(
                                     Icon(FontAwesomeIcons.check,
                                         color: new Color(0xffffffff)),
                                   ),
                                   DataCell(
                                     Text('Library',
                                       style: TextStyle(
                                         color: Colors.white,
                                         fontSize: 16.0,
                                       ),),
                                   ),

                                 ]
                             ),
                             DataRow(
                                 cells: <DataCell>[
                                   DataCell(
                                     Icon(FontAwesomeIcons.times,
                                       color: Colors.white54,),
                                   ),
                                   DataCell(
                                     Text('Cinema',
                                       style: TextStyle(
                                         color: Colors.white,
                                         fontSize: 16.0,
                                       ),),
                                   ),

                                 ]
                             ),
                             DataRow(
                                 cells: <DataCell>[
                                   DataCell(
                                     Icon(FontAwesomeIcons.times,
                                         color: Colors.white54),
                                   ),
                                   DataCell(
                                     Text('Gym',
                                       style: TextStyle(
                                         color: Colors.white,
                                         fontSize: 16.0,
                                       ),),
                                   ),

                                 ]
                             ),
                           ],
                         ),

                         //Button
                         Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: RaisedButton(
                               color: new Color(0xffffffff),
                               child: Text('Get Started',
                                 style: TextStyle(
                                   color: new Color(0xffcb3a57),
                                 ),),
                               onPressed: () {
                                 Navigator.push(
                                     context,
                                     MaterialPageRoute(builder: (context) => CreditCardPage()));
                               },
                               shape: RoundedRectangleBorder(
                                 borderRadius: BorderRadius.circular(
                                     30.0),)
                           ),
                         ),

                       ],),
                   ],),
               ),
             ),
             //second ListView
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Container(
                 width: MediaQuery
                     .of(context)
                     .size
                     .width - 40.0,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(12.0),
                   color: Color(0xff5a348b),
                   gradient: LinearGradient(
                       colors: [ Color(0xffedc967), Color(0xffd4af37)],
                       begin: Alignment.centerRight,
                       end: Alignment(-1.0, -1.0)
                   ), //Gradient
                 ),

                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: <Widget>[
                     Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: <Widget>[
                         //Text
                         Padding(
                           padding: const EdgeInsets.only(top: 8.0),
                           child: Container(
                             child: Row(
                               children: <Widget>[
                                 Container(
                                   child: Row(
                                     mainAxisAlignment: MainAxisAlignment
                                         .spaceEvenly,
                                     children: <Widget>[
                                       Padding(
                                         padding: const EdgeInsets.all(8.0),
                                         child: Container(
                                           child: Icon(FontAwesomeIcons.dropbox,
                                             color: new Color(0xffffffff),
                                             size: 40.0,),),
                                       ),
                                       Padding(
                                         padding: const EdgeInsets.all(8.0),
                                         child: Container(
                                           child: Text(
                                             'Gold', style: TextStyle(
                                             color: Colors.white,
                                             fontSize: 30.0,
                                           ),),),
                                       ),
                                       Padding(
                                         padding: const EdgeInsets.all(8.0),
                                         child: Container(
                                           child: Text(
                                             '\u0024599.99', style: TextStyle(
                                               color: Colors.white,
                                               fontSize: 30.0
                                           ),),),
                                       ),
                                     ],),
                                 ),
                               ],

                             ),
                           ),
                         ),

                         //Two Column Table
                         DataTable(
                           columns: <DataColumn>[
                             DataColumn(
                               label: Text(''),
                             ),
                             DataColumn(
                               label: Text(''),
                             ),
                           ],
                           rows: <DataRow>[
                             DataRow(
                                 cells: <DataCell>[
                                   DataCell(
                                     Icon(FontAwesomeIcons.check,
                                       color: Colors.white,),
                                   ),
                                   DataCell(
                                     Text('All Cities',
                                       style: TextStyle(
                                         color: Colors.white,
                                         fontSize: 16.0,
                                       ),),
                                   ),

                                 ]
                             ),
                             DataRow(
                                 cells: <DataCell>[
                                   DataCell(
                                     Icon(FontAwesomeIcons.check,
                                       color: Colors.white,),
                                   ),
                                   DataCell(
                                     Text('3 month', style: TextStyle(
                                       color: Colors.white,
                                       fontSize: 16.0,
                                     ),),
                                   ),

                                 ]
                             ),
                             DataRow(
                                 cells: <DataCell>[
                                   DataCell(
                                     Icon(FontAwesomeIcons.check,
                                         color: new Color(0xffffffff)),
                                   ),
                                   DataCell(
                                     Text('Cafe',
                                       style: TextStyle(
                                         color: Colors.white,
                                         fontSize: 16.0,
                                       ),),
                                   ),

                                 ]
                             ),
                             DataRow(
                                 cells: <DataCell>[
                                   DataCell(
                                     Icon(FontAwesomeIcons.check,
                                         color: new Color(0xffffffff)),
                                   ),
                                   DataCell(
                                     Text(
                                       '20 Persons', style: TextStyle(
                                       color: Colors.white,
                                       fontSize: 16.0,
                                     ),),
                                   ),

                                 ]
                             ),
                             DataRow(
                                 cells: <DataCell>[
                                   DataCell(
                                     Icon(FontAwesomeIcons.check,
                                         color: new Color(0xffffffff)),
                                   ),
                                   DataCell(
                                     Text('Library',
                                       style: TextStyle(
                                         color: Colors.white,
                                         fontSize: 16.0,
                                       ),),
                                   ),

                                 ]
                             ),
                             DataRow(
                                 cells: <DataCell>[
                                   DataCell(
                                     Icon(FontAwesomeIcons.times,
                                       color: Colors.white54,),
                                   ),
                                   DataCell(
                                     Text('Cinema',
                                       style: TextStyle(
                                         color: Colors.white,
                                         fontSize: 16.0,
                                       ),),
                                   ),

                                 ]
                             ),
                             DataRow(
                                 cells: <DataCell>[
                                   DataCell(
                                     Icon(FontAwesomeIcons.times,
                                         color: Colors.white54),
                                   ),
                                   DataCell(
                                     Text('Gym',
                                       style: TextStyle(
                                         color: Colors.white,
                                         fontSize: 16.0,
                                       ),),
                                   ),

                                 ]
                             ),
                           ],
                         ),

                         //Button
                         Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: RaisedButton(
                               color: new Color(0xffffffff),
                               child: Text('Get Started',
                                 style: TextStyle(
                                   color: new Color(0xffcb3a57),
                                 ),),
                               onPressed: () {
                                 Navigator.push(
                                     context,
                                     MaterialPageRoute(builder: (context) => CreditCardPage()));
                               },
                               shape: RoundedRectangleBorder(
                                 borderRadius: BorderRadius.circular(
                                     30.0),)
                           ),
                         ),

                       ],),
                   ],),
               ),
             ),
             // Third Listview
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Container(
                 width: MediaQuery
                     .of(context)
                     .size
                     .width - 40.0,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(12.0),
                   color: Color(0xff5a348b),
                   gradient: LinearGradient(
                       colors: [Color(0xff555555), Color(0xff888888)],
                       begin: Alignment.centerRight,
                       end: Alignment(-1.0, -1.0)
                   ), //Gradient
                 ),

                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: <Widget>[
                     Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: <Widget>[
                         //Text
                         Padding(
                           padding: const EdgeInsets.only(top: 8.0),
                           child: Container(
                             child: Row(
                               children: <Widget>[
                                 Container(
                                   child: Row(
                                     mainAxisAlignment: MainAxisAlignment
                                         .spaceEvenly,
                                     children: <Widget>[
                                       Padding(
                                         padding: const EdgeInsets.all(8.0),
                                         child: Container(
                                           child: Icon(FontAwesomeIcons.dropbox,
                                             color: new Color(0xffffffff),
                                             size: 40.0,),),
                                       ),
                                       Padding(
                                         padding: const EdgeInsets.all(8.0),
                                         child: Container(
                                           child: Text(
                                             'Platinum', style: TextStyle(
                                             color: Colors.white,
                                             fontSize: 30.0,
                                           ),),),
                                       ),
                                       Padding(
                                         padding: const EdgeInsets.all(8.0),
                                         child: Container(
                                           child: Text(
                                             '\u00241999.99', style: TextStyle(
                                               color: Colors.white,
                                               fontSize: 25.0
                                           ),),),
                                       ),
                                     ],),
                                 ),
                               ],

                             ),
                           ),
                         ),

                         //Two Column Table
                         DataTable(
                           columns: <DataColumn>[
                             DataColumn(
                               label: Text(''),
                             ),
                             DataColumn(
                               label: Text(''),
                             ),
                           ],
                           rows: <DataRow>[
                             DataRow(
                                 cells: <DataCell>[
                                   DataCell(
                                     Icon(FontAwesomeIcons.check,
                                       color: Colors.white,),
                                   ),
                                   DataCell(
                                     Text('All cities',
                                       style: TextStyle(
                                         color: Colors.white,
                                         fontSize: 16.0,
                                       ),),
                                   ),

                                 ]
                             ),
                             DataRow(
                                 cells: <DataCell>[
                                   DataCell(
                                     Icon(FontAwesomeIcons.check,
                                       color: Colors.white,),
                                   ),
                                   DataCell(
                                     Text('1 Year', style: TextStyle(
                                       color: Colors.white,
                                       fontSize: 16.0,
                                     ),),
                                   ),

                                 ]
                             ),
                             DataRow(
                                 cells: <DataCell>[
                                   DataCell(
                                     Icon(FontAwesomeIcons.check,
                                         color: new Color(0xffffffff)),
                                   ),
                                   DataCell(
                                     Text('Cafe',
                                       style: TextStyle(
                                         color: Colors.white,
                                         fontSize: 16.0,
                                       ),),
                                   ),

                                 ]
                             ),
                             DataRow(
                                 cells: <DataCell>[
                                   DataCell(
                                     Icon(FontAwesomeIcons.check,
                                         color: new Color(0xffffffff)),
                                   ),
                                   DataCell(
                                     Text(
                                       '30 Persons', style: TextStyle(
                                       color: Colors.white,
                                       fontSize: 16.0,
                                     ),),
                                   ),

                                 ]
                             ),
                             DataRow(
                                 cells: <DataCell>[
                                   DataCell(
                                     Icon(FontAwesomeIcons.check,
                                         color: new Color(0xffffffff)),
                                   ),
                                   DataCell(
                                     Text('Library',
                                       style: TextStyle(
                                         color: Colors.white,
                                         fontSize: 16.0,
                                       ),),
                                   ),

                                 ]
                             ),
                             DataRow(
                                 cells: <DataCell>[
                                   DataCell(
                                     Icon(FontAwesomeIcons.check,
                                       color: Color(0xffffffff),),
                                   ),
                                   DataCell(
                                     Text('Cinema',
                                       style: TextStyle(
                                         color: Colors.white,
                                         fontSize: 16.0,
                                       ),),
                                   ),

                                 ]
                             ),
                             DataRow(
                                 cells: <DataCell>[
                                   DataCell(
                                     Icon(FontAwesomeIcons.check,
                                         color: new Color(0xffffffff)),
                                   ),
                                   DataCell(
                                     Text('Gym',
                                       style: TextStyle(
                                         color: Colors.white,
                                         fontSize: 16.0,
                                       ),),
                                   ),

                                 ]
                             ),
                           ],
                         ),

                         //Button
                         Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: RaisedButton(
                               color: new Color(0xffffffff),
                               child: Text('Get Started',
                                 style: TextStyle(
                                   color: new Color(0xffcb3a57),
                                 ),),
                               onPressed: () {
                                 Navigator.push(
                                     context,
                                     MaterialPageRoute(builder: (context) => CreditCardPage()));
                               },
                               shape: RoundedRectangleBorder(
                                 borderRadius: BorderRadius.circular(
                                     30.0),)
                           ),
                         ),

                       ],),
                   ],),
               ),
             ),

           ],
         ),
       )


     );
  }

}