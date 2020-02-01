import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';

class room_details_layout extends StatefulWidget {
  @override
  _BookPageState createState() => _BookPageState();
}

class _BookPageState extends State<room_details_layout> {
  Color _backgroundColor = Colors.deepPurple;//Color.fromRGBO(0, 21, 48, 1);
  Color _containerColor = Colors.deepPurple; //Color.fromRGBO(8, 183, 131, 1);

  String _image = "https://cdn.pixabay.com/photo/2014/08/11/21/40/wall-416062__340.jpg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // backgroundColor: _backgroundColor,
      // appbar
      appBar: GradientAppBar(
        title: Text(
          "Workspace",
          style: TextStyle(color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.bold),),
        backgroundColorStart: Color(0xff90676f),
        backgroundColorEnd: Color(0xffe09e8f),
        leading: IconButton(
          icon: Icon(Icons.arrow_back,
            size: 20.0,
            color: Colors.white,
          ),
          onPressed: (){
            setState(() {
              Navigator.pop(context);
            });
          },
        ),
        centerTitle: true,

        actions: <Widget>[
          Icon(
            Icons.menu,
            size: 20.0,
            color: Colors.white,
          ),
          SizedBox(
            width: 16.0,
          ),
        ],
      ),
      body: Container(
        margin: EdgeInsets.only(left: 24.0, bottom: 24.0),
        child: Column(
          children: <Widget>[
            Flexible(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(48.0)),
                    image: DecorationImage(image: AssetImage("res/roomdetail.jpg") , fit: BoxFit.fill)),
              ),
            ),
            Flexible(
              flex: 1,
              child: Container(
                padding: EdgeInsets.only(top: 40.0, left: 24.0, right: 48.0, bottom: 56.0),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(48.0)),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    // title
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Workspace",
                          style: TextStyle(color: Colors.black, fontSize: 28.0, fontWeight: FontWeight.bold),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Include Tax",
                              style: TextStyle(color: Colors.black, fontSize: 10.0, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "\$246",
                              style: TextStyle(color: Colors.black, fontSize: 28.0, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),

                    SizedBox(height: 12.0,),

                    // description
                    Row(
                      children: <Widget>[
                        Text("34m2", style: TextStyle(color: Colors.grey, fontSize: 12.0, fontWeight: FontWeight.bold),),
                        SizedBox(width: 32.0,),
                        Text("More", style: TextStyle(color: Colors.grey, fontSize: 12.0, fontWeight: FontWeight.bold),),
                        SizedBox(width: 32.0,),
                        Text("Fllor 2-6", style: TextStyle(color: Colors.grey, fontSize: 12.0, fontWeight: FontWeight.bold),),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Text("Breakfast include", style: TextStyle(color: Colors.grey, fontSize: 12.0, fontWeight: FontWeight.bold),),
                        SizedBox(width: 32.0,),
                        Text("Free internet", style: TextStyle(color: Colors.grey, fontSize: 12.0, fontWeight: FontWeight.bold),),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Text("AC", style: TextStyle(color: Colors.grey, fontSize: 12.0, fontWeight: FontWeight.bold),),
                        SizedBox(width: 32.0,),
                        Text("Projector Facility", style: TextStyle(color: Colors.grey, fontSize: 12.0, fontWeight: FontWeight.bold),),
                        SizedBox(width: 32.0,),
                        Text("LED", style: TextStyle(color: Colors.grey, fontSize: 12.0, fontWeight: FontWeight.bold),),
                      ],
                    ),
                    SizedBox(height: 12.0,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        /*Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Check-in",
                              style: TextStyle(color: Colors.grey, fontSize: 10.0, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Thu, Oct 24",
                              style: TextStyle(color: Colors.black, fontSize: 14.0, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),*/
                       /* Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Check-Out",
                              style: TextStyle(color: Colors.grey, fontSize: 10.0, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Fri, Oct 25",
                              style: TextStyle(color: Colors.black, fontSize: 14.0, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),*/
                        //Text("1 night stay", style: TextStyle(color: Colors.blue, fontSize: 10.0, fontWeight: FontWeight.bold),)
                      ],
                    ),

                    // book container
                    Container(
                      height: 32.0,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(4.0),
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [Color(0xff90676f), Color(0xffe09e8f)]

                              ), ),
                      child: Center(
                          child: Text(
                            "Book",
                            style: TextStyle(color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.bold),
                          )),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),

    );
  }
}