import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:vendor/components/style.dart';
import 'package:vendor/view/map/components/outline_icon.dart';

class LocationCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;

    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Container(
        margin: const EdgeInsets.all(8.0),
        height: 100,
        width: _size.width * 0.75,
        child: Row(
          children: [
            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 5),
                width: 40,
                height: 90,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    OutlineIcon(icon: Icon(Icons.location_on_rounded,)),
                    Expanded(
                      child: DottedLine(
                        direction: Axis.vertical,
                      ),
                    ),
                    OutlineIcon(icon: Icon(Icons.location_city))
                  ],
                ),
              ),
            ),
            SizedBox(width: 10,),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Your Location", style: locationHeaderTextStyle,),
                Text("Rosario, Batangas", style: locationTextStyle,),
                SizedBox(
                  width: _size.width * 0.6,
                  child: Divider(
                    color: Colors.grey,
                    thickness: 1.0,
                  ),
                ),
                Text("Cart Location", style: locationHeaderTextStyle,),
                Text("Bacoor, Las Pinas", style: locationTextStyle,)
              ],
            )
          ],
        ),
      ),
    );
  }
}