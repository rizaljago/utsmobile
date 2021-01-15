import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:love_yourselfid/screens/artikel/artikelpageone.dart';
import 'package:love_yourselfid/screens/artikel/artikelpagetwo.dart';
import 'akunpage.dart';
import 'beritapage.dart';
import 'eventpage.dart';
import 'homepage.dart';
import 'implementasiAPI.dart';
import 'package:love_yourselfid/utils/customclipper.dart';



class ArtikelPage extends StatefulWidget {
  static String tag = 'artikel-page';
  @override
  _ArtikelPageState createState() => new _ArtikelPageState();
}

class _ArtikelPageState extends State<ArtikelPage> {

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
              ListTile(
                  leading: Icon(Icons.android),
                  title: Text("Implementasi API", style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,

                  )),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ImplementasiAPI()),
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
          title: Text('Artikel', style: TextStyle(
            color: Colors.black,
            fontSize: 22,
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
        margin: EdgeInsets.only(left: 10, top: 0, bottom: 0, right: 10),
        color: Colors.pink.shade100,
        child: Column(
            children: <Widget>[
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
                      title: const Text('Sabrina Chairunnisa: Perempuan Juga Bisa Jadi Pelaku Pelecehan Seksual', style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      )),
                      subtitle: Text(
                        'Jakarta - Sabrina Chairunnisa ternyata cukup intens mengamati komentar-komentar dari...',
                        style: TextStyle(color: Colors.black,
                            fontSize: 16),
                      ),
                    ),
                    Image.asset('assets/card5.png', scale: 1, height: 150,),
                    ButtonBar(
                      alignment: MainAxisAlignment.start,
                      children: [
                        FlatButton(
                          textColor: const Color(0xFF6200EE),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => ArtikelPageOne()),
                            );
                          },
                          child: const Text('Baca Selengkapnya'),
                        ),
                      ],
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
                      title: const Text('Soraya Larasati Bersuara Usai Jadi Korban Pelecehan Seksual: Azab Allah Pasti Nyata', style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      )),
                      subtitle: Text(
                        'Jakarta - Soraya Larasati menjadi korban pelecehan seksual saat...',
                        style: TextStyle(color: Colors.black,
                            fontSize: 16),
                      ),
                    ),
                    Image.asset('assets/card6.png', scale: 1, height: 150,),
                    ButtonBar(
                      alignment: MainAxisAlignment.start,
                      children: [
                        FlatButton(
                          textColor: const Color(0xFF6200EE),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => ArtikelPageTwo()),
                            );
                          },
                          child: const Text('Baca Selengkapnya'),
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