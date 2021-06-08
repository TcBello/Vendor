import 'package:flutter/material.dart';
import 'package:vendor/components/style.dart';

class VendorDetails extends StatelessWidget {
  VendorDetails({
    Key key,
    @required this.id,
    @required this.latitude,
    @required this.longtitude,
    @required this.totalStockValue
  }) : super(key: key);

  final String id;
  final double latitude;
  final double longtitude;
  final int totalStockValue;

  double _spacing = 10;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("ID: $id", style: vendorDetailTextStyle,),
          SizedBox(height: _spacing),
          Text("Latitude: $latitude", style: vendorDetailTextStyle,),
          SizedBox(height: _spacing),
          Text("Longtitude: $longtitude", style: vendorDetailTextStyle,),
          SizedBox(height: _spacing),
          Text("Total Stock Value: $totalStockValue", style: vendorDetailTextStyle,)
        ],
      ),
    );
  }
}