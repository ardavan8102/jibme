import 'package:flutter/material.dart';
import 'package:jibme/app/consts/colors.dart';
import 'package:jibme/app/consts/dimens.dart';
import 'package:jibme/presentation/widgets/shapes/vertical_neon_indicator.dart';

class SectionHeaderWithButton extends StatelessWidget {
  const SectionHeaderWithButton({
    super.key, required this.title, required this.buttonText, required this.onPress,
  });

  final String title;
  final String buttonText;
  final Function() onPress;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Row(
      mainAxisAlignment: .spaceBetween,
      crossAxisAlignment: .baseline,
      textBaseline: .alphabetic,
      children: [
        Row(
          spacing: 12,
          children: [
            VertcialNeonIndicator(
              color: AppColors.blue,
              height: 30,
              width: 8,
            ),
    
            Text(
              'Your Boxes',
              style: textTheme.titleLarge,
              textHeightBehavior: const TextHeightBehavior(
                leadingDistribution: TextLeadingDistribution.even,
              ),
            ),
          ],
        ),
    
        Text(
          'See All',
          style: textTheme.labelSmall,
          textHeightBehavior: const TextHeightBehavior(
            leadingDistribution: TextLeadingDistribution.even,
          ),
        )
      ],
    );
  }
}