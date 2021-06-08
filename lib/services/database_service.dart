import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:vendor/model/vendor.dart';

class DatabaseService{
  CollectionReference _vendorCollection = FirebaseFirestore.instance.collection("vendor");

  // Future<List<Vendor>> fetchVendors() async {
  //   var vendors = await _vendorCollection.get();

  //   vendors.docs.forEach((element) {element.data()});
  // }
  Future<List<Vendor>> fetchVendors() async {
    var vendors = await _vendorCollection.get();
  
    return vendors.docs.map((e) => Vendor(
    id: e.data()['id'],
    name: e.data()['name'],
    latitude: e.data()['latitude'],
    longtitude: e.data()['longtitude'],
    totalStockValue: e.data()['totalStockValue'],
    imageUrl: e.data()['imageUrl'],
    )).toList();
  }
}