import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomContainerBarDelegate extends SliverPersistentHeaderDelegate {
  final String title;
  final String svgAssetPath;
  final VoidCallback? onBackButtonPressed;
  final double maxExtentValue; // Rename this property
  final double minExtentValue; // Rename this property

  CustomContainerBarDelegate({
    required this.title,
    required this.svgAssetPath,
    this.onBackButtonPressed,
    this.maxExtentValue = 55.0, // Rename this property
    this.minExtentValue = 55.0, // Rename this property
  });

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return CustomContainerBar(
      title: title,
      svgAssetPath: svgAssetPath,
      onBackButtonPressed: onBackButtonPressed,
    );
  }

  @override
  double get maxExtent => maxExtentValue;

  @override
  double get minExtent => minExtentValue;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}

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
            child: SizedBox(
                width: 26, height: 26, child: SvgPicture.asset(svgAssetPath)),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15, top: 0),
            child: Text(
              title,
              style: TextStyle(
                fontSize: 16,
                height: 1.5,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const Spacer(),
          if (onBackButtonPressed != null) // Conditionally show the back button
            TextButton.icon(
              onPressed: onBackButtonPressed!,
              icon: SvgPicture.asset("assets/images/back-arrow.svg"),
              label: const Text(
                "BACK",
                style: TextStyle(
                    fontSize: 15,
                    height: 1.3,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
              ),
            ),
        ],
      ),
    );
  }
}
