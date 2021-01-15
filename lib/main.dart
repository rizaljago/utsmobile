import 'package:flutter/material.dart';
import 'screens/berita/newspageone.dart';
import 'screens/berita/newspagetwo.dart';
import 'screens/artikel/artikelpageone.dart';
import 'screens/artikel/artikelpagetwo.dart';
import 'screens/event/eventpageone.dart';
import 'screens/event/eventpagetwo.dart';
import 'screens/implementasiAPI.dart';
import 'screens/loginpage.dart';
import 'screens/homepage.dart';
import 'screens/registerpage.dart';
import 'screens/akunpage.dart';
import 'screens/beritapage.dart';
import 'screens/artikelpage.dart';
import 'screens/eventpage.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    LoginPage.tag: (context) => LoginPage(),
    HomePage.tag: (context) => HomePage(),
    RegisterPage.tag: (context) => RegisterPage(),
    AkunPage.tag: (context) => AkunPage(),
    BeritaPage.tag: (context) => BeritaPage(),
    ArtikelPage.tag: (context) => ArtikelPage(),
    EventPage.tag: (context) => EventPage(),
    NewsPageOne.tag: (context) => NewsPageOne(),
    NewsPageTwo.tag: (context) => NewsPageTwo(),
    ArtikelPageOne.tag: (context) => ArtikelPageOne(),
    ArtikelPageTwo.tag: (context) => ArtikelPageTwo(),
    EventPageOne.tag: (context) => EventPageOne(),
    EventPageTwo.tag: (context) => EventPageTwo(),
    ImplementasiAPI.tag: (context) => ImplementasiAPI(),

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
