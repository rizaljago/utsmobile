import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:love_yourselfid/screens/akunpage.dart';
import 'package:love_yourselfid/screens/beritapage.dart';
import 'package:love_yourselfid/screens/eventpage.dart';
import 'package:love_yourselfid/screens/artikelpage.dart';
import 'package:love_yourselfid/screens/homepage.dart';
import 'package:love_yourselfid/utils/customclipper.dart';

class EventPageOne extends StatefulWidget {
  static String tag = 'event-page-one';
  @override
  _EventPageOneState createState() => new _EventPageOneState();
}

class _EventPageOneState extends State<EventPageOne> {
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
                accountName: Text('VirgiMelvaIjal',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    )),
                accountEmail: Text('0810810810811',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    )),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('assets/logoappbar.png'),
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.pinkAccent.shade200,
                      Colors.pinkAccent.shade100
                    ],
                    begin: Alignment.bottomRight,
                    end: Alignment.topLeft,
                    tileMode: TileMode.clamp,
                  ),
                ),
              ),
              ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Beranda",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      )),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  }),
              ListTile(
                  leading: Icon(Icons.assignment),
                  title: Text("Artikel",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      )),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ArtikelPage()),
                    );
                  }),
              ListTile(
                  leading: Icon(Icons.event),
                  title: Text("Event",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      )),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => EventPage()),
                    );
                  }),
              ListTile(
                  leading: Icon(Icons.chrome_reader_mode),
                  title: Text("Berita",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      )),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BeritaPage()),
                    );
                  }),
              ListTile(
                  leading: Icon(Icons.people),
                  title: Text("Akun",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      )),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AkunPage()),
                    );
                  }),
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
          title: Text(
            'Event',
            style: TextStyle(
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
            ))),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Row(
          children: <Widget>[
            Container(
              height: 150,
              width: 10,
            ),
            Expanded(
              child: Column(
                children: <Widget>[
                  Image.asset(
                    'assets/card7.png',
                    width: 350,
                  ),
                  Text(' '),
                  Text(
                      'FemFest 2019 Dorong Narasi Kesetaraan Gender dan Hak Perempuan',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      )),
                  Text(' '),
                  Text(
                      '          Festival feminis dwi tahunan FemFest kembali hadir dengan tema “Feminis Buatan Indonesia”. Diselenggarakan oleh Perkumpulan Lintas Feminis Jakarta, acara ini berlangsung selama dua hari pada 23-24 November di Wisma PKBI, Jakarta Selatan.'),
                  Text('  '),
                  Text(
                      '          Ketua FemFest 2019 Skolastika Lupitawina mengatakan, visi festival tahun ini adalah meningkatkan pemahaman bahwa feminisme juga merupakan bagian dari budaya Indonesia. Selama ini feminisme banyak dianggap sebagai upaya westernisasi padahal nilai-nilai feminisme telah hidup dalam kebudayaan negara ini.'),
                  Text('  '),
                  Text(
                      '          “FemFest tahun ini ingin meningkatkan pemahaman bahwa feminisme bukan barang impor, melainkan perspektif dan perjuangan yang sudah lama hidup di Indonesia,” ujar Skolastika, atau biasa dipanggil Tika.'),
                  Text('  '),
                  Text(
                      '          “Kami juga ingin mendorong masyarakat, khususnya muda-mudi, untuk turut menjadi aktivis feminis dengan pemahaman ini.”'),
                  Text('  '),
                  Text(
                      '          Tika mengatakan bahwa tema festival tahun ini juga datang dari pergerakan perempuan yang sejak lama sudah vokal dan terus berupaya untuk dilanjutkan.'),
                  Text('  '),
                  Text(
                      '          “Feminis Buatan Indonesia adalah kesempatan kami mendorong narasi bahwa kesetaraan gender dan hak perempuan sudah ada sejak dulu, dan akan terus menjadi isu Indonesia yang dibawakan oleh orang Indonesia,” ujar Tika.'),
                  Text('  '),
                  Text(
                      '          “Indonesia punya sejarah pergerakan perempuan yang sangat kaya, yang memiliki semangat feminis meskipun tidak selalu dibingkai dengan istilah feminisme.”'),
                  Text('  '),
                  Text(
                      '          Acara tahun ini juga mendorong digalakkannya lagi narasi mengenai kesetaraan gender dan hak perempuan. Paham feminisme sendiri juga bukan hanya berkutat pada persoalan gender, melainkan pula juga pada isu ras, kelas sosial, agama, dan isu-isu yang berkelindan lainnya dalam identitas pribadi dan politik.'),
                  Text('  '),
                  Text(
                      '          FemFest 2019 akan menghadirkan serangkaian diskusi dan lokakarya. Tema diskusi beragam, yakni perempuan dan budaya, identitas gender, interseksionalitas, sekutu feminis, feminis di kampus, feminisme dalam politik, hingga feminisme dan hak pekerja. Sesi-sesi diskusi menghadirkan pembicara-pembicara seperti aktivis buruh migran Anis Hidayah, aktivis gender Tunggal Pawestri, seniman Ika Vantiani, politisi Dara Nasution, sampai aktris Hannah Al Rashid dan Tara Basro.'),
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
