import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wild_id/Constants/constants.dart';
import 'package:wild_id/findorg/WWF/MapScreen.dart';
import 'package:wild_id/findorg/GSC/gscmodel.dart';
import '../orgsTile.dart';

class Gsc extends StatefulWidget {
  @override
  _GscState createState() => _GscState();
}

class _GscState extends State<Gsc> {
  bool _loading;
  List<GSCInfo> statuslist;

  void getUpdate() async {
    GSC iar = GSC();
    await iar.getGSCUpdate();
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
            'GSC Indonesia',
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
                    child:  Image.asset('assets/Orgs/gilishark.png'),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    padding: EdgeInsets.only(left:20, right: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Gili Shark Conservation (GSC) Indonesia",
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
                        Text("We get up every morning determined to both change the world and have one hell of a good day. Sometimes this makes planning our day very difficult.\n\nFounded by three ocean lovers in 2015, who found each other on the beautiful island of Gili Air, the Gili Shark Conservation is a project filled with passion and engagement for the ocean and it’s marine life.\n\n“When we started our project we didn’t have all the knowledge neither did we have years of experience. All we had was an intention, a lot of energy and the desire to be part of the solution. We didn’t want to stand on the sideline anymore and watch how other people try to solve a problem which we are all responsible for.” Rose Huizenga – Co-founder Gili Shark Conservation Project\n\nThink about it. We know more about the surface of our moon than we know about our oceans. In a world where everything is overshared, overexposed, and overused, the ocean is our last frontier, where fascinating new discoveries are happening every day.\n\nEvery day our research team goes out to collect abundance data within the zones of the Gili Matra Marine Recreational Reserve to assess the health of the environment and act to enhance marine protection and health where necessary. Our mission is to promote conversation efforts through education and research.\n\nTo achieve our goal we conduct research using multiple research methods including; underwater roving video surveillance, roving survey dives, photographic identification, coral health index surveys, coral restoration, and land & marine based time-lapse projects. Through our weekly conservation classes at the local school and our Plastic Free Paradise Campaign we educate the local community and visitors of the Gili Islands about the importance of our ocean and what we can do to protect it.",
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
                        Text("IT’S A CRITICAL TIME FOR SHARK CONSERVATION! We understand that with the way that sharks are portrayed in mass media that people fear them but we hope that we can replace that fear with fascination. Or at least a healthy level of respect for them as apex predators. There aren’t many sharks left in the oceans and this is a critical place and time for shark and marine conservation. What people don’t realize is that sharks are not as dangerous as they might think. In fact, they are incredibly important to life on Earth.\n\nWith the abundance data we collect we want to proof that the reefs surrounding the Gili Islands in Indonesia are a shark nursery area. In 2020 the government will review the Gili Matra Marine Park and we would love to see that they will create the first official shark nursery around the Gili Islands.",
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
                            Text("Nomor Rekening:\n1610003640211\n\nAtas Nama: GSC Indonesia",style: GoogleFonts.sora(
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
