import 'package:flutter/material.dart';
import 'package:vendor/components/style.dart';
import 'package:vendor/model/vendor.dart';
import 'package:vendor/view/vendor/components/image_vendor.dart';
import 'package:vendor/view/vendor/components/vendor_details.dart';

class VendorView extends StatelessWidget {
  const VendorView({Key key, this.vendor}) : super(key: key);

  final Vendor vendor;

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        width: _size.width,
        height: _size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ImageVendor(imageUrl: vendor.imageUrl,),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              alignment: Alignment.topCenter,
              child: Text(vendor.name, style: vendorNameTextStyle,),
            ),
            VendorDetails(
              id: vendor.id,
              latitude: vendor.latitude,
              longtitude: vendor.longtitude,
              totalStockValue: vendor.totalStockValue,
            )
          ],
        ),
      ),
    );
  }
}