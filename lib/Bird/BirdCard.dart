import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wild_id/Constants/constants.dart';
import 'BirdData.dart';

class BirdCard extends StatelessWidget {
  final Birds bird;
  const BirdCard({Key key, this.bird}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color color1 = HexColor(bird.color);
    Color color2 = HexColor(bird.color2);

    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 15, /*top: 15,*/ right: 15),
          child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end:
                    Alignment(0.8, 0.0),
                    colors: <Color>[
                      color1,
                      color2
                    ],
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20))
              ),
              padding: EdgeInsets.only(left: 20, top: 20, bottom: 20, right: 30),
              width: 340,
              height: 220,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    bird.title,
                    style: GoogleFonts.sora(
                        textStyle: TextStyle(
                            fontSize: 30,
                            color: mywhite,
                            fontWeight: FontWeight.bold
                        )),
                  ),
                  Spacer(),
                  Text(
                    bird.subtitle,
                    style: TextStyle(
                        color: Colors.grey[200],
                        fontSize: 11.0),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(
                        Icons.map_outlined,
                        color: Colors.white,
                        size: 20.0,
                      ),
                      SizedBox(width: 10),
                      Text(bird.loc,
                          style: TextStyle(color: Colors.white, fontSize: 12)
                      )
                    ],
                  )
                ],
              )),
        ),
        Positioned(
          bottom: 110,
          left: 240,
          child: Container(
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: color1
            ),
            child: Image.asset(
              bird.image,
              height: 100,
              width: 120,
              fit: BoxFit.fitHeight,
            ),
          ),
        )
      ],
    );
  }
}

