import 'package:google_fonts/google_fonts.dart';
import 'package:wild_id/Constants/constants.dart';
import 'package:wild_id/findorg/IAR/IARmodel.dart';
import 'package:flutter/material.dart';
import '../orgMap.dart';
import '../orgsTile.dart';

class Iar extends StatefulWidget {
  @override
  _IarState createState() => _IarState();
}

class _IarState extends State<Iar> {
  bool _loading;
  List<IARInfo> statuslist;

  void getUpdate() async {
    IAR iar = IAR();
    await iar.getIARUpdate();
    statuslist = iar.updates;
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
            'IAR Indonesia',
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
                    child:  Image.asset('assets/Orgs/iar.png'),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    padding: EdgeInsets.only(left:20, right: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("International Animal Rescue (IAR) Indonesia",
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
                        Text("Sejak 2008, kami terus tumbuh sebagai lembaga non-profit yang bergerak di bidang kesejahteraan, perlindungan dan pelestarian satwa liar di Indonesia dengan berbasis pada upaya 3R dan M: Rescue, Rehabilitation dan Release, serta Monitoring.\n\nKami berkomitmen pada penyelamatan, rehabilitasi, dan perlindungan primata seperti kukang, monyet (macaque) dan orangutan dengan menjalankan dua pusat rehabilitasi di Bogor, Jawa Barat dan Ketapang, Kalimantan Barat.\n\nUntuk meningkatkan upaya tersebut, kami fokus pada dua hal yakni perlindungan dan keterhubungan habitat di tingkat lanskap, serta mendorong penegakan hukum dari aktivitas perdagangan satwa ilegal melalui kerja sama dengan instansi pemerintah seperti Kementerian Lingkungan Hidup dan Kehutanan serta unit-unit pelaksana di daerah, sektor swasta, Pemda, LSM dan masyarakat lokal. Upaya tersebut juga diiringi dengan penyadartahuan masyarakat dan pemberdayaan komunitas lokal.\n\nIAR Indonesia adalah lembaga konservasi yang bergerak di bidang kesejahteraan, perlindungan dan pelestarian satwa liar di Indonesia dengan berbasis pada upaya 3R & M: Rescue, Rehabilitation, Release dan Monitoring.",
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
                                  lat2: -6.662460679245682,
                                  lng2: 106.72881303863542,
                                  tit: "IAR Indonesia",
                                  snip: "International Animal Rescue Indonesia"
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
                        Image.asset("assets/Orgs/IARmap.png"),
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
                        Text("IAR Indonesia berkomitmen pada penyelamatan primata seperti kukang, monyet dan orangutan dengan menjalankan dua pusat rehabilitasi di Bogor, Jawa Barat dan Ketapang, Kalimantan Barat.\n\nUntuk mendukung upaya tersebut, IAR Indonesia fokus pada dua hal yakni perlindungan dan keterhubungan habitat di tingkat lansekap, serta mendorong penegakan hukum dari aktivitas perdagangan satwa ilegal melalui kerja sama dengan instansi pemerintah seperti Kementerian Lingkungan Hidup dan Kehutanan, serta unit-unit pelaksana di daerah, sektor swasta, Pemda, LSM dan masyarakat lokal. Hal itu juga diiringi dengan penyadartahuan masyarakat dan pemberdayaan komunitas lokal.",
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset("assets/Payment/mandiri.png", scale: 7),
                            Text("Nomor Rekening:\n0060010419228\n\nAtas Nama: IAR Indonesia",style: GoogleFonts.sora(
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
                            Image.asset("assets/Payment/bri.png", scale: 8,),
                            Text("Nomor Rekening:\n00102930482\n\nAtas Nama: IAR Indonesia",style: GoogleFonts.sora(
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
