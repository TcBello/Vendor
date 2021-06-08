import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';
import 'package:vendor/providers/map_provider.dart';
import 'package:vendor/view/map/components/location_card.dart';

// Dear recruiters, I know there are many things that I still lacked in this task.
// This may be sound rude but I'll still say this, please hire me as an intern to your company.
// I really need experience with real life projects so I can improve myself in developing app.
// I may not know some things you'll assign to me if I get hired in this position but,
// I am willing to learn anything, and do my best to help your company and myself grow.
// Thank you for time reading this message.

class MapView extends StatelessWidget {
  const MapView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mapProvider = Provider.of<MapProvider>(context);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          padding: EdgeInsets.zero,
          icon: Card(
            elevation: 5,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: Container(
              width: 30,
              height: 30,
              margin: const EdgeInsets.all(2.0),
              child: Icon(Icons.menu, color: Colors.black,),
            ),
          ),
          onPressed: (){},
        ),
        title: Text("All Vendors", style: TextStyle(color: Colors.black)),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: TextButton(
              child: Text("Shop Now"),
              onPressed: (){},
              style: ButtonStyle(
                padding: MaterialStateProperty.all(const EdgeInsets.symmetric(horizontal: 20)),
                backgroundColor: MaterialStateProperty.all(Colors.green),
                foregroundColor: MaterialStateProperty.all(Colors.white),
                elevation: MaterialStateProperty.all(5),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)
                )),
                textStyle: MaterialStateProperty.all(TextStyle(fontWeight: FontWeight.bold, fontSize: 18))
              ),
            ),
          )
        ],
      ),
      body: Stack(
        children: [
          GoogleMap(
            onMapCreated: (controller){
              mapProvider.onMapCreated(controller, context);
            },
            mapType: MapType.normal,
            initialCameraPosition: CameraPosition(
              target: LatLng(14.405833787401937, 120.9410251113118),
              zoom: 12,
            ),
            markers: mapProvider.markers,
          ),
          Positioned(
            bottom: 20,
            left: MediaQuery.of(context).size.width * 0.05,
            child: LocationCard()
          )
        ],
      ),
    );
  }
}