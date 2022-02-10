import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wild_id/Constants/constants.dart';
import 'package:wild_id/findorg/SOCP/socpmodel.dart';
import '../orgMap.dart';
import '../orgsTile.dart';

class Socp extends StatefulWidget {
  @override
  _SocpState createState() => _SocpState();
}

class _SocpState extends State<Socp> {
  bool _loading;
  List<SOCPInfo> statuslist;

  void getUpdate() async {
    SOCP ksp = SOCP();
    await ksp.getSOCPUpdate();
    statuslist = ksp.updates;
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
            'SOCP Indonesia',
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
                    child:  Image.asset('assets/Orgs/socp.jpg'),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    padding: EdgeInsets.only(left:20, right: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Sumatran Orangutan Conservation Program (SOCP) Indonesia",
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
                        Text("The Sumatran Orangutan Conservation Programme (SOCP) first began activities in 1999 with the signing of a Memorandum of Understanding between the PanEco Foundation, Yayasan Ekosistem Lestari (YEL), Frankfurt Zoological Society (FZS) and the Indonesian Ministry of Forestry’s Directorate General of Forest Protection and Nature Conservation. One of its first targets was to establish a modern, state-of-the-art quarantine facility for confiscated illegal pets and a reintroduction programme to release these animals back to the wild. In 2002 the Batu Mbelin orangutan quarantine centre was completed near Medan in North Sumatra, Indonesia.\n\nSince the start of SOCP over 360 orangutans have been brought to the quarantine center and more than 270 have already been transferred to the rainforest for reintroduction. SOCP continues to take a leading role in surveying and monitoring the status of all remaining wild orangutan populations in Sumatra using remote sensing and field surveys to record presence or absence, density estimates, and threats and population trends.\n\nSOCP is seen as the foremost authority on the status and distribution of remaining wild Sumatran orangutans, and we are a key player in the battle to save the species and its remaining forest habitat.\n\nMission\n\nOur mission is saving and protecting captive and wild Sumatran (Pongo abelii) and Tapanuli (Pongo tapanuliensis) orangutans and their rainforest habitat, through science-based conservation, establishing new wild populations, advocacy, education and awareness building.\n\nAims:\n\nTo ensure all remaining viable wild orangutan populations in Sumatra and their habitat are fully protected and safe from destruction.\n\nTo establish new viable populations of the species in the wild via reintroduction of confiscated illegal pets, serving as a safety net for the original wild population.\n\nTo increase knowledge of wild orangutan distribution, status, threats, behaviour and ecology;\n\nTo change perceptions among Indonesian citizens in terms of animal welfare, understanding of sustainable development, and natural resource management.",
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
                                  lat2: 3.5384967483247634,
                                  lng2: 98.63846818239293,
                                  tit: "SOCP Indonesia",
                                  snip: "Sumatran Orangutan Conservation Program"
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
                        Image.asset("assets/Orgs/socpmap.png"),
                        SizedBox(height: 35),
                        Text("Donate",
                            style: GoogleFonts.sora(
                                textStyle: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: navy,
                                ))
                        ),
                        SizedBox(height: 10),
                        Text("Donations are important to the Sumatran Orangutan Conservation Programme (SOCP) because we use these funds to help provide ongoing support for a wide range of projects, including habitat protection, rehabilitation projects and orphan care centres.\n\nWe have a proven record with measurable results in the confiscation and reintroduction of orangutans, in long-term scientific research and monitoring, and the protection of orangutan populations in Sumatra, all in a country with enormous pressure for unsustainable economic development at the expense of wilderness and biodiversity.\n\nYour donations will be used directly for our programmes, allowing us to increase our efforts to protect the remaining wild Sumatran orangutan populations in their natural habitat, and  to continue to confiscate illegally kept orangutans, giving them the chance to return to the wild and creating entirely new wild populations of this Critically Endangered species.\n\nDonations of any size, from individuals and grants from foundations, as well as partnership enquiries are extremely welcome and greatly appreciated.\n\nWe would also be happy to receive support from you in the form of an online donation.However, due to the international nature of our work, we ask that you please contact us and we will be sure to get you the relevant information to do so.\n\nThank you very much for your generosity, and we look forward to hearing from you soon!",
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
                            Text("Paypal UserName:\n @SOCP",style: GoogleFonts.sora(
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
                            Text("Nomor Rekening:\n0012018000043\n\nAtas Nama: SOCP",style: GoogleFonts.sora(
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
