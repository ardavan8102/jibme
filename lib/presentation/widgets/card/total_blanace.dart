import 'package:flutter/material.dart';
import 'package:jibme/app/consts/colors.dart';
import 'package:jibme/app/consts/dimens.dart';

class TotalBalanceCard extends StatelessWidget {
  const TotalBalanceCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.15,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            AppColors.indigo,
            AppColors.blue,
            AppColors.teal,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(AppDimens.cardRadius),
      ),
      child: Column(
        spacing: AppDimens.smallSpacing,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Total Balance',
            style: textTheme.labelMedium?.copyWith(
              fontWeight: FontWeight.w400,
              color: AppColors.iceWhite.withValues(alpha: .5),
            ),
          ),
    
          Text(
            '\$ 15,234.56',
            style: textTheme.headlineLarge?.copyWith(
              fontSize: 40,
              color: AppColors.iceWhite,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}