import 'package:flutter/material.dart';

class RoomWidgetText extends StatelessWidget {
  const RoomWidgetText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text("Offices",style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 32.0,
        color: Colors.teal
    ),
    );
  }
}
