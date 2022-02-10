import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wild_id/Constants/constants.dart';
import 'package:wild_id/findorg/SOS/sosmodel.dart';
import '../orgMap.dart';
import '../orgsTile.dart';

class Sos extends StatefulWidget {
  @override
  _SosState createState() => _SosState();
}

class _SosState extends State<Sos> {
  bool _loading;
  List<SOSInfo> statuslist;

  void getUpdate() async {
    SOS ksp = SOS();
    await ksp.getSOSUpdate();
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
            'Sumatra Orangutan Society',
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
                    child:  Image.asset('assets/Orgs/sos.png'),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    padding: EdgeInsets.only(left:20, right: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Sumatran Orangutan Society (SOS)",
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
                        Text("SOS was founded in 2001 by Lucy Wisdom in order to realise her vision of a safe future for wild orangutans and their forest home.\n\nSumatran orangutans are critically endangered and without urgent action could be the first Great Ape species to become extinct. SOS is dedicated to turning this situation around.\n\nSOS VALUES\n\nOptimism\n\nThe threats facing orangutans and their habitat are real and urgent, but we know there is hope. We are optimistic about the future for orangutans and their forests because we have seen what can be achieved through dedicated conservation efforts. We believe that optimism and positivity are much more powerful agents for gathering support and effecting long-term change, than fear, resignation or cynicism. We reflect this optimism in our communications to enable our supporters and donors to hope for a positive future too.\n\nDetermination\n\nConservation is complicated and there are many obstacles to overcome in planning and implementing projects that really work. When an obstacle arises, we find a way around it, calling on our skills and networks to help us find a way to achieve our goals.\nWe are equally determined in pursuing our fundraising and advocacy objectives and in building and maintaining positive, productive relationships and partnerships with donors and supporters.\n\nUnity\n\nEveryone can have a positive impact on orangutan conservation; it’s not just about people with degrees and NGO jobs. In fact, to address the challenges of orangutan conservation, we need a united approach, both in terms of our collaboration with people in Sumatra, and wider collaborating across the globe. We aim to unite people from around the world to care and act to give Sumatran orangutans a future.  Building positive consensus and building effective and influential alliances and partnerships will allow us to achieve much more, much faster, than working on our own.\n\nRespect\n\nEverything we do is done with respect for orangutans, their habitat and the people living near it. We do not harm them with the projects we support or with our communications about our work, and we conduct due diligence on any partner or collaborator to ensure they also have respect for both humans and nature.\nWe also have the utmost respect for our donors, supporters and partners, particularly in relation to their privacy and communication preferences, and in also acknowledging their contributions to our cause whether large or small, financial or otherwise.\n\nCherishment\n\nOrangutans are unique, precious and irreplaceable. We feel they are something to be cherished, and our work – protecting them and helping them to thrive – reflects that.\nWe also cherish and nurture our donor and supporter relationships, recognising that their priorities and objectives may not be the same, or as immediate as our own. They are our family and we can achieve nothing without them.\n\nHarmony\n\nOrangutans and the rainforests they live in cannot thrive unless people around respect their value and are helped and guided to live in harmony with nature. Imagining, advocating for and creating a world where all parties, whether local communities, governments, agencies or corporate interests, recognise that a long-term harmonious, respectful and protective relationship with the rainforest and all its inhabitants is more beneficial and valuable than a short-term exploitative approach, is a fundamental part of our identity.\n\nVision\n\nSOS has a long term vision of a viable, thriving and growing population of Sumatran orangutans living wild and free in their healthy and protected rainforest home.  Local communities are actively engaged in activities which sustain the forest, and protected areas are free of encroachment.  Illegal activities have ceased as laws are effectively enforced. People, both in Sumatra and around the world, are passionate about forest and orangutan conservation.\n\nMission\n\nTo secure the future of Sumatran orangutans and their forests",
                            style: GoogleFonts.sora(
                                textStyle: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                ))
                        ),
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
                        Text("Become an Orangutan Guardian: Give Monthly\n\n£8 per month can help to train 20 women in a year to set up and manage tree nurseries to restore degraded areas of rainforest and secure the future for orangutans and their forest homes\n\n£19 per month can help to plant 8 trees every month - almost 100 trees a year - to provide food and nesting places for orangutans.\n\n£25 per month can help three forest-edge communities to design conservation actions plans to ensure long-term protection for orangutans",
                          style: GoogleFonts.sora(
                              textStyle: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                              )),
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
                                  lat2: 51.73597518416371,
                                  lng2: -1.2933800081231006,
                                  tit: "SOS Indonesia",
                                  snip: "Sumatra Orangutan Survival"
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
                        Image.asset("assets/Orgs/sosmap.png"),
                        SizedBox(height: 40),
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
                            Image.asset("assets/Payment/paypal.jpg", scale: 8,),
                            Text("Paypal UserName:\n @SumatraOrangutanSociety",style: GoogleFonts.sora(
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
