import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wild_id/Constants/constants.dart';
import 'package:wild_id/findorg/YAYORIN/yayorinmodel.dart';
import '../orgMap.dart';
import '../orgsTile.dart';

class Yayorin extends StatefulWidget {
  @override
  _YayorinState createState() => _YayorinState();
}

class _YayorinState extends State<Yayorin> {
  bool _loading;
  List<YAYORINInfo> statuslist;

  void getUpdate() async {
    YAYORIN yayorin = YAYORIN();
    await yayorin.getYayorinUpdate();
    statuslist = yayorin.updates;
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
            'YAYORIN Indonesia',
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
                    child:  Image.asset('assets/Orgs/yayorin.jpg'),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    padding: EdgeInsets.only(left:20, right: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Yayasan Orangutan Indonesia",
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
                        Text("Yayorin (Yayasan Orangutan Indonesia) was established on July 4, 1991 in Pangkalan Bun, Central Kalimantan (Indonesia). Yayorin is a non-governmental organization (NGO) whose main activities focus on research, education and conservation of orangutans, other wildlife, and its habitat in tropical rainforest.\n\nThrough its activities, Yayorin believes in empowerment of local communities who living around the forest and their ability to manage their own forests and natural resources within. In addition, Yayorin also tries to raise an awareness of orangutan conservation through environmental education such as visiting remote villages, local schools and government and another parties. We also develop educational programs that can bring real benefits to local residents.\n\nVision:\n\nForest preservation to welfare the people for its present and future generations\n\nMission:\n\nTo conserve the forests, Orangutan and other wildlife through research, education, conservation, and cooperate with local communities, especially those who depend upon the forests to retain their traditional lifestyles, but can find ways to thrive without having devastating impacts on forest ecosystems.",
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
                                  lat2: -2.7306964177397384,
                                  lng2: 111.63879311779117,
                                  tit: "YAYORIN Indonesia",
                                  snip: "Yayasan Orangutan Indonesia"
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
                        Image.asset("assets/Orgs/yayorinmap.png"),
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
                        Text("Tujuan utama dari seluruh upaya penggalangan dana oleh Yayorin yaitu selalu ditujukan untuk memberdayakan masyarakat khususnya mereka yang tinggal di sekitar kawasan hutan habitat orangutan. Kami percaya bahwa masyrakat memegang peranan kunci dan memainkan bagian palipenting dalam menentukan keberlangsungan masa depan dan kelestarian lingkungan, termasuk orangutan. Bantu kami untuk melanjutkan pendidikan, penelitian dan upaya konservasi kami di Kalimantan, Indonesia. ",
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
                            Text("Nomor Rekening:\n0081427142 \n\nAtas Nama:\nYAYORIN",style: GoogleFonts.sora(
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
