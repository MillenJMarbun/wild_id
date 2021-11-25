import 'package:flutter/material.dart';
import 'package:wild_id/Constants/constants.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          new Container(
            decoration: BoxDecoration(
              color: Colors.black,
              border: Border.all(width: 0),
            ),
            height: 360,
            child: DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.black,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /*Text(
                      'Side menu',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),*/
                    SizedBox(height: 17),
                    Image.asset('assets/wildid.png'),
                  ],
                )),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 5),
            child: Container(
              height: MediaQuery.of(context).size.height,
                color: Colors.black,
                child: Column(
                  children: [
                    ListTile(
                      leading: Image.asset('assets/Drawer/primate.png', height: 30, width: 30),
                      title: Text('Primates', style: TextStyle(color: Colors.white)),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: Image.asset('assets/Drawer/mammals.png', height: 30, width: 30),
                      title: Text('Mammals', style: TextStyle(color: Colors.white)),
                      onTap: () => {Navigator.of(context).pop()},
                    ),
                    ListTile(
                      leading:  Image.asset('assets/Drawer/bird.png', height: 30, width: 30),
                      title: Text('Birds', style: TextStyle(color: Colors.white)),
                      onTap: () => {Navigator.of(context).pop()},
                    ),
                    ListTile(
                      leading: Image.asset('assets/Drawer/reptiles.png', height: 30, width: 30),
                      title: Text('Reptiles', style: TextStyle(color: Colors.white)),
                      onTap: () => {Navigator.of(context).pop()},
                    ),
                    ListTile(
                      leading: Image.asset('assets/Drawer/amphibians.png', height: 30, width: 30),
                      title: Text('Amphibians', style: TextStyle(color: Colors.white)),
                      onTap: () => {Navigator.of(context).pop()},
                    ),
                    ListTile(
                      leading: Image.asset('assets/Drawer/marine.png', height: 30, width: 30),
                      title: Text('Marine / Aquatic', style: TextStyle(color: Colors.white)),
                      onTap: () => {Navigator.of(context).pop()},
                    ),
                  ],
                ))
          )

        ],
      ),
    );
  }
}