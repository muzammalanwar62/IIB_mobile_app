import 'package:flutter/material.dart';

class SearchRoom extends StatelessWidget {
  const SearchRoom({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: TextField(
        decoration: InputDecoration(
            hintText: "Search Room",
            prefixIcon: Icon(Icons.search),
            suffixIcon: Icon(Icons.filter_list),
            filled: true,
            contentPadding: EdgeInsets.symmetric(),
            fillColor: Colors.white,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),

            ),
          border: OutlineInputBorder(),
          focusedBorder: OutlineInputBorder(),

        ),
      ),
    );
  }
}
