import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wild_id/Constants/constants.dart';
import 'package:wild_id/findorg/WCS/MapScreen.dart';
import 'package:wild_id/findorg/orgsTile.dart';
import 'package:wild_id/findorg/WCS/wcsmodel.dart';


class Wcs extends StatefulWidget {
  @override
  _WcsState createState() => _WcsState();
}

class _WcsState extends State<Wcs> {

  bool _loading;
  List<WCSInfo> statuslist;

  void getUpdate() async {
    WCS wcs = WCS();
    await wcs.getWcsUpdate();
    statuslist = wcs.updates;
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
            'WCS Indonesia',
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
                    color: Colors.black,
                    child:  Image.asset('assets/Orgs/wcs.png'),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    padding: EdgeInsets.only(left:20, right: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Wildlife Conservation Society (WCS) Indonesia",
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
                        Text("Wildlife Conservation Society, is a New York-based conservation organization with goal to conserve the world's largest wild places in 15 priority regions and home to more than 50% of the world's biodiversity.\n\nWCS-Indonesia Program has worked in Indonesia since initial surveys in the 1960s, and opened a formal country program in 1995 under an MoU with the Ministry of Forestry (now Ministry of Environment and Forestry). WCS has operated projects on across Indonesia (Sumatra, Java, Sulawesi, Nusa Tenggara and Maluku) ranging from population and threats assessments of endangered cockatoos to studies of hunting management issues (including tiger and sharks) and the impact of logging on wildlife. In recent years WCS has become one of the leading actors in both tiger conservation and the fight against wildlife crime. WCS’s staff initiated and led the recent development of the PHKA ten-year action plan for Sumatran tiger conservation; a plan that incorporates many of the successful approaches developed by WCS including survey and monitoring methods, conflict resolution and anti-poaching work. WCS’s current programs include a significant focus on the megafauna of Sumatra, the unique biodiversity of Sulawesi, establishing marine protected areas around Aceh, Java, West Nusa Tenggara, Sulawesi, and North Maluku, as well as improved fisheries management\n\nWith over 170 employees throughout Indonesia, WCS-IP works through layered conservation efforts to safeguard wildlife, from wildlife protection in its habitat to technical support in enforcing environmental law.\n\nIn general, WCS-IP’s activities divided into five programs comprises of :\n\n1) Sumatra Program\nWe focused our work in Gunung Leuser National Park, Bukit Barisan Selatan National Park, and Way Kambas National Park, for key species such as Sumatran elephant, Sumatran tiger, and Sumatran rhino. We support government to strengthen and increase effectiveness conservation areas through Spatial Monitoring and Reporting Tools (SMART) Patrol, implement METT (Monitoring Effectiveness Training Tools) for protected area, develop key species population monitoring system, and a sustainable human-wildlife mitigation conflict system to reduce human and animal victim.\n\n2) Sulawesi Program\nWorks at Tangkoko Nature reserve, Lore Lindu National Park and Bogani Nani Wartabone National Park and with focus on safeguarding maleo nesting ground and enhancing protected area system through SMART patrol and METT.\n\n3) Marine and Fisheries Program\nWe work altogether with the government in Weh Island, Karimunjawa National Park, Taka Bonerate National Park, North Sulawesi, West Nusa Tenggara and North Maluku. We focus on the sustainable fisheries, support government to increase the effectiveness of conservation area management, ecology and social survey as based of conservation actions, with key species are Sharks, Rays and Skates.\n\n4)Wildlife Crime Unit\nGive technical support to law enforcement to eradicate wildlife trade in Indonesia. Last year, this unit has been expanding to forest crime unit, which not only cover illegal wildlife trade but also protect wildlife’s habitat through investigation of illegal logging or encroachment.\n\n5) Policy program\nFocus on supporting the government of Indonesia to produce regulation and policy that will benefit to forest and wildlife conservation\n\n6) Rote Snake-necked Turtle conservation Program Support the Indonesia government to reintroduce the critically endanger Snake-necked turtle into their native habitat.",
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
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
                            },
                                child: Text("View Location", style: GoogleFonts.sora(
                                    textStyle: TextStyle(
                                      color: Colors.white,
                                    )),
                                )),
                          ],
                        ),
                        SizedBox(height: 15),
                        Image.asset("assets/Orgs/wcsmap.png"),
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
                        Text("WILDLIFE CONSERVATION SOCIETY FIGHTS TO SAVE ENDANGERED ANIMALS\n\nWe're on the brink of the largest mass extinction since the dinosaurs, and it's a disaster of our own making. But we can bring species back – by bringing together people that care.\n\nWhen you make a gift to WCS, you're joining a community that's on the front lines of the fight to save wildlife, securing a future these species might otherwise never have.",
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
                            Text("Nomor Rekening:\n0012018000043\n\nAtas Nama: WCS Indonesia",style: GoogleFonts.sora(
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
                            Text("Nomor Rekening:\n00102930482\n\nAtas Nama: WCS Indonesia",style: GoogleFonts.sora(
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
