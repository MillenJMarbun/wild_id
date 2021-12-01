import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:wild_id/Primates/Primatecard.dart';
import 'MammalsData.dart';

class MammalRead extends StatelessWidget {

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  final Mammals mammal;
  MammalRead({Key key, this.mammal}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color color2 = HexColor(mammal.color);
    return Scaffold(
        key: _scaffoldKey,
        body: ListView(
          children: [
            Column(
              children: [
                SizedBox(height: 30,),
                Container(
                  height: 200,
                  child: Center(child: Image.network(mammal.image2, fit: BoxFit.fill)),
                ),
                SizedBox(height: 30,),
                Container(
                  width: 230,
                  height: 50,
                  decoration: BoxDecoration(
                      color: color2,
                      borderRadius: BorderRadius.circular(8)
                  ),
                  child: Center(
                    child: Text(
                      mammal.title,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.only(left: 10, right: 10, bottom: 10, top: 10),
                  decoration: BoxDecoration(
                      color: color2,
                      borderRadius: BorderRadius.circular(8)
                  ),
                  width: 350,
                  child: Text(
                    mammal.content,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16
                    ),
                  ),
                ),
                SizedBox(height: 40,),
              ],
            ),

          ],
        )
    );
  }
}
