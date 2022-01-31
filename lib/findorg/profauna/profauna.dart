import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wild_id/Constants/constants.dart';
import 'package:wild_id/findorg/profauna/profaunamode.dart';
import 'package:wild_id/findorg/profauna/profaunamap.dart';

import '../orgsTile.dart';


class Profauna extends StatefulWidget {
  @override
  _ProfaunaState createState() => _ProfaunaState();
}

class _ProfaunaState extends State<Profauna> {
  bool _loading;
  List<PROFAUNAInfo> statuslist;

  void getUpdate() async {
    PROFAUNA profauna = PROFAUNA();
    await profauna.getPROFAUNAUpdate();
    statuslist = profauna.updates;
    setState(() {
      _loading = false;
    });
  }

  @override
  void initState() {
    _loading = true;
    // TODO: implement initState
    super.initState();
    getUpdate();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: mywhite,
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: maincol,
            ),
            onPressed: () => Navigator.pop(context),
          ),
          title: new Text(
            'PROFAUNA Indonesia',
            style: GoogleFonts.sora(
                textStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: maincol,
                )
            ),
          ),
          bottom: TabBar(
            labelColor: maincol,
            unselectedLabelColor: Colors.grey,
            indicatorColor: maincol,
            tabs: [
              Tab(text: 'Summary' ),
              Tab(text: 'Activities'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ///Summary Tab
            new SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 250,
                    color: Colors.white,
                    child:  Image.asset('assets/Orgs/profauna.jpg'),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    padding: EdgeInsets.only(left:20, right: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("PROFAUNA Indonesia",
                            style: GoogleFonts.sora(
                                textStyle: TextStyle(
                                  fontSize: 27,
                                  fontWeight: FontWeight.bold,
                                  color: maincol,
                                ))
                        ),
                        SizedBox(height: 20,),
                        Text("Description",
                            style: GoogleFonts.sora(
                                textStyle: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: navy,
                                ))
                        ),
                        SizedBox(height: 10),
                        Text("PROFAUNA Indonesia adalah yayasan sosial yang bergerak dibidang konservasi hutan dan perlindungan satwa liar. PROFAUNA Indonesia pada awalnya didirikan pada tahun 1994 di kota Malang, Jawa Timur Indonesia, dengan nama Konservasi Satwa Bagi Kehidupan yang kemudian berkembang di seluruh Indonesia dan luar negeri.\n\nIsu utama yang ditangani PROFAUNA Indonesia saat ini ada tiga yaitu: isu perburuan satwa liar,  konservasi hutan bersama masyarakat lokal dan  pengelolaan konservasi penyu.\n\nKegiatan PROFAUNA bersifat non politis, non profit dan non kekerasan. PROFAUNA adalah organisasi yang aktif, dinamis dan melakukan aksi langsung di lapangan untuk melestarikan hutan dan melindungi satwa liar.\n\nProtection of Forest & Fauna (PROFAUNA) Indonesia adalah organisasi perlindungan hutan dan satwa liar yang didirikan oleh dua orang aktivis lingkungan yaitu Rosek Nursahid dan Made Astuti pada tahun 1994 di Kota Malang, Jawa Timur, Indonesia. Rosek dan Made adalah seorang biolog yang sejak muda gemar mengunjungi tempat-tempat yang menjadi habitat satwa liar. Pada awalnya PROFAUNA bernama Konservasi Satwa Bagi Kehidupan, yang kemudian pada tahun 2002 berubah nama menjadi PROFAUNA Indonesia.\n\nIde pendirian PROFAUNA muncul setelah pada tahun 1990-an Rosek mengunjungi beberapa pasar burung di Jakarta. Di pasar burung tersebut Rosek menemukan banyak satwa langka yang dijual bebas, seperti orangutan, siamang, kakatua, beruang madu, cendrawasih, dll. Padahal semestinya perdagangan satwa langka itu terlarang karena satwa-satwa tersebut telah dilindungi undang-undang.\n\nKeprihatinan akan maraknya perdagangan satwa langka itu yang mendorong Rosek dan Made mendirikan PROFAUNA yang kemudian kini menjadi organisasi grassroot terbesar di Indonesia untuk perlindungan satwa liar. Pada tahun 2014, PROFAUNA memperbesar porsi kampanye perlindungan hutan Indonesia, selain tentu saja tetap berjuang juga untuk pelestarian satwa liar.\n\nMeningkatnya perhatian PROFAUNA akan isu hutan tersebut ditandai dengan bergantinya logo PROFAUNA dari logo bergambar seekor lutung menjadi logo yang dipakai sekarang ini yaitu bergambar hutan dan primata.\n\nPRINSIP PROFAUNA:\n\nPROFAUNA percaya setiap jenis satwa liar mempunyai nilai bagi kelestarian alam, untuk itu setiap jenis satwa liar seharusnya dibiarkan hidup bebas di alam, dan manusialah yang bertanggung jawab untuk mewujudkannya.\n\nPrinsip PROFAUNA dalam isu hutan adalah kami percaya bahwa pelestarian hutan akan lebih efektif jika melibatkan partisipasi aktif masyarakat lokal. Hutan bukan sekedar kayu, namun ada kehidupan satwa liar dan beragam spesies yang unik. Hutan juga mempunyai fungsi secara ekologi dan sosial.\n\nPRIORITAS SPESIES PROFAUNA SAAT INI:\n\nPROFAUNA hanya bekerja pada isu satwa liar (wildlife), tidak menangani satwa ternak, satwa domestik atau satwa peliharaan seperti anjing atau kucing.\n\nPROFAUNA memberi kesempatan kepada masyarakat luas yang peduli pelestarian satwa liar dan hutan Indonesia untuk bergabung menjadi relawan PROFAUNA. Saat ini relawan PROFAUNA tersebar luas di seluruh Indonesia dan luar negeri. Selain berbasis relawan, PROFAUNA juga mengembangkan kemitraan dengan masyarakat lokal untuk isu konservasi hutan.",
                            style: GoogleFonts.sora(
                                textStyle: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                ))
                        ),
                        SizedBox(height: 35),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Location",style: GoogleFonts.sora(
                                textStyle: TextStyle(
                                  fontSize: 30,
                                  color: maincol,
                                )),),
                            ElevatedButton(onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfaunaMap()));
                            },
                                child: Text("View Location", style: GoogleFonts.sora(
                                    textStyle: TextStyle(
                                      color: Colors.white,
                                    )),
                                )),
                          ],
                        ),
                        SizedBox(height: 15),
                        Image.asset("assets/Orgs/profaunamap.png"),
                        SizedBox(height: 50),
                        Text("Donate",
                            style: GoogleFonts.sora(
                                textStyle: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: navy,
                                ))
                        ),
                        SizedBox(height: 10),
                        Text("Kami membutuhkan Donasi Anda, berikut adalah beberapa program yang kami lakukan\n\n# Konservasi Hutan\n\n# Program Adopsi Pohon\n\n# Ranger PROFAUNA, Sang Penjaga Hutan\n\n# Advokasi Melawan Perburuan Satwa Liar\n\n# Donasi umum untuk kegiatan PROFAUNA secara umum.\n\nDengan donasi mulai dari Rp 50.000 anda telah membantu upaya perlindungan satwa liar dan habitatnya yang dilakukan PROFAUNA Indonesia.",
                          style: GoogleFonts.sora(
                              textStyle: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                              )),
                        ),
                        SizedBox(height: 35),
                        Container(
                          padding: EdgeInsets.all(8),
                          color: navy,
                          child: Text("DONATE TODAY AND VIEW UDPATES ON FUNDS RAISED FOR THIS ORGANIZATION",
                            style: GoogleFonts.sora(
                                textStyle: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                )),
                          ),
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.asset("assets/Payment/bri.png", scale: 7),
                            Text("Nomor Rekening:\n005101003559304\n\nAtas Nama:\nYayasan Profauna\nIndonesia",style: GoogleFonts.sora(
                                textStyle: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                )),),
                          ],
                        ),
                        SizedBox(height: 50),
                      ],
                    ),
                  )
                ],
              ),
            ),

            ///Activities Tab
            new SingleChildScrollView(
              child: SafeArea(
                child: _loading
                    ? Center(
                  child: CircularProgressIndicator(),
                )
                    : SingleChildScrollView(
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        /// News Article
                        Container(
                          margin: EdgeInsets.only(top: 16),
                          child: ListView.builder(
                              itemCount: statuslist.length,
                              shrinkWrap: true,
                              physics: ClampingScrollPhysics(),
                              itemBuilder: (context, index) {
                                return orgsTile(
                                  imgUrl: statuslist[index].urlToImage,
                                  title: statuslist[index].title,
                                  desc: statuslist[index].description,
                                  content: statuslist[index].content,
                                  posturl: statuslist[index].articleUrl,
                                );
                              }),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => super.widget));
          },
          child: Icon(Icons.refresh),
          backgroundColor: maincol,
          foregroundColor: Colors.white,
        ),
      ),
    );
  }
}
