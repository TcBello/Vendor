import 'package:flutter/material.dart';

class OutlineIcon extends StatelessWidget {
  const OutlineIcon({
    Key key,
    @required this.icon
  }) : super(key: key);

  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.black)
      ),
      child: icon,
    );
  }
}
