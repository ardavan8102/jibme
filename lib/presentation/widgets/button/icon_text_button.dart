import 'package:flutter/material.dart';
import 'package:jibme/app/consts/dimens.dart';

class IconTextButton extends StatelessWidget {
  const IconTextButton({
    super.key, required this.text, required this.bgColor, required this.fgColor, required this.icon,
  });

  final String text;
  final Color bgColor;
  final Color fgColor;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;

    return Column(
      spacing: AppDimens.smallSpacing,
      children: [
        Container(
          height: size.height * 0.08,
          decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.circular(AppDimens.circularRadius),
          ),
          child: Center(
            child: Icon(icon, color: fgColor, size: 30),
          ),
        ),
    
        Text(
          text,
          style: textTheme.labelSmall?.copyWith(
            fontWeight: FontWeight.w600,
            color: fgColor,
          ),
        ),
      ],
    );
  }
}