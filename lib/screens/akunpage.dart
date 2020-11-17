import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:love_yourselfid/utils/customclipper.dart';


class AkunPage extends StatefulWidget {
  static String tag = 'akun-page';
  @override
  _AkunPageState createState() => new _AkunPageState();
}

class _AkunPageState extends State<AkunPage> {
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
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(115),
        child: AppBar(
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          title: Text('Akun', style: TextStyle(
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

      body: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(padding: EdgeInsets.all(20),
                child: Text("Profil", style: TextStyle(fontSize: 28, letterSpacing: 1.5, color: Colors.black, fontWeight: FontWeight.w600
                ))),
              Container(
                padding: EdgeInsets.all(10.0),
                width: MediaQuery.of(context).size.width/2,
                height: MediaQuery.of(context).size.width/2,
                decoration: BoxDecoration(

                )

              )
            ],
          ),
        ],
      ),







      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.pink.shade200,
        items: const <BottomNavigationBarItem>[


          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Beranda'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            title: Text('Artikel'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            title: Text('Event'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            title: Text('Berita'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Akun'),

          ),
        ],
        currentIndex: _selectedNavbar,
        selectedItemColor: Colors.pink,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        onTap: _changeSelectedNavBar,
      ),
    );
  }
}