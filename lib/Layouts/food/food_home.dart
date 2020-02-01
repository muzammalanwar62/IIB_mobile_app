import 'package:flutter/material.dart';
import './bloc/cartListBloc.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import './bloc/listTileColorBloc.dart';
import 'food_menu_page.dart';


class FoodHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      blocs: [
        //add yours BLoCs controlles
        Bloc((i) => CartListBloc()),
        Bloc((i) => ColorBloc()),
      ],
      child: MaterialApp(
          home: Home(),
          debugShowCheckedModeBanner: false,
          routes: <String, WidgetBuilder>{
            '/landingpage': (BuildContext context) => new FoodHome(),
            '/homepage': (BuildContext context) => new Home(),
          }),
    );
  }
}



