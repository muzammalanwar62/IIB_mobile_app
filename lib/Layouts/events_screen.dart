import 'package:flutter/material.dart';
import 'package:folding_cell/folding_cell.dart';

class events_screen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _event_screen_state();
  }
}

class _event_screen_state extends State<events_screen> {
  var titles = ['Today', 'This Week', 'Upcoming'];

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
              title: Text(titles[index]),
              children: <Widget>[
                new Column(
                  children: <Widget>[
                    SimpleFoldingCell(
                      frontWidget: front_widget(index),
                      innerTopWidget: inner_top_widget(index),
                      innerBottomWidget: inner_bottom_widget(index),
                      cellSize: Size(MediaQuery.of(context).size.width, 175),
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
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Today",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20.0),
                                ),
                              ),
                            ),
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "09:00 PM",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20.0),
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
                            "Community App Discussion",
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
                                child: Icon(
                                  Icons.location_on,
                                  color: Colors.yellowAccent,
                                  size: 20.0,
                                ),
                              ),
                              Container(
                                child: Padding(
                                  padding: const EdgeInsets.all(1.0),
                                  child: Text(
                                    "Red Light District",
                                    style: TextStyle(
                                        color: Colors.pinkAccent,
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
                    RaisedButton(
                      color: Colors.teal,
                      child: Text(
                        "Remind Me",
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () {},
                    )
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
                    "Event Details",
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
                          child: Icon(
                            Icons.event,
                            color: Colors.yellow,
                            size: 20,
                          ),
                        ),
                      ), //Icon
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Community App Discussion",
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
                          child: Icon(
                            Icons.location_on,
                            color: Colors.yellow,
                            size: 20,
                          ),
                        ),
                      ), //Icon
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Red Light District Gujrat",
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
                          child: Icon(
                            Icons.timer,
                            color: Colors.yellow,
                            size: 20,
                          ),
                        ),
                      ), //Icon
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "09:00 AM - 10:00 AM",
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
