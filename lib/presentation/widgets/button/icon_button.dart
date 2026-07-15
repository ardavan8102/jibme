import 'package:flutter/material.dart';
import 'package:jibme/app/consts/dimens.dart';

class CircularIconButton extends StatelessWidget {
  const CircularIconButton({
    super.key, required this.icon, this.onTap,
  });

  final IconData icon;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(AppDimens.smallSpacing),
        decoration: BoxDecoration(
          color: Colors.white.withValues(alpha: 0.15),
          borderRadius: BorderRadius.circular(AppDimens.circularIconButton)
        ),
        child: Icon(
          icon,
        ),
      ),
    );
  }
}