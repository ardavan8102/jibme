import 'package:flutter/material.dart';
import 'package:jibme/app/consts/colors.dart';
import 'package:jibme/app/consts/dimens.dart';
import 'package:jibme/presentation/widgets/shapes/vertical_neon_indicator.dart';

class MoneyBoxListViewCard extends StatelessWidget {
  const MoneyBoxListViewCard({
    super.key, required this.boxName, required this.balancePrice, required this.boxNameColor,
  });

  final String boxName;
  final String balancePrice;
  final Color boxNameColor;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;

    return Container(
      height: size.height * .16,
      width: size.width * .7,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            AppColors.darkBackground.withValues(alpha: .7),
            AppColors.darkBackground.withValues(alpha: .4),
          ],
          begin: .topLeft,
          end: .bottomRight,
          stops: [0.0, 0.9]
        ),
        borderRadius: BorderRadius.circular(AppDimens.cardRadius),
      ),
      padding: EdgeInsets.all(AppDimens.mediumSpacing),
      margin: EdgeInsets.only(right: AppDimens.largeSpacing),
      child: Column(
        crossAxisAlignment: .start,
        children: [
          Text(
            'Balance',
            style: textTheme.labelSmall,
          ),
    
          SizedBox(height: AppDimens.smallSpacing),
    
          Text(
            balancePrice,
            style: textTheme.titleLarge,
          ),
    
          const Spacer(),
    
    
          Row(
            spacing: AppDimens.mediumSpacing,
            children: [
              VertcialNeonIndicator(
                color: boxNameColor,
                height: 20,
                width: 5,
              ),
    
              Text(
                boxName,
                style: textTheme.labelLarge,
              ),
            ],
          ),
        ],
      ),
    );
  }
}