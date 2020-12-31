import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:love_yourselfid/screens/akunpage.dart';
import 'package:love_yourselfid/screens/beritapage.dart';
import 'package:love_yourselfid/screens/eventpage.dart';
import 'package:love_yourselfid/screens/artikelpage.dart';
import 'package:love_yourselfid/screens/homepage.dart';
import 'package:love_yourselfid/utils/customclipper.dart';

class ArtikelPageTwo extends StatefulWidget {
  static String tag = 'news-page-one';
  @override
  _ArtikelPageTwoState createState() => new _ArtikelPageTwoState();
}

class _ArtikelPageTwoState extends State<ArtikelPageTwo> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
          title: Text('Berita', style: TextStyle(
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
      body: SingleChildScrollView(
        child: Row(
          children: <Widget>[
            Container(
              height: 150,
              width: 20,
            ),
            Expanded(
              child: Column(
                children: <Widget>[
                  Image.asset('assets/card6.png', width: 300,),
                  Text(' '),
                  Text('Soraya Larasati Bersuara Usai Jadi Korban Pelecehan Seksual: Azab Allah Pasti Nyata', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,)),
                  Text(' '),
                  Text('          Liputan6.com, Jakarta - Soraya Larasati menjadi korban pelecehan seksual saat tengah lari pagi. Peristiwa tak menyenangkan ini terjadi di kawasan Bintaro, Tangerang Selatan, Minggu (5/4/2020).'),
                  Text('  '),
                  Text('          Saat itu, Soraya Larasati tengah berlari seorang diri. Sampai tiba-tiba seorang mengendarai motor mendekatinya dan melakukan aksi pelecehan.'),
                  Text('  '),
                  Text('          "Dalam kondisi berlari.. Jadi saya fokus aja gt.. Tiba2 ada yang mencomot bagian dada saya dari belakang.. Tepatnya lokasi di sektor 5 bintaro depan stan.. Di situ padahal ada lalu lalang kendaraan," tulisnya di Instagram, Minggu (5/4/2020).'),
                  Text('  '),
                  Text('          "Tanpa sempat saya foto plat nomor kendaraannya. Karena shock bangett," kata Soraya Larasati menambahkan. '),
                  Text('  '),
                  Text('          Meski sangat kesal, tampaknya Soraya Larasati enggan memperkarakan kasus ini. Ia memilih untuk mendoakan sang pelaku.'),
                  Text('  '),
                  Text('          "Saya tidak niat menuntut apa2 dari pelaku. Karena azab Allah pasti nyata. Saya doakan semoga diberikan hidayah karena azab Allah sangat pedih," tutur ibu dua anak ini.'),
                  Text('  '),
                  Text('          Soraya Larasati pun memberi beberapa kiat agar tak ada perempuan lain yang bernasib sama seperti dirinya. '),
                  Text('  '),
                  Text('          "Lebih baik berolahraga di rumah...Ataupun mau di luar komplek, sebisa mungkin lawan arus kendaraan supaya bisa lebih waspada. Dan sebaiknya ditemani mahram. Untuk bisa melindungi diri," ujarnya.'),
                  Text('  '),
                  Text('          Pesinetron berusia 33 tahun ini berharap kasus ini dapat menjadi pelajaran bagi orang lain, khususnya diri sendiri untuk lebih berhati-hati di kemudian hari.'),
                  Text('  '),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
