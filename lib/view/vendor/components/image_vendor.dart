import 'package:flutter/material.dart';

class ImageVendor extends StatelessWidget {
  const ImageVendor({
    Key key,
    @required this.imageUrl
  }) : super(key: key);

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 350,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30)
        ),
        image: DecorationImage(image: NetworkImage(imageUrl), fit: BoxFit.cover)
      ),
    );
  }
}