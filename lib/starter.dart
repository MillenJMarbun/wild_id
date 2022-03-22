import 'dart:io';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Constants/constants.dart';
import 'WelcomeScreen.dart';


final List<String> imgList = [
  'assets/wallpp.png',
  'assets/first.png',
  'assets/second.png',
  'assets/fourth.png',
  'assets/five.png',
];


class Starter extends StatefulWidget {
  @override
  _StarterState createState() => _StarterState();
}

class _StarterState extends State<Starter> {

  Future<bool> _onWillPop() async {
    return (await showDialog(
      context: context,
      builder: (context) => new AlertDialog(
        title: new Text('Are you sure?'),
        content: new Text('Do you want to Exit the App'),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: new Text('No'),
          ),
          TextButton(
            onPressed: () => exit(0),
            child: new Text('Yes'),
          ),
        ],
      ),
    )) ?? false;
  }


  int _current = 0;

  final List<Widget> imageSliders = imgList.map((item) => Image.asset(
       item,
       height: 600, //30
       width: 1000,
    ),
  )
      .toList();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Container(
        alignment: Alignment.topCenter,
        //container for image
        // padding: EdgeInsets.all(4),
        height: MediaQuery.of(context).size.height,
        /*width: MediaQuery.of(context).size.width,*/ //controls how wide it is, if its not divided its fully stretched
        decoration: BoxDecoration(
          color: bgcolor,
          borderRadius: BorderRadius.all(Radius.circular(
              5.0)), //controls how rounded the edges are
        ),
        child: Column(
          children: [
            Stack(
              children: [
                CarouselSlider(
                  options: CarouselOptions(
                    height: MediaQuery.of(context).size.height / 1.2,
                      viewportFraction: 2,
                      aspectRatio: 1, //controls the image size  2.98
                      enlargeCenterPage: false,
                      scrollDirection: Axis.horizontal,
                      autoPlay: true,
                      onPageChanged: (index, reason) {
                        setState(() {
                          /// reason can be used print(reason); to tell the reason as the page changed, manual or timed, since autoplay this is automatic
                          _current = index;
                        });
                      }),
                  items: imageSliders,
                ),
                Positioned(
                  top: 60,
                  left: 0,
                  right: 300,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: imgList.map((url) {
                      //map used to iterriate imglist
                      //used to find out how many items is in imglist
                      int index = imgList.indexOf(url);
                      return Container(
                        width: 10.0, //how big the circles are
                        height: 7.0,
                        margin: EdgeInsets.symmetric(
                            vertical: 0.0,
                            horizontal: 0.5 // how far away the dots are from each other
                        ),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: _current == index
                              ? maincol
                              : mywhite,
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(left: 300, bottom: 30),
              child: FloatingActionButton(
                shape: RoundedRectangleBorder(),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> MyHomePage()));
                },
                child: new Icon(Icons.arrow_forward,color: mywhite),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


