import 'package:community_app/Layouts/rooms_detail_layout.dart';
import 'package:flutter/material.dart';

class RoomList extends StatelessWidget {
  const RoomList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => InkWell(
        onTap:(){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => room_details_layout()),
          );
        },
        child: Card(
          margin: EdgeInsets.all(4.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Column(
            children: <Widget>[
              Container(
                height: 170.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12.0),
                        topRight: Radius.circular(12.0)
                    ),
                    image: DecorationImage(image: AssetImage("res/roomlist.jpg"),
                      fit: BoxFit.cover,
                    )
                ),
                //color: Colors.blue,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0,vertical: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Workspace",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,fontSize: 20.0),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            "Available",
                            style: TextStyle(color: Colors.green),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "10",
                            style: TextStyle(
                             fontWeight: FontWeight.bold
                            ),
                          ),
                           Icon(Icons.person,color: Colors.grey,)
                        ],
                      ),
                    ]
                ),
              ),
            ],
          ),
        ),
      ),
      physics: NeverScrollableScrollPhysics(),
      itemCount: 10,
      shrinkWrap: true,
    );
  }
}
