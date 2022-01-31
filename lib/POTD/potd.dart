import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wild_id/Constants/constants.dart';

import 'models/photo.dart';

class POTD extends StatefulWidget {
  final int tab;
  const POTD({
    Key key,
    @required this.tab,
  }) : super(key: key);
  @override
  _POTDState createState() => _POTDState();
}

class _POTDState extends State<POTD> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  bool _loading;
  List<Photo> photo;

  void getImage() async {
    Images images = Images();
    await images.getPhoto();
    photo = images.image;
    setState(() {
      _loading = false;
    });
  }

  @override
  void initState() {
    _loading = true;
    // TODO: implement initState
    super.initState();
    getImage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: mywhite,
        appBar: AppBar(
          title: Text(
            'wild.id Wildlife Picture Of The Day',
            style: GoogleFonts.sora(
                textStyle: TextStyle(
              /*fontWeight: FontWeight.bold,*/
              fontSize: 18,
              color: mywhite,
            )),
          ),
          automaticallyImplyLeading: false,
          centerTitle: true,
          elevation: 0,
        ),
        body: SafeArea(
            child: _loading
                ? Center(
                    child: CircularProgressIndicator(),
                  )
                : SingleChildScrollView(
                    child: ListView.builder(
                        itemCount: photo.length,
                        shrinkWrap: true,
                        physics: ClampingScrollPhysics(),
                        itemBuilder: (context, index) {
                          return Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 350,
                                  width: MediaQuery.of(context).size.height,
                                  decoration: BoxDecoration(
                                    color: maincol,
                                  ),
                                  child: ClipRRect(
                                    child: Image.network(
                                      photo[index].url,
                                      width: 300,
                                      height: 300,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 30),
                                Container(
                                    margin:
                                        EdgeInsets.only(left: 20, right: 20),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          photo[index].title,
                                          style: GoogleFonts.sora(
                                              textStyle: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 25,
                                            color: maincol,
                                          )),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          photo[index].date,
                                          style: GoogleFonts.sora(
                                              textStyle: TextStyle(
                                            fontSize: 12,
                                            color: Colors.grey[700],
                                          )),
                                        ),
                                      ],
                                    )),
                                Container(
                                  margin: EdgeInsets.only(
                                      left: 20, right: 20, top: 10),
                                  child: Text(photo[index].explanation,
                                      style: GoogleFonts.sora(
                                          textStyle: TextStyle(
                                        fontSize: 14,
                                        color: Colors.black,
                                      ))),

                                  ///'${explanation.toString()}'
                                ),
                                SizedBox(height: 40),
                              ],
                            ),
                          );
                        }),
                  )));
  }
}
