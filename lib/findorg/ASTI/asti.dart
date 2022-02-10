import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wild_id/Constants/constants.dart';
import 'package:wild_id/findorg/ASTI/astimodel.dart';
import '../orgMap.dart';
import '../orgsTile.dart';

class Asti extends StatefulWidget {
  @override
  _AstiState createState() => _AstiState();
}

class _AstiState extends State<Asti> {
  bool _loading;
  List<ASTIInfo> statuslist;

  void getUpdate() async {
    ASTI asti = ASTI();
    await asti.getASTIUpdate();
    statuslist = asti.updates;
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
            'ASTI Indonesia',
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
                    child:  Image.asset('assets/Orgs/asti.jpg'),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    padding: EdgeInsets.only(left:20, right: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Animal Sanctuary Trust Indonesia (ASTI)",
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
                        Text("Sebuah data di tahun 2015 mencatat bahwa terdapat dua spesies hewan di Indonesia yang yang terancam punah. Perburuan dan perdagangan liar menjadi salah satu penyebabnya. Bagian tubuh satwa, sebut saja gading, cula, sirip, dan bulu, diambil karena bernilai ekonomis. Hutan juga habis dibabat demi kepentingan ekonomi segelintir orang. Satwa ‘dipaksa’ meninggalkan tempat tinggalnya. Eksploitasi seperti ini tentu mengganggu kestabilan ekosistem, yang sangat mungkin berujung pada kepunahan. Animal Sanctuary Trust Indonesia (ASTI) adalah salah satu yang tidak hanya prihatin dengan kondisi tersebut, namun mampu berbuat sesuatu. Organisasi ini didirikan pada 2008 oleh Andy Sean Kindangen, warga Indonesia dan sahabatnya Annette Elizabeth Pipe, warganegara Kanada yang sudah tinggal 20 tahun lebih di Indonesia.\n\nAda empat aktivitas kunci yang dilakukan ASTI. Yang pertama adalah penyelamatan. ASTI bekerja bersama Balai Besar Konservasi Sumber Daya Alam Jawa Barat (BBKSDA Jawa Barat). Satwa-satwa yang disita oleh BBKSDA, ditampung oleh ASTI untuk dirawat. Saat ini, ada sekitar 70 ekor satwa dari 23 jenis hewan dilindungi yang sedang ditangani ASTI. Kedua adalah rehabilitasi, sebelum akhirnya satwa dikembalikan ke alam liar. Ketiga adalah relokasi untuk hewan yang membutuhkan perhatian khusus, seperti orangutan yang harus dekat dengan kelompoknya agar terbiasa hidup di habitatnya seperti di hutan Sumatera dan Kalimantan. Yang terakhir adalah pelepasan atau releases. ASTI memastikan satwa-satwa tersebut dapat bertahan hidup di alam liar. Untuk kasus khusus dimana satwa tidak mungkin dilepas di alam liar karena kemungkinan bertahan hidupnya kecil, ASTI bersedia menampung dan merawat untuk waktu yang tak ditentukan",
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
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>orgMap(
                                  lat2: -6.684662417016229,
                                  lng2: 106.90244281534115,
                                  tit: "Asti Indonesia",
                                  snip: "Animal Sanctuary Trust Indonesia"
                              )));
                            },
                                child: Text("View Location", style: GoogleFonts.sora(
                                    textStyle: TextStyle(
                                      color: Colors.white,
                                    )),
                                )),
                          ],
                        ),
                        SizedBox(height: 15),
                        Image.asset("assets/Orgs/astimap.png"),
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
                        Text("Animal Sanctuary Trust Indonesia (ASTI) yang merupakan lembaga konservasi khusus bersifat non-profit. Lembaga ASTI sebagai mitra BBKSDA (Balai Besar Konservasi Sumber Daya Alam) Jawa Barat didirikan pada tahun 2008 dan berlokasi di Bogor. Lembaga ASTI merupakan tempat penyelamatan satwa dilindungi untuk diberikan perawatan awal sebelum dilanjutkan untuk menjalani rehabilitasi dan pelepasliaran.",
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
                        SizedBox(height:10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset("assets/Payment/bri.png", scale: 8,),
                            Text("Nomor Rekening:\n00102930482\n\nAtas Nama: ASTI Indonesia",style: GoogleFonts.sora(
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
