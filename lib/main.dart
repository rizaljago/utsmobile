
import 'package:flutter/material.dart';
import 'screens/loginpage.dart';
import 'screens/homepage.dart';
import 'screens/registerpage.dart';
import 'screens/akunpage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    LoginPage.tag: (context) => LoginPage(),
    HomePage.tag: (context) => HomePage(),
    RegisterPage.tag: (context) => RegisterPage(),
    AkunPage.tag: (context) => AkunPage(),

  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LoveYourself.id',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        fontFamily: 'Nunito',
      ),
      home: LoginPage(),
      routes: routes,
    );
  }
}
