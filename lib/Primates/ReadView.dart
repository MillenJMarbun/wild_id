import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'PrimateData.dart';
import 'Primatecard.dart';

class ReadView extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  final Primates primate;
  ReadView({Key key, this.primate}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Color color2 = HexColor(primate.color);
    return Scaffold(
        key: _scaffoldKey,
        /*appBar: AppBar(
          title: Text('MSJM WIKI'),
          backgroundColor: Colors.black87,
          centerTitle: true,
          leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.white,
            ),
            onPressed: () => _scaffoldKey.currentState.openDrawer(),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.settings,
                color: Colors.white,
              ),
              onPressed: () => _scaffoldKey.currentState.openDrawer(),
            )
          ],
        ),*/
      body: ListView(
        children: [
          Column(
            children: [
              SizedBox(height: 30,),
              Container(
                height: 200,
                child: Center(child: Image.network(primate.image2, fit: BoxFit.fill)),
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
                  primate.title,
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
                  primate.content,
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
