import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:wild_id/Constants/constants.dart';
import 'package:wild_id/starter.dart';

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
                    ListTile(
                      leading: Icon(Icons.exit_to_app, color: Colors.white,),
                      title: Text('Sign Out', style: TextStyle(color: Colors.white)),
                      onTap: (){
                        logout(context);
                        },
                    ),
                  ],
                ))
          )

        ],
      ),
    );
  }
  Future<void> logout(BuildContext context) async {
    await FirebaseAuth.instance.signOut();
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => Starter()));
  }
}
