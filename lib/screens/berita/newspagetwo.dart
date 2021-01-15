import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:love_yourselfid/screens/akunpage.dart';
import 'package:love_yourselfid/screens/beritapage.dart';
import 'package:love_yourselfid/screens/eventpage.dart';
import 'package:love_yourselfid/screens/artikelpage.dart';
import 'package:love_yourselfid/screens/homepage.dart';
import 'package:love_yourselfid/utils/customclipper.dart';

class NewsPageTwo extends StatefulWidget {
  static String tag = 'news-page-two';
  @override
  _NewsPageTwoState createState() => new _NewsPageTwoState();
}

class _NewsPageTwoState extends State<NewsPageTwo> {

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
                  Image.asset('assets/card4.png', width: 300,),
                  Text(' '),
                  Text('Pelaku Pelecehan Seksual Anak Didominasi Keluarga Dekat, Waspada!', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,)),
                  Text(' '),
                  Text('          BLITAR - Pelaku pelecehan seksual sepanjang tahun 2020 di Kabupaten Blitar masih didominasi orang dekat korban. Dari 42 kasus kekerasan anak selama Januari- Desember, pelecehan seksual juga masih menempati urutan tertinggi, yakni 34 kasus.'),
                  Text('  '),
                  Text('          "Pelaku tetangga dekat, keluarga dekat, bukan orang jauh," ujar Kepala Dinas Pengendalian Penduduk Keluarga Berencana Pemberdayaan Perempuan dan Perlindungan Anak Kabupaten Blitar Eka Purwanta kepada wartawan, Senin (28/12/2020).'),
                  Text('  '),
                  Text('          Salah satu faktor penyebab terjadinya pelecehan seksual adalah pemakaian gadget, terutama terkait konten pornografi yang mudah diakses. Rasa penasaran atau ingin tahu yang mendorong pelaku mewujudkan rasa penasarannya.'),
                  Text('  '),
                  Text('          Sementara korbannya, kata Eka, hampir selalu diiming-imingi hal sepele seperti makanan dan uang. "Dampak dari HP (gadget)," tambah Eka.'),
                  Text('  '),
                  Text('          Kendati demikian, dibanding tahun 2019, jumlah angka kasus kekerasan anak pada tahun 2020, turun drastis. Selama Januari-Desember 2020, tercatat 42 kasus. Sedangkan pada tahun 2019 sebanyak 84 kasus.'),
                  Text('  '),
                  Text('          Sementara untuk kasus kekerasan perempuan sepanjang Januari-Desember 2020, tercatat sebanyak 21 kasus. Kasus kekerasan dalam rumah tangga (KDRT), yakni 14 kasus, masih menempati urutan teratas.'),
                  Text('  '),
                  Text('          Menurut Eka, kasus KDRT yang terjadi sebagian besar dilatarbelakangi faktor pernikahan dini atau perkawinan usia muda. Ketidaksiapan mental dan ekonomi dalam membina hubungan rumah tangga, menjadi pemicu terjadinya KDRT.'),
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