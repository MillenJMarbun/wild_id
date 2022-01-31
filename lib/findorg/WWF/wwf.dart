import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wild_id/Constants/constants.dart';
import 'package:wild_id/findorg/WWF/MapScreen.dart';
import 'package:wild_id/findorg/WWF/wwfmodel.dart';

import '../orgsTile.dart';

class Wwf extends StatefulWidget {
  @override
  _WwfState createState() => _WwfState();
}

class _WwfState extends State<Wwf> {
  bool _loading;
  List<WWFInfo> statuslist;

  void getUpdate() async {
    WWF wwf = WWF();
    await wwf.getWWFUpdate();
    statuslist = wwf.updates;
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
            'WWF Indonesia',
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
                    child:  Image.asset('assets/Orgs/wwf.jpg'),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    padding: EdgeInsets.only(left:20, right: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("World Wide Fund for Nature (WWF) Indonesia",
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
                        Text("The World Wide Fund for Nature is an international non-governmental organization founded in 1961 that works in the field of wilderness preservation and the reduction of human impact on the environment.\n\nVISI:\nYayasan WWF Indonesia memiliki visi untuk konservasi yang sejalan dengan Tujuan Pembangunan Berkelanjutan dan berkontribusi pada pembangunan berkelanjutan di Indonesia, dengan berfokus pada tata kelola sumber daya alam yang adil untuk menjamin manfaat konservasi di masa depan:\n“Ekosistem dan keanekaragaman hayati Indonesia lestari, berkelanjutan dan terkelola secara adil, untuk kesejahteraan generasi kini dan nanti”\n\nMISI\nUntuk mewujudkan visi ini, Yayasan WWF Indonesia menetapkan misi berikut ini:\n\nMewujudkan tata kelola ekosistem dan keanekaragaman hayati Indonesia yang adil dan berkelanjutan untuk kesejahteraan masyarakat Indonesia\n\nmelalui:\n\n-Mengimplementasikan dan mendorong praktik konservasi berdasarkan ilmu pengetahuan, inovasi, dan kearifan lokal;\n\n-Membangun koalisi dan kemitraan dengan masyarakat sipil, bekerja bersama pemerintah dan swasta untuk pembangunan berkelanjutan;\n\n-Mendorong nilai-nilai konservasi lingkungan hidup dengan meningkatkan kesadartahuan dan aksi konservasi di tengah masyarakat;\n\n-Mengadvokasi dan memengaruhi kebijakan dan mendorong penegakan hukum di institusi yang bertanggung jawab guna terlaksananya tata kelola lingkungan yang baik.”\n\nKami merayakan dan menghormati keragaman di alam dan di antara orang-orang, mitra, dan komunitas tempat kami bekerja. Dari berbagai budaya dan individu yang mewakili WWF, kami dipersatukan oleh satu misi, satu jenama, dan nilai sama: COURAGE (Keberanian), INTEGRITY (Integritas), RESPECT (Rasa Hormat), dan COLLABORATION (Kolaborasi).",
                            style: GoogleFonts.sora(
                                textStyle: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                ))
                        ),
                        SizedBox(height:30),
                        Text("Sejarah",
                            style: GoogleFonts.sora(
                                textStyle: TextStyle(
                                  fontSize: 22,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold
                                ))
                        ),
                        Text("Tahun 2012 menandai peringatan 50 tahun kegiatan konservasi WWF di Indonesia.Sukses yang dicapai selama lima dekade adalah buah dari sinergi dan dukungan banyak pihak. Kami akan terus bekerja untuk bumi yang lebih baik.\n\nWWF mulai berkiprah di Indonesia pada 1962 sebagai bagian dari WWF Internasional, melakukan penelitian di Ujung Kulon untuk menyelamatkan populasi badak jawa yang nyaris punah. Saat itu hanya tersisa sekitar 20 individu saja. Bekerjasama dengan Kementrian Kehutanan, lambat laun jumlah populasi satwa bercula satu itu meningkat hingga stabil sekitar 40-50 individu pada survey tahun 1980-an\nPada tahun 1996, WWF resmi berstatus yayasan, menjadi sebuah entitas legal, yang berbadan hukum sesuai ketentuan di Indonesia.Adalah Prof. Emil Salim, Pia Alisjahbana dan Harun Al Rasjid (alm) yang menjadi pendorong berdirinya Yayasan WWF Indonesia, menempatkannya sebagai organisasi nasional dalam Jaringan Global WWF, yang memiliki Dewan Penyantun sendiri, independen dan fleksibel dalam penggalangan dana dan pengembangan program.",
                            style: GoogleFonts.sora(
                                textStyle: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                ))
                        ),
                        SizedBox(height:30),
                        Text("CATATAN SINGKAT 50 TAHUN PERJALANAN WWF DI INDONESIA",
                            style: GoogleFonts.sora(
                                textStyle: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold
                                ))
                        ),
                        Text("Mengumpulkan catatan perjalanan selama 50 tahun bukanlah hal yang mudah. Berikut ini adalah sebagian dari ringkasan perjalanan lima dekade WWF di Indonesia, dari tahun 1962 hingga 2012. Kami akan terus bekerja menghadapi tantangan konservasi yang paling serius dihadapi planet ini.\n\n1960-1970\n\nWWF mulai beroperasi di Ujung Kulon pada 1962, bekerja sama dengan pemerintah Indonesia dengan proyek perdana konservasi Badak Jawa. Saat itu, berdasarkan hasil studi terdapat 20-29 individu Badak Jawa di Ujung Kulon. Pada rentang waktu ini, WWF ikut dilibatkan dalam penyusunan dokumen pertama mengenai Rencana Strategi Konservasi Badak dan penyempurnaan Rencana Utama Konservasi Alam.\n\n1971-1980\n\nDalam rentang waktu ini, WWF bekerja sama dengan Pemerintah dan Frankfurt melakukan survei Orangutan Sumatera pertama kali dan membuat pusat edukasi Orangutan di Gunung Leuser, Aceh. WWF juga mendukung penyusunan rencana lima tahun edukasi konservasi oleh Direktorat Perlindungan dan Pengawetan Alam dan di rentang waktu yang sama, kondisi populasi Badak Jawa di Ujung Kulon mulai stabil.\n\n1981-1990\n\nWWF mengadakan program survei Badak Sumatera di Gunung Leuser dan menginisiasi kampanye hutan hujan tropis. Selain itu, program konservasi kelautan juga dimulai pada periode ini dan ditandai dengan hadirnya WWF di Timur Indonesia, yakni Irian Jaya (Papua). Dalam periode yang sama, WWF bekerja sama dengan PT Pos Indonesia dalam meluncurkan perangko seri Orangutan.\n\n1991 - 2000\n\nPeriode ini merupakan waktu dimulainya upaya memadukan konservasi dan pembangunan di Nusa Tenggara. WWF pun mulai bekerja di Taman Nasional Kerinci Seblat dan Taman Nasional Bukit Barisan Selatan. Bersama masyarakat adat, WWF turut mendukung perubahan status Kayan Mentarang dari Cagar Alam menjadi Taman Nasional pada tahun 1996. Pada periode yang sama, WWF terdaftar sebagai organisasi berbadan hukum Indonesia \"Yayasan WWF Indonesia\" menggantikan WWF Indonesia Programme.\n\n2000-2005\n\nDalam periode ini, WWF memulai kerja konservasi di Derawan, Kabupaten Berau dan melakukan beberapa kampanye besar, di antaranya: kampanye perlindungan kawasan Sebuku-Sembakung di Nunukan, Kalimantan Timur; kampanye menolak tambang di kawasan lindung; inisiatif Indonesia Forest and Media Campaign (INFORM) serta kampanye melawan illegal logging \"Greencom\"; kampanye Power Switch! dan pembentukan komunitas Energy Troopers. Yayasan WWF Indonesia juga mengadakan program pendidikan lingkungan yang ditandai dengan diluncurkannya buku seri pendidikan lingkungan. WWF juga terlibat dalam komitmen tiga negara (Indonesia, Papua Nugini dan Kepulauan Solomon) dalam kesepakatan \"Bismarck Solomon Seas Marine Ecoregion for Leatherback Turtle Conservation\" (konservasi Penyu Belimbing). Dalam periode ini juga Panduan Pemberantasan Illegal Logging, bekerja sama dengan Departemen Kehutanan-ITTO dan WWF) diperkenalkan.\n\n2006-2010\n\nProgram Supporter WWF dan Supporter Kehormatan WWF dimulai pada periode ini. Yayasan WWF Indonesia juga mendukung pemerintah dalam perumusan rencana tata ruang berbasis ekosistem di Sumatera dengan konsep \"Sumatra Low-carbon Economy\" dan terlibat dalam penyusunan Rencana Aksi dan Strategi Nasional Konservasi Orangutan, Badak, dan Harimau Sumatera. Sejumlah kampanye yang dilaksanakan oleh Yayasan WWF Indonesia juga meraih penghargaan dalam kompetisi insan periklanan \"Citra Pariwara\". Dalam periode ini, Earth Hour mulai diadakan di Indonesia (2009) dan diluncurkannya komunitas Marine Buddies dan truk edukasi \"Panda Mobile\", dan masih banyak program-program lainnya.\n\n2011-SEKARANG\n\nPada rentang waktu ini, PT SJM, anggota GFTN Indonesia meraih  sertifikat Forest Stewardship Council (FSC) setelah berhasil melakukan integrasi rencana pengelolaan produksi dan pelestarian Orangutan melalui pendekatan pengelolaan hutan secara lestari. WWF juga membuahkan film berjudul \"The Mirror Never Lies\" pada tahun 2011 dan meluncurkan kampanye publik \"Bijak Memilih Seafood\". Kapal Gurano Bintang untuk misi pendidikan lingkunga di sekitar Teluk Cenderawasih, Papua diluncurkan dalam periode ini. WWF juga turut berkontribusi atas dikeluarkannya Peraturan Presiden (Perpres) Nomor 13 Tahun 2012 Tentang Tata Ruang Pulau Sumatera yang mengedepankan prinsip-prinsip berkelanjutan dan Deklarasi Bersama Kepulauan Kei Kecil sebagai kawasan perlindungan laut. Selain program yang disebutkan di atas, masih banyak lagi program dan kerja-kerja konservasi yang Yayasan WWF Indonesia lakukan hingga saat ini demi kelestarian alam Indonesia.",
                            style: GoogleFonts.sora(
                                textStyle: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black,
                                ))
                        ),
                        SizedBox(height:30),
                        Text("Donate",
                            style: GoogleFonts.sora(
                                textStyle: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: navy,
                                ))
                        ),
                        SizedBox(height: 10),
                        Text("It's time for us to be at the forefront of protecting our planet, our earth, maintaining a balance between humans and nature that affects the sustainability of future generations.\nWe are aware that we cannot go forward alone to answer the challenge of environmental damage. The conservation efforts that we carry out are long-term, sustainable, and of course require support and moral and material assistance from the public, one of which is in the form of financial support.\n\nFor individuals who are anywhere in Indonesia or in other parts of the world who want to join the struggle but cannot physically help, they can help by donating through WWF-Indonesia.",
                          style: GoogleFonts.sora(
                              textStyle: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                              )),
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
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>WWFmaps()));
                            },
                                child: Text("View Location", style: GoogleFonts.sora(
                                    textStyle: TextStyle(
                                      color: Colors.white,
                                    )),
                                )),
                          ],
                        ),
                        SizedBox(height: 15),
                        Image.asset("assets/Orgs/wwfmap.png"),
                        SizedBox(height: 50),
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset("assets/Payment/mandiri.png", scale: 7),
                            Text("Nomor Rekening:\n0012018000043\n\nAtas Nama: WWF Indonesia",style: GoogleFonts.sora(
                                textStyle: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                )),),
                          ],
                        ),
                        SizedBox(height:10),
                        Divider(
                          thickness: 3,
                          color: maincol,
                        ),
                        SizedBox(height:10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset("assets/Payment/paypal.jpg", scale: 8,),
                            Text("Account Name:\n@WWFIndonesia\n\nAtas Nama: WWF Indonesia",style: GoogleFonts.sora(
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
