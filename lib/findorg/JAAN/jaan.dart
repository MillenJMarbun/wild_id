import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wild_id/Constants/constants.dart';
import 'package:wild_id/findorg/JAAN/jaanmodel.dart';
import '../orgMap.dart';
import '../orgsTile.dart';

class Jaan extends StatefulWidget {
  @override
  _JaanState createState() => _JaanState();
}

class _JaanState extends State<Jaan> {
  bool _loading;
  List<JAANInfo> statuslist;

  void getUpdate() async {
    JAAN jaan = JAAN();
    await jaan.getJAANUpdate();
    statuslist = jaan.updates;
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
            'JAAN Indonesia',
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
                    child:  Image.asset('assets/Orgs/jaan.jpg'),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    padding: EdgeInsets.only(left:20, right: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Jakarta Animal Aid Network (JAAN)",
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
                        Text("Jakarta Animal Aid Network otherwise known as JAAN was established in February 2008 by Femke den Haas, Karin Franken and Natalie Stewart as a central place people could contact/report cases of animal abuse or find out information about animal welfare in Indonesia. JAAN operates solely on donations from individuals and does not receive any financial support from the government.\n\nJakarta Animal Aid Network is divided into 2 sections;  Domestic and Wildlife.\n\nDomestic Welfare includes everything that we do to help domestic animals for example Dog and Cat Adoption, Dog Meat Free Indonesia campaign, our Cat Sterilization Drives and emergency rescues.\n\nWildlife Rescue includes all cases that we deal with  regarding primates, dolphins, tigers, orangutans and many more. For example, Our ‘Save Dennis’ Campaign or our regular investigation and data collecting to try and put an end to the Illegal Wildlife Trade.\n\nWHAT WE STAND FOR\n\nThousands of animals in Indonesia live sad lives. They are often chained, caged, neglected, tortured and abandoned. JAAN is a non-profit organization that strives to reduce their suffering and provide them better living conditions. We believe that no animal deserves cruelty and no wild animal should spend its life in captivity.\nJAAN runs many programs and also works to help stop illegal trade of wildlife. We focuses on raising awareness about animal suffering and promote compassionate treatment for all Indonesia’s beautiful animals.\n\nOUR GOAL\n\nJAAN’S goal is to improve the welfare of animals in Indonesia.\n\nTHE INDONESIAN ‘WILDLIFE RESCUE CENTRE NETWORK’\n\nIn 2002 the first wildlife rescue center was built in Indonesia, and many followed as part of the Indonesian ‘Wildlife Rescue Center Network’. This, what we call ‘network’ was left without any funding at the end of 2006. JAAN was founded shortly after, also to strive help these highly important centers and the people behind it, who had been trying their best to keep their heads up and find support to continue their work, which of course was, saving endangered wildlife in Indonesia.\n\nJAAN co- founder Femke den Haas was involved with the founding and construction of the Indonesian Wildlife Rescue Center Network as this  was a very strong step forward to fight the illegal wildlife trade.\n\nFemke has witnessed and was actively involved from the very beginning. The first stones laid, the building of all facilities at the 6 rescue centers throughout Indonesia as well as the collapse due to withdrawal of financial support. This network still stands until today yet continues to struggle financially.\n\nThese Wildlife rescue Centre’s (The network) is the key to professional wildlife conservation; having the facilities and staff needed to care for confiscated wildlife and also to rehabilitate wildlife. JAAN also relies on the centers for the placement of confiscated wildlife when caught from the illegal trade.\n\nBali Dolphin Sanctuary\n\nJAAN Wildlife Team along with our partners and supporters, Dolphin Project were notified by the Ministry of Enviroment and Forestry that all wildlife, including 4 dolphins, held at the Melka Hotel, Bali were to be relocated and rehabilitated. JAAN Wildlife assisted with this big operation, which is ongoing as the animals need to be rehabilitated and those who have release chances, released.\n\nOnce we were notified, we moved quickly as we have been awaiting any opportunity to rescue  any captive dolphins. We have had our world class dolphin rehabilitation facility ready to use since late 2010. 2 of the dolphins were in a stable condition and could leave the resort right away, The other 2 were held at the hotel facilities to treat ongoing health issues. In August 2019, the first 2 dolphins, Rocky and Rambo, were successfully moved into a temporary sea pen and continued to undergo evaluation for their eventual release into their home range. In October 2019, the remaining 2 dolphins, Johnny and Dewa, were moved to the world’s first permanent dolphin sanctuary. Unfortunately for Jonny and Dewa, being released doesn’t seem to be an option due to their many issues developed from living life in captivity. However, they will be able to remain in the sanctuary, living out the rest of their lives in peace, in a proper seamen and never having to perform again.",
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
                                  lat2: -6.273161380666172,
                                  lng2: 106.82142826894236,
                                  tit: "JAAN Indonesia",
                                  snip: "Jakarta Animal Aid Indonesia"
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
                        Image.asset("assets/Orgs/jaanmap.png"),
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
                        Text("JAAN’S main funding and support is from Individual Donations, Schools/Organizations that are interested in our Programs or funding/grants from other International Animal Charities.JAAN has ongoing need for for volunteers in the following areas: Fund-raising, soliciting and coordinating donations of cat and dog food, media contact, organizing and assisting at specific events, doing educational outreach, and finding foster homes.",
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
                            Text("Nomor Rekening:\n1270009789965\n\nAtas Nama:\nJaringan Bantuan\nSatwa Jakarta",style: GoogleFonts.sora(
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
                            Image.asset("assets/Payment/paypal.jpg", scale: 8,),
                            Text("Atas Nama:\n@jaanwildlife",style: GoogleFonts.sora(
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
