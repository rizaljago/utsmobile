import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:love_yourselfid/screens/akunpage.dart';
import 'package:love_yourselfid/screens/beritapage.dart';
import 'package:love_yourselfid/screens/eventpage.dart';
import 'package:love_yourselfid/screens/artikelpage.dart';
import 'package:love_yourselfid/screens/homepage.dart';
import 'package:love_yourselfid/utils/customclipper.dart';

class ArtikelPageOne extends StatefulWidget {
  static String tag = 'artikel-page-one';
  @override
  _ArtikelPageOneState createState() => new _ArtikelPageOneState();
}

class _ArtikelPageOneState extends State<ArtikelPageOne> {

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
                  Image.asset('assets/card5.png', width: 300,),
                  Text(' '),
                  Text('Sabrina Chairunnisa: Perempuan Juga Bisa Jadi Pelaku Pelecehan Seksual', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,)),
                  Text(' '),
                  Text('          Liputan6.com, Jakarta - Sabrina Chairunnisa ternyata cukup intens mengamati komentar-komentar dari warganet atau netizen, khususnya warganet perempuan. Dalam pengamatannya, netizen perempuan lebih horor dalam berkomentar.'),
                  Text('  '),
                  Text('          "Miris ngelihat komentar SANGAT GA LAYAK dari banyak perempuan-perempuan Indonesia di sosial media," kata Sabrina Chairunnisa dalam akun Instagram pribadinya, Rabu (29/4/2020).'),
                  Text('  '),
                  Text('          Finalis Puteri Indonesia 2011 itu menegaskan, mereka tidak bisa membedakan mana yang peran dan mana yang realitas. Mereka juga tidak bisa membedakan antara jadi fans, berhalusinasi, sampai melakukan tindak pelecehan seksual.'),
                  Text('  '),
                  Text('          Dalam unggahannya itu, Sabrina menuliskan beberapa poin tentang keresahannya terhadap kelakuan warganet perempuan Indonesia. Apa saja?'),
                  Text('  '),
                  Text('          Pertama, menurut Sabrina, banyak perempuan Indonesia terbiasa mem-bully, bahkan memaki dengan kata-kata yang tidak etis. Hal itu terjadi dalam kasus penyampaian sumpah serapah ke salah satu pemain drama Korea, Married of the World, lewat Instagram. Warganet seakan tak bisa membedakan sosok nyata dan peran di drama.'),
                  Text('  '),
                  Text('          "Kesel sama gundik? Silahkan. Gw jg orang yg ANTI BANGET sama "gundik" atau apalah biasa disebut. Tapi ngga ya juga cuman pemain seni peran di BULLY cuman karena kebaperan semata. Selain jadi ngasi liat kualitas dan level intelektual kita sbg seorang perempuan hal tsb jg ngasi liat betapa belum layak dan pantasnya kita menggunakan sosmed," papar Sabrina Chairunnisa.'),
                  Text('  '),
                  Text('          Kedua, Sabrina Chairunnisa menyoroti komentar warganet perempuan tentang Pangeran Brunei Darussalam yang sempat viral. Sabrina mempertanyakan makna kata-kata, seperti "rahimku anget,' 'rahimku bergetar".'),
                  Text('  '),
                  Text('          "GW GA PAHAM LOH WHAT DOES THAT EVEN MEAN SIH? SUMPAH.. RAHIM BERGETAR ITU APA? Lalu, perempuan2 yg komen begitu di instagram cowo itu nyadar nggak sih kalau kalian termasuk pelaku pelecehan sexual?" kata Sabrina.'),
                  Text('  '),
                  Text('          "Ngga cuman cowo loh yg bisa melecehkan. Terus yg komen komen kaya gitu berarti kalau di lecehkan cowo gpp dong ya?" imbuhnya.'),
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
