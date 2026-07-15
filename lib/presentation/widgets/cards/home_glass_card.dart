import 'package:flutter/material.dart';
import 'package:jibme/app/consts/colors.dart';
import 'package:jibme/app/consts/dimens.dart';

class HomeScreenGlassCard extends StatelessWidget {
  const HomeScreenGlassCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final textTheme = Theme.of(context).textTheme;
    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: .1),
        borderRadius: BorderRadius.circular(AppDimens.cardRadius),
        border: Border.all(
          width: 1,
          color: Colors.white.withValues(alpha: .2),
        ),
      ),
      width: double.infinity,
      height: size.height * .15,
      padding: EdgeInsets.all(AppDimens.mediumSpacing),
      child: Column(
        crossAxisAlignment: .start,
        mainAxisAlignment: .center,
        children: [
          Row(
            mainAxisAlignment: .spaceBetween,
            children: [
              Text(
                'کل موجــودی',
                style: textTheme.labelMedium!.copyWith(
                  color: Colors.white.withValues(alpha: .5),
                ),
              ),
    
              Container(
                decoration: BoxDecoration(
                  color: AppColors.emeraldGreen.withValues(alpha: .2),
                  borderRadius: BorderRadius.circular(AppDimens.circularRadius)
                ),
                padding: EdgeInsets.fromLTRB(
                  AppDimens.smallSpacing + 4,
                  AppDimens.xSmallSpacing,
                  AppDimens.smallSpacing + 4,
                  0
                ),
                child: Text(
                  '26%+',
                  style: textTheme.labelMedium!.copyWith(
                    color: AppColors.emeraldGreen,
                  ),
                ),
              ),
            ],
          ),
    
          SizedBox(height: AppDimens.mediumSpacing),
    
          Row(
            spacing: AppDimens.smallSpacing,
            children: [
              Text(
                '6.897.000',
                style: textTheme.headlineMedium!.copyWith(
                  color: Colors.white,
                ),
              ),
    
              Text(
                'تـومــان',
                style: textTheme.bodyLarge!.copyWith(
                  color: Colors.white.withValues(alpha: .5),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}