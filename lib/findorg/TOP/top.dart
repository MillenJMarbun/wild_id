import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wild_id/Constants/constants.dart';
import 'package:wild_id/findorg/WWF/MapScreen.dart';
import 'package:wild_id/findorg/TOP/topmodel.dart';
import '../orgsTile.dart';

class Top extends StatefulWidget {
  @override
  _TopState createState() => _TopState();
}

class _TopState extends State<Top> {
  bool _loading;
  List<TOPInfo> statuslist;
  Color green = const Color(0xff006940);

  void getUpdate() async {
    TOP top = TOP();
    await top.getTOPUpdate();
    statuslist = top.updates;
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
            'The Orangutan Project',
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
                    color: green,
                    child:  Image.asset('assets/Orgs/orangutanproject.jpg'),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    padding: EdgeInsets.only(left:20, right: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("The Orangutan Project",
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
                        Text("The Orangutan Project was established in 1998 by founder and world-renowned orangutan expert, Leif Cocks, as a result of his 25+ year career working with orangutans - including establishing the most successful breeding colony of orangutans in the world. The Orangutan Project was formed with a key mission; to ensure that endangered wild orangutan species would be protected against extinction, and would continue to live in secure populations for generations to come.\n\nToday, The Orangutan Project is a dynamic, fast-growing and successful not-for-profit organisation that supports a wide range of critical projects that address the holistic problem facing remaining fragmented orangutan populations - including fighting deforestation and habitat loss at the highest level.\n\nThe projects funded by The Orangutan Project not only include direct orangutan conservation, such as orangutan rescue, rehabilitation and release programs, but also forest habitat protection and regeneration, education, research and local community partnerships. Tying funding into direct outcomes for the species has enabled The Orangutan Project to partner with the majority of orangutan conservation projects operating on the ground today in Borneo and Sumatra.\n\nThis has greatly increased overall efficiency and transparency in saving the species as a whole, bringing together the key players and groups who are working tirelessly on the ground to ensure the species’ survival.\n\nThe long-term growth and sustainability of The Orangutan Project has been made possible only by the loyal support of our individual donors, many of whom have supported the organisation each year since inception.\n\nThrough orangutan ‘adoptions’, regular donations and critical appeals, the organisation has been able to achieve more for the species than any other orangutan conservation group. The ongoing support from our individual donors is imperative for the organisation to reach our goal of increasing the number of wild orangutans under The Orangutan Project’s permanent protection to 8,000, to ensure sufficient numbers of each orangutan species/subspecies survive indefinitely.\n\nVision\n\nAll orangutans will live in their natural habitat in secure and viable populations.\n\nMission\n\nTo ensure the survival of all orangutan species in their natural habitat and promote the welfare of all orangutans.\n\nOur Achievements\n\nSince its formation in 1998, The Orangutan Project has contributed more than \$22,000,000 directly into orangutan conservation projects and has earned a reputation amongst its partners and donors for being financially responsible and transparent.\nWe are committed to making sure your donations work as hard as possible. We don’t have an office - each member of our team works from their own home, using their own electricity, internet and infrastructure. This helps keep our overheads amongst the very lowest in the sector, and ensures as much of your donation as possible goes straight to where it’s needed most.\nWe are also working hard to increase and secure our future income streams. Our big goal is to raise \$20 million dollars every year because we know that’s the only way we can secure the long term survival of all orangutan sub-species, and safeguard their jungle habitat. And we will achieve this, with your help!",
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
                        Text("Saving the orangutan also saves Critically Endangered Sumatran tigers, Critically Endangered Sumatran elephants and many other endangered species. It also saves the forest and supports local and indigenous communities.\n\nOrangutan conservation is a complex issue that requires support and funding in multiple areas to be successful. The type and level of each strategy is determined by the needs of the particular ecosystem. The Orangutan Project recognises and understands that orangutan conservation must be supported at the grassroots level and involve local communities. We support a wide range of critical projects that address the holistic problem facing remaining fragmented orangutan populations - including fighting deforestation and habitat loss at the highest level. As a highly trusted organisation, The Orangutan Project partners with many orangutan conservation projects operating on the ground in Borneo and Sumatra.\n\nOur conservation strategy covers four key areas\n\n- Legally protect forest\n\n- Secure, restore, and patrol orangutan habitat\n\n- Rescue, rehabilitate and release infant orangutans and displaced orangutans\n\n- Educate and empower the local communities and indigenous people",
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
                            Image.asset("assets/Payment/paypal.jpg", scale: 7),
                            Text("Account Name:\n\n@TheOrangutanProject",style: GoogleFonts.sora(
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
