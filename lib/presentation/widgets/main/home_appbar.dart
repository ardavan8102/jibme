import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jibme/app/consts/dimens.dart';
import 'package:jibme/presentation/widgets/button/icon_button.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Row(
      spacing: AppDimens.mediumSpacing,
      children: [
        Text(
          'جیــبــ مــی',
          style: textTheme.titleLarge,
        ),
          
        Spacer(),
          
        CircularIconButton(
          icon: Iconsax.notification,
          onTap: () {
            
          },
        ),
          
        CircularIconButton(
          icon: Iconsax.search_normal,
          onTap: () {
            
          },
        ),
      ],
    );
  }
}