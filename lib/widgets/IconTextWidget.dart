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
        Padding(
          padding: const EdgeInsets.only(top: 5.0),
          child: Text(
            labelText,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Color(0xf0000000)),
          ),
        ),
      ],
    );
  }
}
