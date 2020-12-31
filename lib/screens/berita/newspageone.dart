import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:love_yourselfid/screens/akunpage.dart';
import 'package:love_yourselfid/screens/beritapage.dart';
import 'package:love_yourselfid/screens/eventpage.dart';
import 'package:love_yourselfid/screens/artikelpage.dart';
import 'package:love_yourselfid/screens/homepage.dart';
import 'package:love_yourselfid/utils/customclipper.dart';

class NewsPageOne extends StatefulWidget {
  static String tag = 'news-page-one';
  @override
  _NewsPageOneState createState() => new _NewsPageOneState();
}

class _NewsPageOneState extends State<NewsPageOne> {

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
                  Image.asset('assets/card3.png', width: 300,),
                  Text(' '),
                  Text('ABG 15 Tahun di Melbourne Alami Pelecehan, Pelakunya Pria Naik Motor Mio', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,)),
                  Text(' '),
                  Text('          SURABAYA - Jangan mudah tergiur tawaran orang tak dikenal. Seorang ABG berusia 15 tahun di Melbourne dilecehkan secara seksual oleh pria yang mengajaknya naik motor.'),
                  Text('  '),
                  Text('          Gadis belia berusia 15 tahun yang tidak disebutkan identitasnya mengalami pelecehan seksual saat liburan di Pantai, Melbourne. Pelakunya seorang pria yang mengendarai motor mio.'),
                  Text('  '),
                  Text('          Dihimpun detikTravel dari beberapa sumber, Sabtu (27/12/2020), ceritanya, gadis tersebut sedang bersama teman-temannya bersantai sore di dermaga. Saat sedang santai itu, tiba-tiba seorang pria yang naik jet ski berwarna merah datang dan menghampiri mereka.'),
                  Text('  '),
                  Text('          Pria tersebut menawarkan kepada si gadis dan teman-temannya buat naik jet ski gratis. Karena tertarik, si gadis tadi pun mau diajak pria yang baru dikenalnya tadi.'),
                  Text('  '),
                  Text('          Namun sayang, pria berjet ski tadi berniat jahat kepada si gadis ABG. Dia membawa si gadis pergi menjauh dari pantai menuju ke perairan yang cukup dalam.'),
                  Text('  '),
                  Text('          Di lokasi itulah pria tadi melakukan pelecehan seksual terhadap si gadis. Usai melampiaskan nafsunya, gadis tadi diantar kembali ke teman-temannya.'),
                  Text('  '),
                  Text('          Detektif Adam Vaughan dari satuan Sexual Offences and Child Abuse Investigation Team (SOCIT) mengatakan, serangan tersebut sudah direncanakan sebelumnya. Adam yakin kejadian tersebut bukanlah kejadian tunggal, kemungkinan ada korban lainnya.'),
                  Text('  '),
                  Text('          "Jika kamu pernah dilecehkan secara seksual di pantai Altona, silakan lapor dan berbicara dengan kami," kata Detektif Adam.'),
                  Text('  '),
                  Text('          Polisi sendiri sudah menerima informasi tentang kejadian pelecehan serupa di pantai Altona. Tapi sampai sejauh ini belum ada korban lain yang melapor."Area ini sungguh padat penduduk, jadi kami cukup khawatir," Adam menambahkan. Adam meminta agar semua informasi yang dimiliki warga terkait insiden ini dilaporkan kepada pihak kepolisian. Detektif Adam sampai saat ini masih mencari tersangka pelecehan tersebut. Ciri-ciri pelakunya, berumur sekitar 30-an dengan rambut hitam dan jenggot, serta memiliki perawakan seperti pria Timur Tengah.'),
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
