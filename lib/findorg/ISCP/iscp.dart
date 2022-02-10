import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wild_id/Constants/constants.dart';
import 'package:wild_id/findorg/ISCP/iscpmodel.dart';
import '../orgMap.dart';
import '../orgsTile.dart';

class Iscp extends StatefulWidget {
  @override
  _IscpState createState() => _IscpState();
}

class _IscpState extends State<Iscp> {
  bool _loading;
  List<ISCPInfo> statuslist;

  void getUpdate() async {
    ISCP iscp = ISCP();
    await iscp.getISCPUpdate();
    statuslist = iscp.updates;
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
            'ISCP Indonesia',
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
                    child:  Image.asset('assets/Orgs/iscp.jpg'),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    padding: EdgeInsets.only(left:20, right: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Indonesian Species Conservation Program (ISCP) Indonesia",
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
                        Text("Name in Indonesian: Program Konservasi Species Indonesia (PKSI)\n\nName in English: Indonesian Species Conservation Program (ISCP)\n\nISCP maintains a rescue and rehabilitation center which currently houses local wildlife found in North Sumatra, Indonesia.\n\nISCP’s vision is:\n\n1. To rescue and protect animals from poaching, torture and other threats that lead to the extinction of the species of the earth’s surface by involving the participation of others community.\n\n2. The realization of biodiversity preservation in Indonesia, specially in North Sumatra\n\nISCP’s mission is to:\n\n- Rescue rare and endemic animals from trade and illegal hunting\n- Protect biodiversity rich areas in north Sumatra and endangered wildlife\n- Bring local communities to appreciate and care for their local environment\n Preserve the flora and fauna in north Sumatra where ISCP works\n Bring alternative livelihoods to the Community Economic Development around Protected Forests in North Sumatra that will help to preserve these forests.\n Organise preservation of endangered plant species\n Conduct education and public awareness campaigns for the conservation of endangered species\n Investigate and report wildlife crime and advocate until it is taken to court\n Alternatives to the Community Economic Development around Forest\n\nISCP have permit for Sumatran Laughingthrush (Garrulax bicolor) Nov 2012- Nov 2017, and MoU (Memorandum of understanding) for Slow loris (Nictycebus coucang) and Nias Hill Myna (Gracula robusta) March 2016- March 2021 with the Department of Natural Resources and Ecosystem Conservation North Sumatera, or in Indonesia, called Balai Konservasi Sumber Daya Alam Sumatra Utara (BKSDA-SU).\nISCP was founded in 2011 by Rudianto Sembiring and registered revision from Goverment in 2018 with  DECREE OF THE MINISTER OF LAW AND HUMAN RIGHTS OF THE REPUBLIC OF INDONESIA NUMBER; AHU-OOOO983.AH.O1.O4.\n\n\nWhat  We Do:\n\nWith the support of the Ministry Forestry Department through North Sumatra Conservation Agency (or locally called BKSDA Sumatra Utara), ISCP started opening Sumatran Slow loris and Nias Hill Myna rehabilitation. We have also had a community outreach program since 2016, where we build awareness, socialization and campaign for other wildlife such us Sunda Pangolin, Sun bear, Orangutan among others.\n- North Sumatra, much like many protected forest areas in Indonesia, is subject to degradation from human activities. These activities include reduced acreage due to legal plantations by industries, illegal farms by local communities that live in the forest areas or their buffer zones and hunting.Increased conservation\n- Continued engagement with local villagers based on wisdom culture approachment will increase the level of community conservation in Sumatra. Following the active model wisdom culture, sign posts endorsed by the Forestry Department will serve to warn villagers that it is illegal to hunt or kill protected wildlife species. Further activities will include the distribution of information leaflets with hotlines for villagers to report any illegal activities. This correlation with research objectives of the ISCP program in Sumatra is to prove that communities living in high conservation value areas can have a positive impact on conservation if assisted with science and knowledge. Measurements of success will be gauged against the following information to be gathered :\n- How many tips were received from villagers on community members hunting or possessing protected wildlife species or cutting down trees illegally\n- How many of those tips come from villagers that received conservation information from ISCP\n- Is the group of informants growing?\n- How to encourage villagers to stop selling wildlife by making them aware of the danger of virus zoonotic that some wildlife bring to humans. Then help them stop selling wildlife by giving or providing alternative economic solutions\n- What motivated them to pass on information that could affect other community members.\n- The current or future program above will be considered a success if the group of informants grows from those that are currently reporting to ISCP.  It will be an added bonus if tips received actually result in the rescue and release or rehabilitation of rescued wildlife.",
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
                                  lat2: 3.584079549927436,
                                  lng2: 98.66652833863543,
                                  tit: "ISCP Indonesia",
                                  snip: "Indonesian Species Conservation Program"
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
                        Image.asset("assets/Orgs/iscpmap.png"),
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
                        Text("Untuk membantu dan mendukung operasi keuangan Yayasan Program Konservasi Species Indonesia (PKSI) atau dalam bahasa Inggris kami sebut Yayasan Program Konservasi Spesies Indonesia (ISCP) dapat Anda lakukan di rekening bank kami di bawah ini:\n\nHarap sertakan nama Anda untuk donasi Anda dan kirim ke: info@iscp.or.id.  Kami juga akan mengirimkan email konfirmasi ketika kami telah menerima dana atau donasi Anda.",
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
                            Image.asset("assets/Payment/paypal.jpg", scale: 7),
                            Text("Account Name:\n@rudisembiring",style: GoogleFonts.sora(
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
                            Image.asset("assets/Payment/bri.png", scale: 8,),
                            Text("Account Number:\n5306-01-028331-53-1\n\nAccount Name:\nISCP Indonesia ",style: GoogleFonts.sora(
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
