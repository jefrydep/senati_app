import 'package:flutter/material.dart';

class CustomLogo extends StatelessWidget {
  const CustomLogo({
    Key? key,
    required this.fontSize2,
    required this.color1,
    required this.color2,
    required this.color3,
    required this.cicrcleColor,
  }) : super(key: key);

  final double fontSize2;
  final Color color1;
  final Color color2;
  final Color color3;
  final Color cicrcleColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'S',
          style: TextStyle(fontSize: fontSize2, color: color1),
        ),
        Text(
          'E',
          style: TextStyle(fontSize: fontSize2, color: color2),
        ),
        Container(
          height: 100,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: cicrcleColor,
          ),
          child: Align(
            alignment: Alignment.center,
            child: Text(
              'NATI',
              style: TextStyle(color: color3, fontSize: fontSize2),
            ),
          ),
        )
      ],
    );
  }
}
