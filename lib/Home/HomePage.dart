import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:search_page/search_page.dart';
import 'package:wild_id/Amphibians/Amphibians.dart';
import 'package:wild_id/Bird/Birds.dart';
import 'package:wild_id/Mammals/Mammals.dart';
import 'package:wild_id/Marines/Marines.dart';
import 'package:wild_id/Primates/primates.dart';
import 'package:wild_id/Quiz/Quiz.dart';
import 'package:wild_id/Reptiles/reptile.dart';
import 'package:wild_id/model/user_model.dart';
import '../CardWidget.dart';
import '../Constants/constants.dart';
import '../Drawer.dart';
import '../starter.dart';

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

  static List<String> screens = [
    'Indonesian Primates',
    'Indonesian Mammals',
    'Indonesian Birds',
    'Indonesian Reptiles',
    'Indonesian Amphibians',
    'Indonesian Marine / Aquatic',
    'Quiz Game'
  ];

  void navigate(screenName) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => screenName,
      ),
    );
  }

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  int _page = 0;
  GlobalKey _bottomNavigationKey = GlobalKey();
  
  User user = FirebaseAuth.instance.currentUser;
  UserModel loggedInUser = UserModel();
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    FirebaseFirestore.instance.collection("users")
    .doc(user.uid).get()
    .then((value){
      this.loggedInUser = UserModel.fromMap(value.data());
      setState(() {});
        });
  }



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
                 padding: EdgeInsets.symmetric(horizontal: 10),
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
                         GestureDetector(
                           onTap: () => showSearch(
                             context: context,
                             delegate: SearchPage(
                               barTheme: ThemeData(
                                 primarySwatch: Colors.teal,
                               ),
                               onQueryUpdate: (s) => print(s),
                               items: screens,
                               searchLabel: 'Search Wildlife',
                               suggestion: Center(
                                 child: Text('Search Wildlife'),
                               ),
                               failure: Center(
                                 child: Text('No Pages found'),
                               ),
                               filter: (screen) => [screen],
                               builder: (screen) => GestureDetector(
                                 onTap: () {
                                   screen == 'Indonesian Primates'
                                       ? navigate(Primates())
                                       : screen == 'Indonesian Mammals'
                                       ? navigate(Mammals())
                                       : screen == 'Indonesian Birds'
                                       ? navigate(Birds())
                                       : screen == 'Indonesian Reptiles'
                                       ? navigate(Reptile())
                                       : screen == 'Indonesian Amphibians'
                                       ? navigate(Amphibians())
                                       : screen == 'Indonesian Marine / Aquatic'
                                       ? navigate(Marines())
                                       : navigate(Quiz());
                                 },
                                 child: ListTile(
                                   title: Text(screen),
                                   trailing: screen == 'Indonesian Primates'
                                       ? Image.asset('assets/Drawer/primate.png')
                                       : screen == 'Indonesian Mammals'
                                       ? Image.asset('assets/Drawer/mammals.png')
                                       : screen == 'Indonesian Birds'
                                       ? Image.asset('assets/Drawer/bird.png')
                                       : screen == 'Indonesian Reptiles'
                                       ? Image.asset('assets/Drawer/reptiles.png')
                                       : screen == 'Indonesian Amphibians'
                                       ? Image.asset('assets/Drawer/amphibians.png')
                                       : screen == 'Indonesian Marine / Aquatic'
                                       ? Image.asset('assets/Drawer/marine.png')
                                       : Icon(Icons.school, color: Colors.blue,
                                   ),
                                 ),
                               ),
                             ),
                           ),
                           child: new Container(
                             //container for search bar
                             padding: EdgeInsets.only(right: 10), // 20,20,40
                             child: new Row(
                               children: [
                                 new Container(
                                   padding: EdgeInsets.all(5),
                                   height: 32,
                                   width: MediaQuery.of(context).size.width / 1.3,
                                   decoration: BoxDecoration(
                                     color:Colors.grey[200],
                                     borderRadius:
                                     BorderRadius.all(Radius.circular(10)),
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
                           ),
                         ),
                       ],
                     ),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceAround,
                       children: [
                         Padding(
                           padding: const EdgeInsets.only( top: 10, bottom: 20, right: 46),
                           child: Text("Welcome,\n${loggedInUser.userName}", style: GoogleFonts.sora(
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
                              builder: (context) => Primates(),
                            ),
                          );
                           },
                           child: cardWigdet(
                               'Indonesian\nPrimates', 'assets/orangutancov.jpeg'),
                         ),
                         new InkWell(
                           onTap: () {
                              Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Mammals(),
                            ),
                          );
                           },
                           child: cardWigdet(
                               'Indonesian\nMammals',
                               'assets/sumatratigercov.jpg'),
                         ),
                       ],
                     ),
                     SizedBox(height: 15),
                     new Row(
                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                       children: [
                         new InkWell(
                           child: cardWigdet(
                               'Indonesian\nBirds',
                               'assets/birdscov.jpg'),
                           onTap: (){
                             Navigator.push(
                                 context,
                                 MaterialPageRoute(
                                     builder:
                                         (context)=>Birds()
                                 )
                             );
                           },
                         ),
                         new InkWell(
                           onTap: () {
                               Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Reptile(),
                            ),
                          );
                           },
                           child: cardWigdet(
                               'Indonesian\nReptiles',
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
                              Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Amphibians(),
                            ),
                          );
                           },
                           child: cardWigdet('Indonesian\nAmphibians', 'assets/indonesianamphibians.jpg'),
                         ),
                         new InkWell(
                           onTap: () {
                               Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Marines(),
                            ),
                          );
                           },
                           child: cardWigdet('Indonesian\nMarine / Aquatic',
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
