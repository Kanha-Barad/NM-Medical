import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class buildIconItem extends StatelessWidget {
  final String imageAsset;
  final String labelText;

  const buildIconItem({
    required this.imageAsset,
    required this.labelText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SvgPicture.asset(imageAsset),
        Text(
          labelText,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700,color: Color(0xf0000000)),
        ),
      ],
    );
  }
}
