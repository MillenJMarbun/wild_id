import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wild_id/Constants/constants.dart';
import 'package:wild_id/findorg/BOS/bosmodel.dart';
import '../orgMap.dart';
import '../orgsTile.dart';

class Bos extends StatefulWidget {
  @override
  _BosState createState() => _BosState();
}

class _BosState extends State<Bos> {
  bool _loading;
  List<BOSInfo> statuslist;

  void getUpdate() async {
    BOS bos = BOS();
    await bos.getBOSUpdate();
    statuslist = bos.updates;
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
            'Borneo Orangutan Survival',
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
                    child:  Image.asset('assets/Orgs/bos.png'),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    padding: EdgeInsets.only(left:20, right: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Borneo Orangutan Survival",
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
                        Text("Tackling today’s conservation challenges is no simple task. Come learn about how we do our part – from the rescue of orphaned orangutans from areas of human-wildlife conflict and their rehabilitation journey to working with local communities and conserving tropical Indonesian ecosystems for generations to come.\n\nThe BOS Foundation story started in 1991 with the establishment of a modest rehabilitation centre at Wanariset in East Kalimantan in response to the many orangutan lives displaced due to the illegal pet trade. In the decades since, our role has grown immensely. Today, we work together with local populations, the Indonesian government, and the greater global community, to fight extinction and conserve orangutans and their habitats in sites all across Borneo – specifically in the Indonesian provinces of Central and East Kalimantan.\n\nOrangutan Reintroduction\n\nOrangutans are the largest arboreal animals on Earth. Whenever the actions of man or natural disasters displace orangutans from their forested homes, we have made it our mission to rescue these orangutans from areas of conflict, provide sanctuary for rehabilitation, and reintroduce them to wild forests for a second chance at freedom.\n Every year, thousands of orangutans are displaced or killed due to mass deforestation, rampant forest fires, and poaching for consumption and the illegal pet trade. Whenever an individual survives their trauma or is reported captive, the BOS Foundation is ready to rescue and rehabilitate them. Even in more complex situations when orangutans are smuggled to other countries, we have worked with Indonesian authorities towards their repatriation and take the orphans into our care once returned to Indonesia.\n When an orangutan enters the Nyaru Menteng Orangutan Rehabilitation Centre in Central Kalimantan or the Samboja Lestari Orangutan Rehabilitation Centre in East Kalimantan, they are immediately assessed and treated by our team of veterinarians then quarantined before being placed into the appropriate stage of the rehabilitation process. The youngest orangutans join the nursery group while the juveniles are placed in forest school. On their journey through forest school, the young orphans are taught the skills they need to survive in the wild, all while they are stimulated to express natural behaviours. In order to be successful, they must learn everything from how to locate and open all the varied foods the jungle has to offer, to how to build the secure nests in which they will sleep.\n Once the surrogate mothers have found the juvenile orangutans to be proficient, they are moved to socialisation complexes where they are temporarily housed in groups in large cages within which they can practice their socialisation skills with new individuals. While orangutans are classed as semi-solitary animals, in the wild they will be required to interact with other members of their species when mating, during times of high food availability, and when disputing territories.\n The orangutans’ survival skills are put to a final test when they are moved to forested pre-release islands. Daily, teams of technicians provide supplementary food and assess the orangutans’ overall wellbeing, while they also collect vital behavioural data. When the orangutans prove themselves capable foragers, adept climbers, innovative nest builders, and appropriately weary of humans, the team knows that they are ready to return to their true forest homes.\n\nHere at the Borneo Orangutan Survival Foundation, our ultimate goal is freedom for each and every eligible orangutan in our care. With the support of orangutan warriors, like yourself, around the globe, we will accomplish this dream of a wild, secure future for orangutans and their forest homes.",
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
                                  lat2: -6.5887829015584805,
                                  lng2: 106.80558298465886,
                                  tit: "Borneo Orangutan Survival",
                                  snip: "Borneo Orangutan Survival"
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
                        Image.asset("assets/Orgs/bosmap.png"),
                        SizedBox(height: 40),
                        Text("Donate",
                            style: GoogleFonts.sora(
                                textStyle: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: navy,
                                ))
                        ),
                        SizedBox(height: 10),
                        Text("Donations are the backbone of our operations. With the amount donated from caring donators we are able to operate and continute our work of helping out orangutans, below are our donation packs that can help the orangutans\n\n- RP100,000 (Provide food for 7 orangutans or plant a tree)\n\n- RP250,000 (Buy equipment for the orangutan enrichment program)\n\n- RP500,000 (Can provide a general health check-up for routine health screening of orangutans)\n\n- RP1,000,000 (Can provide an orangutan food for 30 days)",
                          style: GoogleFonts.sora(
                              textStyle: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                              )),
                        ),
                        SizedBox(height: 30),
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
                            Text("Nomor Rekening:\n0012018000043\n\nAtas Nama:\nBorneo Orangutan Survival",style: GoogleFonts.sora(
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
                            Text("Account Name:\nBorneo Orangutan Survival",style: GoogleFonts.sora(
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
