import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wild_id/Constants/constants.dart';
import 'package:wild_id/Primates/PrimateData.dart';

class PrimateCard extends StatelessWidget {
  final Primates primates;
  const PrimateCard({Key key, this.primates}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color color1 = HexColor(primates.color);
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 15, top: 15, right: 15),
          child: Container(
              decoration: BoxDecoration(
                color: color1,
                  border: Border.all(
                    color: color1,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20))
              ),
              padding: EdgeInsets.only(left: 20, top: 10),
              width: 340,
              height: 160,
              /*color: color1,*/
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    primates.title,
                    style: GoogleFonts.sora(
                        textStyle: TextStyle(
                          fontSize: 16,
                          color: mywhite,
                        )),
                  ),
                  SizedBox(height: 3),
                  Text(
                    primates.subtitle,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 13.0),
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
                      Text(primates.size,
                      style: TextStyle(color: Colors.white)
                      )
                    ],
                  )
                ],
              )),
        ),
        Positioned(
          bottom: 100,
          left: 250,
          child: Image.network(
            primates.image,
            height: 70,
            width: 70,
            fit: BoxFit.fill,
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
