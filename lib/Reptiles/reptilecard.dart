import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wild_id/Constants/constants.dart';
import 'package:wild_id/Reptiles/reptiledata.dart';


class reptileCard extends StatelessWidget {
  final Reptiles reptile;
  const reptileCard({Key key, this.reptile}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color color1 = HexColor(reptile.color);
    Color color2 = HexColor(reptile.color2);

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
                    reptile.title,
                    style: GoogleFonts.sora(
                        textStyle: TextStyle(
                            fontSize: 30,
                            color: mywhite,
                            fontWeight: FontWeight.bold
                        )),
                  ),
                  Spacer(),
                  Text(
                    reptile.subtitle,
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
                      Text(reptile.loc,
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
              reptile.image,
              height: 100,
              width: 120,
              fit: BoxFit.cover,
            ),
          ),
        )
      ],
    );
  }
}

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}
