import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:wild_id/Constants/constants.dart';
import 'package:wild_id/Home/HomePage.dart';
import 'package:wild_id/News/news.dart';

import 'POTD/potd.dart';
import 'findorg/findorg.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  Future<bool> _onWillPop() async {
    return (await showDialog(
      context: context,
      builder: (context) => new AlertDialog(
        title: new Text('Are you sure?'),
        content: new Text('Do you want to exit the app?'),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: new Text('Noooooo'),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: new Text('Yes'),
          ),
        ],
      ),
    )) ?? false;
  }

 /* int _page = 0;
  GlobalKey _bottomNavigationKey = GlobalKey();*/

  int _page = 0;

  final screens = const [HomePage(tab : 1), POTD(tab: 2), NewsPage(tab: 3), findOrg(tab: 4)];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        /*bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          index: 0,
          height: 50.0,
          //50
          items: <Widget>[
            Wrap(
              direction: Axis.vertical,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                Icon(Icons.home_outlined, size: 28),
                Text(
                  'Home',
                  style: TextStyle(fontSize: 10),
                )
              ],
            ),
            *//* new Column(
              children: [*//* *//*
                Icon(Icons.home_outlined, size: 30),
                *//* *//*new Text(
                  'Home',
                  style: TextStyle(fontSize: 10),
                )
              ],
            ),*//*
            Wrap(
              direction: Axis.vertical,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                Icon(Icons.info_outline, size: 28),
                Text(
                  'News',
                  style: TextStyle(fontSize: 10),
                )
              ],
            ),
            Wrap(
              direction: Axis.vertical,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                Icon(Icons.perm_identity, size: 28),
                Text(
                  'My Account',
                  style: TextStyle(fontSize: 10),
                )
              ],
            ),
          ],
          color: Colors.white,
          buttonBackgroundColor: Colors.grey[100],
          backgroundColor: maincol,
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 600),
          onTap: (index) {
            setState(() {
              _page = index;
            });
          },
          letIndexChange: (index) => true,
        ),*/
          bottomNavigationBar: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  blurRadius: 20,
                  color: Colors.black.withOpacity(.1),
                )
              ],
            ),
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
                child: GNav(
                  rippleColor: Colors.grey[300],
                  hoverColor: Colors.grey[100],
                  gap: 8,
                  activeColor: Colors.white,
                  iconSize: 24,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  duration: Duration(milliseconds: 400),
                  tabBackgroundColor: maincol,
                  color: Colors.black,
                  tabs: [
                    GButton(
                      icon: LineIcons.home,
                      text: 'Home',
                      textStyle: TextStyle(color: Colors.white),
                      iconColor: Colors.grey[600],
                    ),
                    GButton(
                      icon: LineIcons.camera,
                      text: 'POTD',
                      textStyle: TextStyle(color: Colors.white),
                      iconColor: Colors.grey[600],
                    ),
                    GButton(
                      icon: LineIcons.newspaper,
                      text: 'News',
                      textStyle: TextStyle(color: Colors.white),
                      iconColor: Colors.grey[600],
                    ),
                    GButton(
                      icon: LineIcons.search,
                      text: 'Find Org',
                      textStyle: TextStyle(color: Colors.white),
                      iconColor: Colors.grey[600],
                    ),
                  ],
                  selectedIndex: _page,
                  onTabChange: (index) {
                    setState(() {
                      _page = index;
                    });
                  },
                ),
              ),
            ),
          ),
        body: Center(
        child: screens[_page],
      ),
      ),
    );
  }
}
