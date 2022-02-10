import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wild_id/Constants/constants.dart';
import 'package:wild_id/findorg/YABI/yabimodel.dart';
import '../orgMap.dart';
import '../orgsTile.dart';


class Yabi extends StatefulWidget {
  @override
  _YabiState createState() => _YabiState();
}

class _YabiState extends State<Yabi> {
  bool _loading;
  List<YABIInfo> statuslist;

  void getUpdate() async {
    YABI yabi = YABI();
    await yabi.getYABIUpdate();
    statuslist = yabi.updates;
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
            'YABI Indonesia',
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
                    child:  Image.asset('assets/Orgs/yabi.jpeg'),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    padding: EdgeInsets.only(left:20, right: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Yayasan Badak Indonesia (YABI) Indonesia",
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
                        Text("Yayasan Badak Indonesia or The Rhino Foundation of Indonesia is an amalgamation of two (2) foundation and one (1) program, namely Yayasan Mitra Rhino (YMR), Sumatran Rhino Sanctuary Foundation (YSRS) and the Indonesian Rhino Conservation Program (PKBI).\n\nThe institution who primarily responsible for the conservation of biodiversity and hence rhinoceros in Indonesia is the Directorate General of Forest Protection and Nature Conservation of the Ministry of Forestry Republic of Indonesia. Beside PHKA, there are some organizations who participate in rhinoceros conservation in Indonesia. They are Yayasan Mitra Rhino (YMR) dan Yayasan Suaka Rhino Sumatera (YSRS), and Program Konservasi Badak Indonesia (PKBI). YMR established in 1990 and had been active in vary rhino conservation activities. YMR cooperated with the Directorate General of Forest Protection and Nature Conservation (PHKA, used to be PHPA) had published Guide Book of Strategy for Rhinoceros Conservation in Indonesia (Strategi Konservasi Badak Indonesia – SKBI) funded by Bank International Indonesia (BII) in 1993.\n\nVision\n\nTo ensure continuous living populations of Javan and Sumatran rhinos in a safe,sustainable habitat.\n\nMission\n\nis to participate in preserving Javan and Sumatran Rhinoceros through protection and monitoring on population and habitat, breeding improvement, research and development, raising community awareness on presence and necessity of conservation efforts of Javan and Sumatran Rhino, collaboration and fundraising for the continuation of program and rhino conservation activity.",
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
                                  lat2: -6.567787844451225,
                                  lng2: 106.81186893863541,
                                  tit: "YABI INDONESIA",
                                  snip: "Yayasan Badak Indonesia"
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
                        Image.asset("assets/Orgs/yabimap.png"),
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
                        Text("To help us continue protect and raise on Taman Nasional Way Kambas (TNWK) terletak di Propinsi Lampung diantara 4°37′ – 5°16′ derajat lintang selatan dan 105 33′ -105 54′ derajat bujur timur dan berbatasan langsung dengan pantai bagian selatan pulau Sumatera yang menghadap ke Pulau Jawa.\n\nLuas TNWK adalah 130.000 ha, sedangkan kawasan yang dimohon untuk diusahakan bagi pembangunan dan pengembangan Pusat Pengembangbiakan Badak Sumatera seluas 10.000 ha yang dibagi atas 2 blok, yaitu blok I seluas 9.500 ha meliputi kawasan diantara Way Kanan, Way Negara Batin dan batas selatan Taman Nasional, dan blok II seluas 500 ha yang meliputi kawasan pantai yang berada di muara Way Kanan. Help us to save Rhino with your donation to our Bank Account.",
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
                            Image.asset("assets/Payment/mandiri.png", scale: 7),
                            Text("Nomor Rekening:\n1330005458955\n\nAtas Nama: YABI IDR",style: GoogleFonts.sora(
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
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.asset("assets/Payment/mandiri.png", scale: 8,),
                            Text("Nomor Rekening:\n1330005459110\n\nAtas Nama: YABI USD",style: GoogleFonts.sora(
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
