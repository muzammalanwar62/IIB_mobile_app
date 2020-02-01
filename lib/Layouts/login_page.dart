import 'package:community_app/Pages/Packages_Page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'Dashboard_Layout.dart';


class LoginPage extends StatefulWidget{

  @override
  _LoginPageState createState()=> _LoginPageState();

}
class _LoginPageState extends State<LoginPage> with SingleTickerProviderStateMixin {
  AnimationController _iconAnimationController;
  Animation _iconAnimation;


  @override
  void initState() {
    super.initState();
    _iconAnimationController = new AnimationController(
        vsync: this, duration: new Duration(milliseconds: 5000));
    _iconAnimation = CurvedAnimation(
      parent: _iconAnimationController,
      curve: Curves.bounceOut,
    );
    _iconAnimation.addListener(() => this.setState(() {}));
    _iconAnimationController.forward();
  }
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
          fit: StackFit.expand, children: <Widget>[

        Image(
          image: AssetImage("res/background-01.jpg"),
          fit: BoxFit.cover,
          //colorBlendMode: BlendMode.darken,
          //color: Colors.black87,
        ),
        Theme(
          data: ThemeData(
              brightness: Brightness.dark,
              inputDecorationTheme: InputDecorationTheme(
                // hintStyle: new TextStyle(color: Colors.blue, fontSize: 20.0),
                labelStyle:
                TextStyle(color: Colors.tealAccent, fontSize: 25.0),
              )),
          isMaterialAppTheme: true,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlutterLogo(
                size: _iconAnimation.value * 140.0,
              ),
              Container(
                padding: const EdgeInsets.all(40.0),
                child: Form(
                  autovalidate: true,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      TextField(
                        controller: emailController,
                        decoration: InputDecoration(
                            labelText: "Enter Email", fillColor: Colors.white),
                        keyboardType: TextInputType.emailAddress,
                      ),

                      TextField(
                        controller: passwordController,
                        decoration: InputDecoration(
                          labelText: "Enter Password",
                        ),
                        obscureText: true,
                        keyboardType: TextInputType.text,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 60.0),
                      ),
                      MaterialButton(
                          height: 50.0,
                          minWidth: 150.0,
                          color: Colors.green,
                          splashColor: Colors.teal,
                          textColor: Colors.white,
                          child: Icon(FontAwesomeIcons.signInAlt),
                          onPressed: () async {

                                Scaffold.of(context).showSnackBar(
                                    SnackBar(duration: Duration(seconds: 3),
                                      content: Text("You Click Login Button"),
                                    ));
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (context) => dashboard_layout()));

                            }


                      ),
                      FlatButton(
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => packagess_page()),
                          );
                          //Navigator.pop(context);
                        },

                        child: Text("Sign Up"),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ]),
    );
  }
}














































//class LoginPage extends StatefulWidget {
//  @override
//  State<StatefulWidget> createState() {
//    return _LoginPageState();
//  }
//}
//
//class _LoginPageState extends State<LoginPage> {
//
//  // f45d27
//  // f5851f
//
//  @override
//  void initState() {
//    SystemChrome.setEnabledSystemUIOverlays([]);
//    super.initState();
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//
//
//      body: ListView(
//
//        children: <Widget>[
//         Container(
//
//          child: Column(
//            children: <Widget>[
//              Container(
//                width: MediaQuery.of(context).size.width,
//                height: MediaQuery.of(context).size.height/3,
//                margin: EdgeInsets.only(top: 0.0),
//                decoration: BoxDecoration(
//                    gradient: LinearGradient(
//                      begin: Alignment.topCenter,
//                      end: Alignment.bottomCenter,
//                      colors: [
//                        Color(0xff90676F),
//                        Color(0xffE09E8f)
//                      ],
//                    ),
//                    borderRadius: BorderRadius.only(
//                        bottomLeft: Radius.circular(90)
//                    )
//                ),
//                child: Column(
//                  mainAxisAlignment: MainAxisAlignment.center,
//                  children: <Widget>[
//                    Spacer(),
//                    Align(
//                      alignment: Alignment.center,
//                      child: Icon(Icons.person,
//                        size: 90,
//                        color: Colors.white,
//                      ),
//                    ),
//                    Spacer(),
//
//
//                  ],
//                ),
//              ),
//
//              Container(
//                height: MediaQuery.of(context).size.height/2,
//                width: MediaQuery.of(context).size.width,
//                padding: EdgeInsets.only(top: 50),
//                child: Column(
//                  children: <Widget>[
//                    Container(
//                      width: MediaQuery.of(context).size.width/1.2,
//                      height: 45,
//                      padding: EdgeInsets.only(
//                          top: 4,left: 16, right: 16, bottom: 4
//                      ),
//                      decoration: BoxDecoration(
//                          borderRadius: BorderRadius.all(
//                              Radius.circular(50)
//                          ),
//                          color: Colors.white,
//                          boxShadow: [
//                            BoxShadow(
//                                color: Colors.black12,
//                                blurRadius: 5
//                            )
//                          ]
//                      ),
//                      child: TextField(
//                        decoration: InputDecoration(
//                          border: InputBorder.none,
//                          icon: Icon(Icons.email,
//                            color: Colors.grey,
//                          ),
//                          hintText: 'Email',
//                        ),
//                      ),
//                    ),
//                    Container(
//                      width: MediaQuery.of(context).size.width/1.2,
//                      height: 45,
//                      margin: EdgeInsets.only(top: 16),
//                      padding: EdgeInsets.only(
//                          top: 4,left: 16, right: 16, bottom: 4
//                      ),
//                      decoration: BoxDecoration(
//                          borderRadius: BorderRadius.all(
//                              Radius.circular(50)
//                          ),
//                          color: Colors.white,
//                          boxShadow: [
//                            BoxShadow(
//                                color: Colors.black12,
//                                blurRadius: 5
//                            )
//                          ]
//                      ),
//                      child: TextField(
//                        decoration: InputDecoration(
//                          border: InputBorder.none,
//                          icon: Icon(Icons.vpn_key,
//                            color: Colors.grey,
//                          ),
//                          hintText: 'Password',
//                        ),
//                      ),
//                    ),
//                    Align(
//                      alignment: Alignment.centerRight,
//                      child: Padding(
//                        padding: const EdgeInsets.only(
//                            top: 16, right: 32
//                        ),
//                        child: Text('Forgot Password ?',
//                          style: TextStyle(
//                              color: Colors.grey
//                          ),
//                        ),
//                      ),
//                    ),
//                    GestureDetector(
////                      onTap: (){Navigator.push(context,
////                          MaterialPageRoute(builder: (context) => home_page())},
//                      child: Container(
//                        margin: EdgeInsets.only(top: 16,bottom: 16,right: 16,left: 16) ,
//                        height: 45,
//                        width: MediaQuery.of(context).size.width/1.2,
//                        decoration: BoxDecoration(
//                            gradient: LinearGradient(
//                              colors: [
//                                Colors.teal,
//                                Colors.lightGreen
//                              ],
//                            ),
//                            borderRadius: BorderRadius.all(
//                                Radius.circular(50)
//                            )
//                        ),
//                        child: Center(
//                          child: Text('Login'.toUpperCase(),
//                            style: TextStyle(
//                                color: Colors.white,
//                                fontWeight: FontWeight.bold
//                            ),
//                          ),
//                        ),
//                      ),
//                    ),
//                    Container(
//                      child: Center(
//                        child: SizedBox(
//                          width: MediaQuery.of(context).size.width/1.2,
//                          height: 45,
//                          child: FlatButton(
//                            onPressed: (){
//                              Navigator.push(
//                                context,
//                                MaterialPageRoute(builder: (context) => packagess_page()),
//                              );
//                              //Navigator.pop(context);
//                            },
//
//                            child: Text("Sign Up"),
//                          ),
//                        ),
//                      ),
//                    )
//                  ],
//                ),
//              ),
//
//            ],
//          ),
//        ),
//    ],
//      ),
//    );
//  }
//}