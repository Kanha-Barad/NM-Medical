import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomContainerBar extends StatelessWidget {
  final String title;
  final VoidCallback? onBackButtonPressed; // Make the parameter optional
  final String svgAssetPath;

  CustomContainerBar({
    required this.title,
    this.onBackButtonPressed, // Make the parameter optional
    required this.svgAssetPath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: MediaQuery.of(context).size.width,
      color: const Color.fromARGB(255, 186, 43, 35),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: SvgPicture.asset(svgAssetPath),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15),
            child: Text(
              title,
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const Spacer(),
          if (onBackButtonPressed != null) // Conditionally show the back button
            TextButton.icon(
              onPressed: onBackButtonPressed!,
              icon: const Icon(Icons.arrow_back_ios,
                  color: Colors.white, size: 18),
              label: const Text(
                "BACK",
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
              ),
            ),
        ],
      ),
    );
  }
}
