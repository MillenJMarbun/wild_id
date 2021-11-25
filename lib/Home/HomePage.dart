import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wild_id/Home/AnimalClassCard.dart';
import 'package:wild_id/Primates/primates.dart';
import 'package:wild_id/Quiz/Quiz.dart';
import '../CardWidget.dart';
import '../Constants/constants.dart';
import '../Drawer.dart';
import 'AnimalClassAPI.dart';

class HomePage extends StatefulWidget {
  final int tab;
  const HomePage({
    Key key,
    @required this.tab,
  }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  int _page = 0;
  GlobalKey _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: NavDrawer(),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
           child: Column(
             mainAxisAlignment: MainAxisAlignment.start,
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Container(
                 height: 200,
                 color: maincol, // 20,20,40
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.start,
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     SizedBox(height: 35,),
                     new Row(
                       children: [
                         IconButton(
                           icon: Icon(
                             Icons.menu,
                             color: Colors.white,
                           ),
                           onPressed: () => _scaffoldKey.currentState.openDrawer(),
                         ),
                         SizedBox(width: 10),
                         new Container(
                           padding: EdgeInsets.all(4),
                           height: 30,
                           width: MediaQuery.of(context).size.width / 1.3,
                           decoration: BoxDecoration(
                             color: Colors.white,
                             borderRadius:
                             BorderRadius.all(Radius.circular(5.0)),
                           ),
                           child: Row(
                             children: [
                               Icon(Icons.search),
                               SizedBox(width: 10),
                               Text('Search Wildlife', style: GoogleFonts.lexendDeca()),
                             ],
                           ),
                         ),
                       ],
                     ),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceAround,
                       children: [
                         Padding(
                           padding: const EdgeInsets.only( top: 10, bottom: 20),
                           child: Text("Welcome, \nmillenmarbun24", style: GoogleFonts.sora(
                               textStyle: TextStyle(
                                 fontWeight: FontWeight.bold,
                                 fontSize: 30,
                                 color: Colors.white,
                               )
                           ),),
                         ),
                         Image.asset('assets/logoinverted.png', scale: 8,)
                       ],
                     )
                   ],
                 ),
               ),

               Container(
                   color:Colors.white,
                   child:Image.asset('assets/strip2.png')
               ),

               SizedBox(height: 15,),

               Padding(
                 padding: const EdgeInsets.only(left : 15, bottom: 10),
                 child: Text("Discover", style: GoogleFonts.sora(
                     textStyle: TextStyle(
                       fontWeight: FontWeight.bold,
                       fontSize: 25,
                       color: Colors.grey[800],
                     )
                 ),),
               ),

               new Container(
                 height: 700,
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
                              builder: (context) => Primates(),
                            ),
                          );
                           },
                           child: cardWigdet(
                               'Primates', 'assets/orangutancov.jpeg'),
                         ),
                         new InkWell(
                           onTap: () {
                             /* Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => deep(),
                            ),
                          );*/
                           },
                           child: cardWigdet(
                               'Mammals',
                               'assets/sumatratigercov.jpg'),
                         ),
                       ],
                     ),
                     SizedBox(height: 15),
                     new Row(
                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                       children: [
                         new InkWell(
                           onTap: () {
                             /* Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LearningGame(),
                            ),
                          );*/
                           },
                           child: cardWigdet('Birds',
                               'assets/birdscov.jpg'),
                         ),
                         new InkWell(
                           onTap: () {
                             /*  Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Absen(),
                            ),
                          );*/
                           },
                           child: cardWigdet('Reptiles',
                               'assets/lizardcov.jpg'),
                         ),

                       ],
                     ),
                     SizedBox(height: 15),
                     new Row(
                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                       children: [
                         new InkWell(
                           onTap: () {
                             /* Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LearningGame(),
                            ),
                          );*/
                           },
                           child: cardWigdet('Amphibians', 'assets/indonesianamphibians.jpg'),
                         ),
                         new InkWell(
                           onTap: () {
                             /*  Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Absen(),
                            ),
                          );*/
                           },
                           child: cardWigdet('Marine / Aquatic',
                               'assets/indosea.jpg'),
                         ),

                       ],
                     ),
                   ],
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.only(left : 15, bottom: 10, right: 15),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Text("Quiz Game", style: GoogleFonts.sora(
                         textStyle: TextStyle(
                           fontWeight: FontWeight.bold,
                           fontSize: 25,
                           color: Colors.grey[800],
                         )
                     ),),
                     GestureDetector(
                       onTap: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context)=> Quiz()));
                       },
                       child: Text("View ➡", style: GoogleFonts.sora(
                           textStyle: TextStyle(
                             fontWeight: FontWeight.bold,
                             fontSize: 15,
                             color: Colors.grey[800],
                           )
                       ),),
                     ),
                   ],
                 ),
               ),
               InkWell(
                 onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=> Quiz()));
                   },
                   child: Image.asset('assets/quizbanner.png')),
               SizedBox(height: 15,),
             ],
           )
        ),
      );
  }
}
