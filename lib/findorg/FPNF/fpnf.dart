import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wild_id/Constants/constants.dart';
import 'package:wild_id/findorg/FPNF/fpnfmodel.dart';
import '../orgMap.dart';
import '../orgsTile.dart';

class Fpnf extends StatefulWidget {
  @override
  _FpnfState createState() => _FpnfState();
}

class _FpnfState extends State<Fpnf> {
  bool _loading;
  List<FPNFInfo> statuslist;

  void getUpdate() async {
    FPNF fpnf = FPNF();
    await fpnf.getFPNFUpdate();
    statuslist = fpnf.updates;
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
            'FNPF Indonesia',
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
                    child:  Image.asset('assets/Orgs/fnpf.png'),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    padding: EdgeInsets.only(left:20, right: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Friends of the National Park Foundation (FNPF)",
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
                        Text("Founded in 1997, Friends of the National Parks Foundation (FNPF) / Yayasan Pecinta Taman Nasional is an Indonesian non-profit organisation working to protect wildlife, restore habitat, and improve the wellbeing of local communities. We are a grass roots, front-line, conservation organisation. Our founders and key staff members are Indonesian, primarily veterinarians and qualified environmental scientists. We understand the local culture, situation and challenges.\n\nWe work closely with local communities, customary and cultural groups, government, researchers, volunteers, and the global conservation community. We employ, educate and improve the wellbeing (social & economic) of the local communities in the vicinity of each project.\n\nOur mission is to develop and implement best management practices to reach the long term goal of sustainable conservation by integrating local community wellbeing with the environment.\n\nWhat We Do\n\nOur goal is to create a harmonious and sustainable situation between wildlife, habitat and the local communities. To protect wildlife, we run very effective rehabilitation programs to ensure that rescued and cage-bred animals can survive in the wild after release. We support this by trying to to create secure environments for wildlife, by restoring/rebuilding habitat, and persuading local communities to protect them.\nWe have been extremely successful with orangutan rehabilitation and release, and we have the only recorded success of rehabilitating and releasing a sun-bear (still alive and well since its release in 2006). \n\nOur bird rehab & release project on Nusa Penida (Bali) is internationally recognised for effectively saving the critically endangered Bali Starling (Leucopsar rothschildi) from extinction in the wild, and bringing back other endangered birds to Bali.\n\nIn each of our project locations we run nurseries that produce tens-of-thousands of tree saplings per annum. These are planted on our reforestation sites, and are also given away freely to any local village member to plant on their own private land.\n\n Much of our conservation work is focussed on improving the wellbeing of the local communities in ways that protect wildlife and habitat. By increasing local community options for employment and income generation (through education, agro-forestry, eco tourism, mixed & organic farming, etc) we reduce their need to work in environmentally destructive sectors, such as illegal logging & mining, slash & burn farming, palm oil plantations.By helping local communities, we win their respect, support and participation for our conservation objectives. FNPF has conservation and community development projects in Kalmantan (Borneo) and Nusa Penida (Bali).\n\nIn mid 2011 the Indonesian Government invited FNPF to take over the the running of Bali’s only Wildlife Rescue Centre (1 of 8 in whole of Indonesia) in which FNPF cares for and rehabilitates for release wildlife that have been rescued from illegal captivity.",
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
                                  lat2: -8.682875149241587,
                                  lng2: 115.51885381534113,
                                  tit: "FPNF Indonesia",
                                  snip: "Friends Of The National Park Foundation"
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
                        Image.asset("assets/Orgs/fpnfmap.png"),
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
                        Text("We are funded entirely by donations. Our donors come from all over the world and include individuals, small businesses, corporations, and international NGOs. We have low overheads and are transparent in the use of funds. Numerous donor organisations have audited our accounts, completed thorough due diligence prior to funding our projects, and highly endorse our work.\n\nThanks so much for your interest in donating. We’re a nonprofit and wouldn’t be able to do what we do without the generous support of our donors. Our supporters, who come from all over the world, include large corporations – like Boeing and the Humane Society International (Australia) – foundations, NGOs, and individuals with a love of conservation.",
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
                            Text("Nomor Rekening:\n1450010287098\n\nAtas Nama:\nYayasan Pencinta Dan\nPenyantun Taman\nNasional",style: GoogleFonts.sora(
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
                            Text("Atas Nama:\n@FNPF",style: GoogleFonts.sora(
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
