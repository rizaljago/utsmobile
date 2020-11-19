import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'akunpage.dart';
import 'beritapage.dart';
import 'eventpage.dart';
import 'loginpage.dart';
import 'artikelpage.dart';
import 'package:love_yourselfid/utils/customclipper.dart';



class HomePage extends StatefulWidget {
  static String tag = 'home-page';
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedNavbar = 0;

  void _changeSelectedNavBar(int index) {
    setState(() {
      _selectedNavbar = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade100,
      drawer: Drawer(
        child: Container(
          color: Colors.pink.shade100,
          child: ListView(
            padding: EdgeInsets.only(top: 0),
            physics: NeverScrollableScrollPhysics(),
            children: [
              ClipPath(
                clipper: CustomClipperBuatDra(),
              ),
              UserAccountsDrawerHeader(
                accountName: Text('VirgiMelvaIjal', style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,

                )),
                accountEmail: Text('0810810810811', style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,

                )),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('assets/logoappbar.png'),
                ),

                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.pinkAccent.shade200, Colors.pinkAccent.shade100],
                    begin: Alignment.bottomRight,
                    end: Alignment.topLeft,
                    tileMode: TileMode.clamp,



                  ),
                ),
              ),

              ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Beranda", style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,

                  )),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  }
              ),
              ListTile(
                leading: Icon(Icons.assignment),
                title: Text("Artikel", style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,

                )),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ArtikelPage()),
                    );
                  }
              ),
              ListTile(
                leading: Icon(Icons.event),
                title: Text("Event", style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,

                )),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => EventPage()),
                    );
                  }
              ),
              ListTile(
              leading: Icon(Icons.chrome_reader_mode),
               title: Text("Berita", style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.bold,

          )),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BeritaPage()),
                    );
                  }
      ),
              ListTile(
                leading: Icon(Icons.people),
                title: Text("Akun", style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,

                )),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AkunPage()),
                  );
                }
              ),

            ],
          ),
          ),
        ),


      appBar: PreferredSize(
        preferredSize: Size.fromHeight(99),
        child: AppBar(
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          title: Text('LoveYourself.id', style: TextStyle(
            color: Colors.black,
            fontSize: 26,
            fontWeight: FontWeight.bold,

          ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          flexibleSpace: ClipPath(
            clipper: CustomClipperBuatApp(),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.pinkAccent.shade200, Colors.pinkAccent.shade100],
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft,
                  tileMode: TileMode.clamp,

                )
              )

            ),
          ),

        ),
      ),
      body: Container(
        margin: EdgeInsets.only(left: 10, top: 0, bottom: 25, right: 10),
        color: Colors.pink.shade100,
        child: Column(
          children: <Widget>[

            Row(
               children: <Widget>[
              Text('Selamat Datang di LoveYourself.id', style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            ))
            ]
            ),
            Card(
              elevation: 15,
              shape: (
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              )
              ),
              color: Colors.pink.shade50,
              margin: EdgeInsets.only(left: 10, top: 50, bottom: 0, right: 10),
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  ListTile(
                    title: const Text('Quotes Of The Day', style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    )),
                    subtitle: Text(
                      'oleh: Christina Aguilera ',
                      style: TextStyle(color: Colors.black,
                      fontSize: 16),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      '"Kamu perlu menemukan kekuatan di dalam dirimu untuk membuat sesuatu yang spesial bagi dirimu sendiri. Ketika kamu menyadari ini maka kamu tidak bisa dihentikan."',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),



                ],
              ),
            ),

            Card(
              elevation: 15,
              shape: (
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  )
              ),
              color: Colors.pink.shade50,
              margin: EdgeInsets.only(left: 10, top: 20, bottom: 0, right: 10),
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  ListTile(
                    title: const Text('Berita Terkini', style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    )),
                    subtitle: Text(
                      'Di temukan Pelecehan seksusal di Tempat A',
                      style: TextStyle(color: Colors.black,
                          fontSize: 16),
                    ),
                  ),
                  Image.asset('assets/card.png'),
                  ButtonBar(
                    alignment: MainAxisAlignment.start,
                    children: [
                      FlatButton(
                        textColor: const Color(0xFF6200EE),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => BeritaPage()),
                          );
                        },
                        child: const Text('Go To Berita'),
                      ),
                    ],
                  ),



                ],
              ),
            ),




    ]
        ),



        ),
      );







  }
}