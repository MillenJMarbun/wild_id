import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wild_id/Constants/constants.dart';
import 'package:wild_id/findorg/GILIECO/giliecomodel.dart';
import '../orgMap.dart';
import '../orgsTile.dart';

class Gilieco extends StatefulWidget {
  @override
  _GiliecoState createState() => _GiliecoState();
}

class _GiliecoState extends State<Gilieco> {
  bool _loading;
  List<GILIECOInfo> statuslist;

  void getUpdate() async {
    GILIECO gilieco = GILIECO();
    await gilieco.getGILIECOUpdate();
    statuslist = gilieco.updates;
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
            'GILIECO Indonesia',
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
                    color: Colors.grey[100],
                    child:  Image.asset('assets/Orgs/gilieco.png'),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    padding: EdgeInsets.only(left:20, right: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("GILI ECO Trust Indonesia",
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
                        Text("HOW WE STARTED\n\nGili Eco Trust, or Yayasan Ekosistem Gili Indah, is an NGO based on Gili Trawangan. It was founded in 2002 to protect coral reefs around the Gili islands from destructive fishing. In 1999 local fishermen founded the SATGAS to patrol the waters around the three Gili islands. Back then, the reefs were frequently fished with dynamite and cyanide, destroying all the coral and killing the aquatic life inhabiting the reefs. Coral reefs had been left in a disastrous state after the intense El Niño in 1997-1998. The local population reacted and organized patrols to eliminate and educate against the bad fishing practices. An agreement was created between the fishermen, defining the legal techniques of fishing, limited to certain authorized zones, in an attempt to eradicate destructive fishing methods for good.\n\nTo support the SATGAS, the main dive shops on Trawangan established the NGO Gili Eco Trust in 2002. The idea was to encourage a reef donation of 50,000IDR (€4, US\$5) per diver, to financially assist the initiative of SATGAS. This donation was chiefly used to pay the SATGAS employees, to place buoys to limit anchoring, to restore the reefs, and to organize many other environmental projects to protect and restore the natural environment around the islands whilst boosting sustainable tourism.\n\nWHERE WE ARE NOW\n\nThe Gili Eco Trust has grown and expanded its activities from marine conservation to waste management and sustainable eco-tourism. In 2004, Gili Eco Trust started the Biorock project. The creation of artificial reefs and restoring the natural habitat of thousands of fish in previously destroyed and overfished areas of the reef.\n\nGili Eco Trust also supports the FMPL, (Front Masyarakat Peduli Lingkugan) the waste collection and management organization on Gili Trawangan.\n\nMaking daily waste collections to processing recyclable materials and transporting them off the island.\n\nAlong with these two campaigns, there are many smaller eco-projects which you can read more about on this website, such as working horse healthcare clinics and educational workshops for kids, tourists and hospitality staff and eco-touristic initiatives.",
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
                                  lat2: -8.353233493719602,
                                  lng2: 116.04234606895949,
                                  tit: "GILIECO TRUST",
                                  snip: "GILIECO Trust Indonesia"
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
                        Image.asset("assets/Orgs/giliecomap.png"),
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
                        Text("The Gili Eco Trust relies on donations, grants and money we earn through our conservation and education projects. If you would like to help us, please donate.\n\nGeneral donations go to our Biorock reef restoration, glass brick factory, moorings and buoys, free horse and cat clinics and animal medication, waste management and recycling systems, rubbish collection, weekly beach clean-ups, marine conservation, recycling programs and the general operations of Gili Eco Trust. With your generous donation, we can continue to save this beautiful island and its’ environment!\n\nAdditionally, We’ve got until September 30th to raise funds to build a hatchery to protect baby turtles on Gili Trawangan! Please donate to our cause, a little goes a long way",
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
                            Text("Nomor Rekening:\n1610001501894\n\nAtas Nama:\nYayasan Ekosistem\nGili Indah",style: GoogleFonts.sora(
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
