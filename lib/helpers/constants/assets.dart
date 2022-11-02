import 'package:flutter/material.dart';

class AppImage extends StatelessWidget {
  const AppImage({
    Key? key,
    required this.image,
    this.width,
    this.height,
    this.radius,
    this.shape = BoxShape.rectangle,
  }) : super(key: key);
  final String image;
  final double? width, height, radius;
  final BoxShape shape;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? height,
      height: height ?? width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
        shape: shape,
        borderRadius: BorderRadius.circular(radius ?? 0),
      ),
    );
  }
}

class AppImages {
  static const profile = "assets/images/profile.png";
}
