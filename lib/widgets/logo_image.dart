import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  final double width;
  final double height;

  const Logo({super.key, 
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/logo.png',
      width: width,
      height: height,
      fit: BoxFit.cover,
    );
  }
}
