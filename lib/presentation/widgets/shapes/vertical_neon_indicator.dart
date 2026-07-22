import 'package:flutter/material.dart';
import 'package:jibme/app/consts/dimens.dart';

class VertcialNeonIndicator extends StatelessWidget {
  const VertcialNeonIndicator({
    super.key, required this.height, required this.width, required this.color,
  });

  final double height;
  final double width;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(AppDimens.circularRadius),
        boxShadow: [
          BoxShadow(
            blurRadius: 15,
            color: color.withValues(alpha: .5),
            offset: Offset(0, 0),
            spreadRadius: 1,
          )
        ]
      ),
      height: height,
      width: width,
    );
  }
}