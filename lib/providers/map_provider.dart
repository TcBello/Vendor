import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:vendor/model/vendor.dart';
import 'package:vendor/services/database_service.dart';
import 'package:vendor/view/vendor/vendor_view.dart';

class MapProvider extends ChangeNotifier{
  GoogleMapController _mapController;
  GoogleMapController get mapController => _mapController;

  Set<Marker> _markers = HashSet<Marker>();
  Set<Marker> get markers => _markers;

  void onMapCreated(GoogleMapController controller, BuildContext context) async{
    _mapController = controller;

    var vendorList = await DatabaseService().fetchVendors();

    vendorList.forEach((element) {
      _markers.add(Marker(
        markerId: MarkerId(element.id),
        position: LatLng(element.latitude, element.longtitude),
        onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => VendorView(
          vendor: Vendor(
            id: element.id,
            name: element.name,
            latitude: element.latitude,
            longtitude: element.longtitude,
            totalStockValue: element.totalStockValue,
            imageUrl: element.imageUrl
          ),)))
      ));
    });

    notifyListeners();
  }
}