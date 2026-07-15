import 'package:flutter/material.dart';
import 'package:jibme/app/consts/colors.dart';
import 'package:jibme/app/consts/dimens.dart';
import 'package:jibme/presentation/widgets/button/color_text_button.dart';
import 'package:jibme/presentation/widgets/button/glass_text_button.dart';
import 'package:jibme/presentation/widgets/cards/home_glass_card.dart';
import 'package:jibme/presentation/widgets/main/home_appbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        padding: EdgeInsets.fromLTRB(
          AppDimens.screenContentPadding,
          AppDimens.screenContentPadding * 2,
          AppDimens.screenContentPadding,
          AppDimens.screenContentPadding,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppColors.scaffoldBackground,
              AppColors.blue,
            ],
            begin: .bottomCenter,
            end: .topCenter,
            stops: [0.0, 1],
          )
        ),
        child: Column(
          children: [
      
            // Appbar
            HomeAppBar(),

            SizedBox(height: AppDimens.xLargeSpacing),

            // Glass Card
            HomeScreenGlassCard(),

            SizedBox(height: AppDimens.largeSpacing),
            
            // tranciption buttons
            Row(
              spacing: AppDimens.mediumSpacing,
              children: [
                Expanded(
                  child: GlassTextButton(
                    text: 'بـرداشت',
                    onTap: () {
                      
                    },
                  ),
                ),

                Expanded(
                  child: ColorfulTextButton(
                    color: AppColors.blue,
                    text: 'واریـز',
                    onTap: () {
                      
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}