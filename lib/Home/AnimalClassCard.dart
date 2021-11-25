import 'package:flutter/material.dart';

import 'AnimalClassAPI.dart';

class AnimalClassCard extends StatelessWidget {
  final AnimalClass animalclass;
  const AnimalClassCard({Key key, this.animalclass}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color color1 = HexColor(animalclass.color);
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 45, top: 15),
          child: Container(
              decoration: BoxDecoration(
                  color: color1,
                  border: Border.all(
                    color: color1,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20))
              ),
              padding: EdgeInsets.only(left: 50, top: 10),
              height: 150,
              width: 300,
              /*color: color1,*/
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    animalclass.title,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0),
                  ),
                  SizedBox(height: 3),
                  Text(
                    animalclass.subtitle,
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
                      Text(animalclass.size,
                          style: TextStyle(color: Colors.white)
                      )
                    ],
                  )
                ],
              )),
        ),
        Padding(
          padding: EdgeInsets.only(top: 45, left: 10),
          child: Image.network(
            animalclass.image,
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
