import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:folding_cell/folding_cell.dart';



class packages_details_layout extends StatelessWidget{
  String title;
  packages_details_layout(this.title);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text(title),),
      body: Center(
        child: Text("This is Details Page"),
      ),
    );
  }

}



class library_page extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _library_screen_state();
  }
}

class _library_screen_state extends State<library_page> {
  var titles = ['Currently Isuued', 'Histort'];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Container(
          color: Color(0xffdfd4f4),
          child: ListView.builder(
              itemCount: titles.length,
              itemBuilder: (context, index) {
                return ExpansionTile(
                  title: Text(titles[index],textScaleFactor: 1.5,style: TextStyle(color: Colors.teal),),
                  children: <Widget>[
                    new Column(
                      children: <Widget>[
                        SimpleFoldingCell(
                          frontWidget: front_widget(index),
                          innerTopWidget: inner_top_widget(index),
                          innerBottomWidget: inner_bottom_widget(index),
                          cellSize: Size(MediaQuery.of(context).size.width, 135),
                        ),
                      ],
                    ),
                  ],
                );
              }),
        ));
  }

  Widget front_widget(int index) {
    return Builder(builder: (BuildContext context) {
      return InkWell(
        onTap: () {
          SimpleFoldingCellState foldingCellState = context
              .ancestorStateOfType(TypeMatcher<SimpleFoldingCellState>());
          foldingCellState?.toggleFold();
        },
        child: Container(
          alignment: Alignment.center,
          child: Row(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(
                  decoration: BoxDecoration(color: Colors.teal),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
//                            Container(
//                              child: Padding(
//                                padding: const EdgeInsets.all(8.0),
//                                child: Text(
//                                  "Today",
//                                  style: TextStyle(
//                                      color: Colors.white, fontSize: 20.0),
//                                ),
//                              ),
//                            ),
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.all(0.0),
                                child: Image(
                                  image: AssetImage("res/indesign.jpg"),
                                  fit: BoxFit.cover,
                                  height: 135,
                                  width: 120,

                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15.0)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Adobe in Design",
                            style: TextStyle(
                                color: Colors.teal,
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Container(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Text(
                                  "Issue Date:   ",
                                  style: TextStyle(
                                      color: Colors.green,
                                      fontSize: 13.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                child: Padding(
                                  padding: const EdgeInsets.all(1.0),
                                  child: Text(
                                    "20/01/2020",
                                    style: TextStyle(
                                        color: Colors.green,
                                        fontSize: 13.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ]),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }

  Widget inner_bottom_widget(int index) {
    return Builder(builder: (BuildContext context) {
      return InkWell(
        onTap: () {
          SimpleFoldingCellState foldingCellState = context
              .ancestorStateOfType(TypeMatcher<SimpleFoldingCellState>());
          foldingCellState?.toggleFold();
        },
        child: Container(
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Return Date",
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 13.0,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "20/02/2020",
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 13.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                )
              ],
            )),
      );
    });
  }

  Widget inner_top_widget(int index) {
    return Builder(builder: (BuildContext context) {
      return InkWell(
        onTap: () {
          SimpleFoldingCellState foldingCellState = context
              .ancestorStateOfType(TypeMatcher<SimpleFoldingCellState>());
          foldingCellState?.toggleFold();
        },
        child: Container(
          color: Colors.teal,
          child: Container(
            child: Column(
              children: <Widget>[
                //Heading
                Container(
                  child: Text(
                    "Return Details",
                    style: TextStyle(
                        color: Colors.yellow,
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                //Title
                Container(
                  child: Row(
                    children: <Widget>[
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Text(
                            "Book Name",
                            style:
                            TextStyle(fontSize: 15.0, color: Colors.yellow),
                          ),
                        ),
                      ), //Icon
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Adope",
                            style:
                            TextStyle(fontSize: 15.0, color: Colors.yellow),
                          ),
                        ),
                      ) //Text
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: <Widget>[
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Text(
                            "Issued",
                            style:
                            TextStyle(fontSize: 15.0, color: Colors.yellow),
                          ),
                        ),
                      ), //Icon
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "12/01/2018",
                            style:
                            TextStyle(fontSize: 15.0, color: Colors.yellow),
                          ),
                        ),
                      ) //Text
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: <Widget>[
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Text(
                            "Status",
                            style:
                            TextStyle(fontSize: 15.0, color: Colors.yellow),
                          ),
                        ),
                      ), //Icon
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Pending",
                            style:
                            TextStyle(fontSize: 15.0, color: Colors.yellow),
                          ),
                        ),
                      ) //Text
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      );
    });
  }
}






//class ExpandableList extends StatefulWidget {
//  @override
//  _MyAppState createState() => new _MyAppState();
//}
//
//class _MyAppState extends State<ExpandableList> {
//  @override
//  Widget build(BuildContext context) {
//    return new Scaffold(
//      appBar: GradientAppBar(
//        title: Text('Library'),
//        backgroundColorStart: Color(0xff90676f),
//        backgroundColorEnd: Color(0xffe09e8f),
//      ),
//      body: new ListView.builder(
//        itemCount: vehicles.length,
//        itemBuilder: (context, i) {
//          return new ExpansionTile(
//            title: new Text(vehicles[i].title, style: new TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold,color: Colors.redAccent, fontStyle: FontStyle.italic),),
//            children: <Widget>[
//              new Column(
//                children: _buildExpandableContent(vehicles[i]),
//              ),
//            ],
//          );
//        },
//      ),
//    );
//  }
//
//  _buildExpandableContent(Vehicle vehicle) {
//    List<Widget> columnContent = [];
//
//    for (String content in vehicle.contents)
//      columnContent.add(
//        new ListTile(
//          title: new Text(content, style: new TextStyle(fontSize: 18.0),),
//          leading: new Icon(vehicle.icon),
//        ),
//      );
//
//    return columnContent;
//  }
//}
//
//class Vehicle {
//  final String title;
//  List<String> contents = [];
//  final IconData icon;
//
//  Vehicle(this.title, this.contents, this.icon);
//}
//
//List<Vehicle> vehicles = [
//  new Vehicle(
//    'Currently Issued',
//    ['Book 1', 'Book2'],
//    Icons.local_library,
//  ),
//  new Vehicle(
//    'History',
//    ['Book 1', 'Book 2', 'Book 3'],
//    Icons.local_library,
//  ),
//];