import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:love_yourselfid/screens/akunpage.dart';
import 'package:love_yourselfid/screens/beritapage.dart';
import 'package:love_yourselfid/screens/eventpage.dart';
import 'package:love_yourselfid/screens/artikelpage.dart';
import 'package:love_yourselfid/screens/homepage.dart';
import 'package:love_yourselfid/utils/customclipper.dart';

class EventPageTwo extends StatefulWidget {
  static String tag = 'event-page-two';
  @override
  _EventPageTwoState createState() => new _EventPageTwoState();
}

class _EventPageTwoState extends State<EventPageTwo> {
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
              width: 20,
            ),
            Expanded(
              child: Column(
                children: <Widget>[
                  Image.asset(
                    'assets/card8.png',
                    width: 300,
                  ),
                  Text(' '),
                  Text('Program WAVES: Inisiatif Baru Dalam Kesetaraan Gender',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      )),
                  Text(' '),
                  Text(
                      '          WAVES - Weaving Leadership for Gender Equality Program (Merajut Kepemimpinan untuk Program Kesetaraan Gender) merupakan sebuah inisiatif dengan sekelompok orang yang tertarik dari lembaga swadaya masyarakat, kelompok perempuan, pemerintah, investor, perusahaan yang akan mendorong kesetaraan gender dan agenda pemberdayaan perempuan pada organisasi mereka melalui kegiatan bersama, seperti peningkatan keterampilan dan penguatan kepemimpinan.'),
                  Text('  '),
                  Text(
                      '          Peluncuran program WAVES pada bulan Maret 2019 dihadiri oleh perwakilan beragam institusi di Indonesia yang diharapkan dapat saling mendukung dari tingkat tapak sampai ke tingkat pembuat kebijakan.'),
                  Text('  '),
                  Text(
                      '          Inisiatif ini merupakan bagian dari Rencana Strategis The Center for People and Forests (RECOFTC), yaitu Inklusi Sosial, Kesetaraan Gender, dan Aksi Publik yang bertujuan untuk meningkatkan kapasitas, tata kelola yang lebih baik, dan manfaat yang lebih adil bagi masyarakat lokal dalam lanskap hutan yang berkelanjutan di kawasan Asia Pasifik. Program WAVES akan berlangsung selama tiga tahun (2019-2022) dan dilaksanakan di tujuh negara, yaitu Thailand, Myanmar, Vietnam, Kamboja, Laos, dan Indonesia.'),
                  Text('  '),
                  Text(
                      '          Dengan tingginya kesenjangan gender di negara-negara tersebut, program WAVES ini bertujuan untuk melengkapi pemimpin di Asia Pasifik dengan pengetahuan dan kapasitas dalam memahami, merancang, dan mengimplementasikan nilai-nilai kesetaraan gender, membangun keterampilan kepemimpinan perempuan dan laki-laki sebagai sekutu untuk mendukung kesetaraan gender, dan mengintegrasi kesetaraan gender kedalam kebijakan, investasi, dan aksi.'),
                  Text('  '),
                  Text(
                      '          Dalam pelaksanaannya, beberapa pendekatan yang diterapkan adalah pemilihan pemimpin berdasarkan komitmen dan kemampuannya, pendampingan untuk kebutuhan yang berbeda, lingkungan yang kondusif untuk mengatasi kesenjangan melalui ruang kolaboratif di tingkat regional dan nasional. Beberapa pendekatan ini diharapkan akan membawa hasil demontrasi nyata sebagai aksi pemimpin pada skala tertentu.'),
                  Text('  '),
                  Text(
                      '          Di Indonesia, program WAVES RECOFTC diluncurkan pada tanggal 5 Maret 2019 oleh Ms. Åsa Hedén, Head of Development Cooperation – Regional Asia and the Pacific, Kedutaan Swedia, Bangkok dan Dr. Chandra Silori, Acting Deputy Executive Director, The Center for People and Forests (RECOFTC).'),
                  Text('  '),
                  Text(
                      '          Peserta program WAVES dari Indonesia berjumlah tujuh orang, yaitu Dian Nurhadiatin dari Kementerian Pemberdayaan Perempuan dan Perlindungan Anak, Kusdamayanti dari Badan Diklat KLHK Rumpin-Bogor, Novati E. Dungga dari Universitas Hasanuddin Makassar, Mardha Tilla dari Rimbawan Muda Indonesia, Yurni Sa’diah dari Perempuan AMAN, Namira Arsa dari Sulawesi Community Foundation, dan Reny Juita dari RECOFTC. Perwakilan yang beragam dari Indonesia ini diharapkan dapat saling mendukung dari tingkat tapak sampai ke tingkat pembuat kebijakan.'),
                  Text('  '),
                  Text(
                      '          Peluncuran program diikuti dengan pelatihan kepemimpinan selama empat hari dengan materi yang mencakup identifikasi tantangan dalam kepemimpinan, identifikasi jejaring dan membangun serikat/sekutu, komunikasi, dan negosiasi. Pada hari terakhir, peserta pelatihan membuat rencana kerja yang akan dilakukan untuk tiga tahun kedepan, termasuk para pemimpin yang selain membuat rencana kerjanya masing-masing, juga membuat program bersama yang akan dicapai dalam tiga tahun kedepan.'),
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
