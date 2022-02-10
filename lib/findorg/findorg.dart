import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:search_page/search_page.dart';
import 'package:wild_id/Constants/constants.dart';
import 'package:wild_id/findorg/FPNF/fpnfmodel.dart';
import 'package:wild_id/findorg/WCS/wcs.dart';
import 'package:wild_id/findorg/WCS/wcsmodel.dart';
import '../CardWidget.dart';
import 'package:wild_id/findorg/WWF/wwf.dart';
import 'package:wild_id/findorg/KSP/ksp.dart';
import 'package:wild_id/findorg/ISCP/iscp.dart';
import 'package:wild_id/findorg/YAYORIN/yayorin.dart';
import 'package:wild_id/findorg/BOS/bos.dart';
import 'package:wild_id/findorg/SOS/sos.dart';
import 'package:wild_id/findorg/SOCP/socp.dart';
import 'package:wild_id/findorg/TOP/top.dart';
import 'package:wild_id/findorg/IAR/iar.dart';
import 'package:wild_id/findorg/GSC/gsc.dart';
import 'package:wild_id/findorg/YABI/yabi.dart';
import 'package:wild_id/findorg/ASTI/asti.dart';
import 'package:wild_id/findorg/PROFAUNA/profauna.dart';
import 'package:wild_id/findorg/SRI/sri.dart';
import 'package:wild_id/findorg/YCKT/yckt.dart';
import 'package:wild_id/findorg/JAAN/jaan.dart';
import 'package:wild_id/findorg/FPNF/fpnf.dart';
import 'package:wild_id/findorg/GILIECO/gilieco.dart';
import 'package:wild_id/findorg/LINI/lini.dart';

class findOrg extends StatefulWidget {
  final int tab;
  const findOrg({
    Key key,
    @required this.tab,
  }) : super(key: key);
  @override
  _findOrgState createState() => _findOrgState();
}

class _findOrgState extends State<findOrg> {

  void navigate(screenName) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => screenName,
      ),
    );
  }
  static List<String> screens = [
   'WWF Indonesia',
    'KSP Indonesia',
    'WCS Indonesia',
    'ISCP Indonesia',
    'YAYORIN',
    'BOS Indonesia',
    'SOS',
    'SOCP Indonesia',
    'The Orangutan Project',
    'IAR Indonesia',
    'GILI SHARK CONSERVATION',
    'YABI Indonesia',
    'ASTI Indonesia',
    'Profauna Indonesia',
    'SRI Indonesia',
    'Cikananga Wildlife',
    'JAAN Indonesia',
    'FNPF Indonesia',
    'GILIECO TRUST',
    'YAYASAN LINI'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(left: 20, top: 60, right: 20),
              color: maincol, // 20,20,40
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 140,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Discover Wildlife\nOrganizations and Charities", style: GoogleFonts.sora(
                                  textStyle: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 26,
                                    color: Colors.white,
                                  )
                              ),),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Image.asset('assets/logoinverted.png', scale: 15)
                        )
                      ],
                    ),
                    /*color: Colors.black,*/
                  ),
                ],
              ),
            ),
            Container(
                color:Colors.white,
                child:Image.asset('assets/strip2.png')
            ),
            SizedBox(height: 25),
            GestureDetector(
              onTap: () => showSearch(
                context: context,
                delegate: SearchPage(
                  barTheme: ThemeData(
                    primarySwatch: Colors.teal,
                  ),
                  onQueryUpdate: (s) => print(s),
                  items: screens,
                  searchLabel: 'Search Organizations',
                  suggestion: Center(
                    child: Text('Search Organization'),
                  ),
                  failure: Center(
                    child: Text('No Pages found'),
                  ),
                  filter: (screen) => [screen],
                  builder: (screen) => GestureDetector(
                    onTap: () {
                      screen == 'WWF Indonesia'
                          ? navigate(Wwf())
                          : screen == 'KSP Indonesia'
                          ? navigate(Ksp())
                          : screen == 'WCS Indonesia'
                          ? navigate(Wcs())
                          : screen == 'ISCP Indonesia'
                          ? navigate(Iscp())
                          : screen == 'YAYORIN'
                          ? navigate(Yayorin())
                          : screen == 'BOS Indonesia'
                          ? navigate(Bos())
                          : screen == 'SOS'
                          ? navigate(Sos())
                          : screen == 'SOCP Indonesia'
                          ? navigate(Socp())
                          : screen == 'The Orangutan Project'
                          ? navigate(Top())
                          : screen == 'IAR Indonesia'
                          ? navigate(Iar())
                          : screen == 'GILI SHARK CONSERVATION'
                          ? navigate(Gsc())
                          : screen == 'YABI Indonesia'
                          ? navigate(Yabi())
                          : screen == 'ASTI Indonesia'
                          ? navigate(Asti())
                          : screen == 'Profauna Indonesia'
                          ? navigate(Profauna())
                          : screen == 'SRI Indonesia'
                          ? navigate(Sri())
                          : screen == 'Cikananga Wildlife'
                          ? navigate(Yckt())
                          : screen == 'JAAN Indonesia'
                          ? navigate(Jaan())
                          : screen == 'FNPF Indonesia'
                          ? navigate(Fpnf())
                          : screen == 'GILIECO TRUST'
                          ? navigate(Gilieco())
                          : navigate(Lini());
                    },
                    child: ListTile(
                      title: Text(screen),
                      trailing: screen == 'WWF Indonesia'
                          ? Image.asset('assets/Orgs/wwf.jpg')
                          : screen == 'KSP Indonesia'
                          ? Image.asset('assets/Orgs/ksp.jpg')
                          : screen == 'WCS Indonesia'
                          ? Image.asset('assets/Orgs/wcs.png')
                          : screen == 'ISCP Indonesia'
                          ? Image.asset('assets/Orgs/iscp.jpg')
                          : screen == 'YAYORIN'
                          ? Image.asset('assets/Orgs/yayorin.jpg')
                          : screen == 'BOS Indonesia'
                          ? Image.asset('assets/Orgs/bos.png')
                          : screen == 'SOS'
                          ? Image.asset('assets/Orgs/sos.png')
                          : screen == 'SOCP Indonesia'
                          ? Image.asset('assets/Orgs/socp.jpg')
                          : screen == 'The Orangutan Project'
                          ? Image.asset('assets/Orgs/orangutanproject.jpg')
                          : screen == 'IAR Indonesia'
                          ? Image.asset('assets/Orgs/iar.png')
                          : screen == 'GILI SHARK CONSERVATION'
                          ? Image.asset('assets/Orgs/gilishark.png')
                          : screen == 'YABI Indonesia'
                          ? Image.asset('assets/Orgs/yabi.jpeg')
                          : screen == 'ASTI Indonesia'
                          ? Image.asset('assets/Orgs/asti.jpg')
                          : screen == 'Profauna Indonesia'
                          ? Image.asset('assets/Orgs/profauna.jpg')
                          : screen == 'SRI Indonesia'
                          ? Image.asset('assets/Orgs/sri.png')
                          : screen == 'Cikananga Wildlife'
                          ? Image.asset('assets/Orgs/cikananga.jpg')
                          : screen == 'JAAN Indonesia'
                          ? Image.asset('assets/Orgs/jaan.jpg')
                          : screen == 'FNPF Indonesia'
                          ? Image.asset('assets/Orgs/fnpf.png')
                          : screen == 'GILIECO TRUST'
                          ? Image.asset('assets/Orgs/gilieco.png')
                          : Image.asset('assets/Orgs/lini.jpg'),
                    ),
                  ),
                ),
              ),
              child: new Container(
                //container for search bar
                padding: EdgeInsets.only(
                    right: 20, left: 20), // 20,20,40
                child: new Row(
                  children: [
                    new Container(
                      padding: EdgeInsets.all(5),
                      height: 32,
                      width: MediaQuery.of(context).size.width / 1.15,
                      decoration: BoxDecoration(
                        color:Colors.grey[200],
                        borderRadius:
                        BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.search),
                          SizedBox(width: 10),
                          Text('Search Organizations', style: GoogleFonts.lexendDeca()),
                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ),
            SizedBox(height: 30),
            new Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              padding: EdgeInsets.only(left: 10, right: 10),
              child: new Column(
                children: [
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      new InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Wwf(),
                            ),
                          );
                        },
                        child: cardWigdet(
                            'WWF\nIndonesia', 'assets/Orgs/wwf.jpg'),
                      ),
                      new InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Ksp(),
                            ),
                          );
                        },
                        child: cardWigdet(
                            'KSP\nIndonesia',
                            'assets/Orgs/ksp.jpg'),
                      ),
                    ],
                  ),

                  new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      new InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Wcs(),
                            ),
                          );
                        },
                        child: cardWigdet(
                            'WCS\nIndonesia', 'assets/Orgs/wcs.jpg'),
                      ),
                      new InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Iscp(),
                            ),
                          );
                        },
                        child: cardWigdet(
                            'ISCP\nIndonesia',
                            'assets/Orgs/iscp.jpg'),
                      ),
                    ],
                  ),

                  new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      new InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Yayorin(),
                            ),
                          );
                        },
                        child: cardWigdet(
                            'Yayorin\nIndonesia', 'assets/Orgs/yayorin.jpg'),
                      ),
                      new InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Bos(),
                            ),
                          );
                        },
                        child: cardWigdet(
                            'BOS\nFoundation',
                            'assets/Orgs/bos.png'),
                      ),
                    ],
                  ),
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      new InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Sos(),
                            ),
                          );
                        },
                        child: cardWigdet(
                            '\nSOS', 'assets/Orgs/sos.png'),
                      ),
                      new InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Socp(),
                            ),
                          );
                        },
                        child: cardWigdet(
                            'SOCP\nIndonesia',
                            'assets/Orgs/socp.jpg'),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      new InkWell(
                        child: cardWigdet('The Orangutan\nProject',
                            'assets/Orgs/orangutanproject.jpg'),
                        onTap: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder:
                                      (context)=>Top()
                              )
                          );
                        },
                      ),
                      new InkWell(
                        onTap: () {
                            Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Iar(),
                            ),
                          );
                        },
                        child: cardWigdet('IAR\nIndonesia',
                            'assets/Orgs/iar.png'),
                      ),

                    ],
                  ),
                  SizedBox(height: 15),
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      new InkWell(
                        child: cardWigdet('Gili Shark\nConservation',
                            'assets/Orgs/gilishark.png'),
                        onTap: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder:
                                      (context)=>Gsc()
                              )
                          );
                        },
                      ),
                      new InkWell(
                        onTap: () {
                            Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Yabi(),
                            ),
                          );
                        },
                        child: cardWigdet('Yayasan Badak\nIndonesia',
                            'assets/Orgs/yabi.jpeg'),
                      ),

                    ],
                  ),
                  SizedBox(height: 15),
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      new InkWell(
                        onTap: () {
                           Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Asti(),
                            ),
                          );
                        },
                        child: cardWigdet('ASTI\nIndonesia', 'assets/Orgs/asti.jpg'),
                      ),
                      new InkWell(
                        onTap: () {
                            Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Profauna(),
                            ),
                          );
                        },
                        child: cardWigdet('Profauna\nIndonesia',
                            'assets/Orgs/profauna.jpg'),
                      ),

                    ],
                  ),
                  SizedBox(height: 15),
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      new InkWell(
                        onTap: () {
                           Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Sri(),
                            ),
                          );
                        },
                        child: cardWigdet('SRI\nIndonesia', 'assets/Orgs/sri.png'),
                      ),
                      new InkWell(
                        onTap: () {
                            Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Yckt(),
                            ),
                          );
                        },
                        child: cardWigdet('Cikananga\nWildlife',
                            'assets/Orgs/cikananga.jpg'),
                      ),

                    ],
                  ),
                  SizedBox(height: 15),
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      new InkWell(
                        onTap: () {
                           Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Jaan(),
                            ),
                          );
                        },
                        child: cardWigdet('JAAN\nIndonesia', 'assets/Orgs/jaan.jpg'),
                      ),
                      new InkWell(
                        onTap: () {
                            Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Fpnf(),
                            ),
                          );
                        },
                        child: cardWigdet('FNPF\nIndonesia',
                            'assets/Orgs/fnpf.png'),
                      ),

                    ],
                  ),
                  SizedBox(height:15),
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      new InkWell(
                        onTap: () {
                           Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Gilieco(),
                            ),
                          );
                        },
                        child: cardWigdet('GILIECO\nTrust', 'assets/Orgs/gilieco.png'),
                      ),
                      new InkWell(
                        onTap: () {
                            Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Lini(),
                            ),
                          );
                        },
                        child: cardWigdet('YAYASAN\nLINI',
                            'assets/Orgs/lini.jpg'),
                      ),

                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height:30),
          ],
        )
      ),
    );
  }
}
