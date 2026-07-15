import 'package:flutter/material.dart';
import 'package:jibme/app/consts/dimens.dart';

class GlassTextButton extends StatelessWidget {
  const GlassTextButton({
    super.key, required this.text, this.onTap,
  });

  final String text;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white.withValues(alpha: .1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(AppDimens.buttonRadius)
        ),
        elevation: 0,
        padding: EdgeInsets.symmetric(
          vertical: AppDimens.mediumSpacing,
          horizontal: AppDimens.largeSpacing,
        ),
        overlayColor: Colors.white,
        surfaceTintColor: Colors.transparent,
        shadowColor: Colors.transparent,
      ),
      child: Text(
        text,
        style: textTheme.labelLarge!.copyWith(
          color: Colors.white
        ),
      )
    );
  }
}