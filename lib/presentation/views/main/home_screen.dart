import 'package:flutter/material.dart';
import 'package:jibme/app/consts/colors.dart';
import 'package:jibme/app/consts/dimens.dart';
import 'package:jibme/presentation/widgets/button/color_text_button.dart';
import 'package:jibme/presentation/widgets/button/glass_text_button.dart';
import 'package:jibme/presentation/widgets/cards/banner_tile_card.dart';
import 'package:jibme/presentation/widgets/cards/home_glass_card.dart';
import 'package:jibme/presentation/widgets/cards/stats_card.dart';
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

            SizedBox(height: AppDimens.largeSpacing),

            // create Wallet banner
            InfoBannerCard(
              title: 'مدیـریت کـیف پـول‌هـا',
              subtitle: '6 کیـف پـول فعـال',
              icon: Icons.wallet_outlined,
              onTap: () {
                // Navigate...
              },
            ),

            SizedBox(height: AppDimens.largeSpacing),

            // Stat Cards
            Expanded(
              child: GridView(
                padding: EdgeInsets.zero,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: AppDimens.mediumSpacing,
                  crossAxisSpacing: AppDimens.mediumSpacing,
                  childAspectRatio: .85,
                ),
                children: [
                  DashboardStatCard(
                    backgroundColor: const Color(0xff0F172A).withValues(alpha: 0.5),
                    icon: Icons.shopping_cart_outlined,
                    title: 'خریـد روزمـره',
                    subtitle: 'خوراکی و نوشیدنی',
                    value: '1.300.000',
                    badgeText: '5.9%',
                    badgePositive: false,
                    onTap: () {},
                  ),

                  DashboardStatCard(
                    backgroundColor: const Color(0xff0F172A).withValues(alpha: 0.5),
                    icon: Icons.local_taxi_outlined,
                    title: 'حمـل و نقـل',
                    subtitle: 'رفت و آمد',
                    value: '11.500.000',
                    badgeText: '25.2%',
                    badgePositive: true,
                    onTap: () {},
                  ),

                  DashboardStatCard(
                    backgroundColor: const Color(0xff0F172A).withValues(alpha: 0.5),
                    icon: Icons.account_balance_wallet_outlined,
                    title: 'خریـد روزمـره',
                    subtitle: 'خوراکی و نوشیدنی',
                    value: '1.300.000',
                    badgeText: '5.9%',
                    badgePositive: true,
                    onTap: () {},
                  ),

                  DashboardStatCard(
                    backgroundColor: const Color(0xff0F172A).withValues(alpha: 0.5),
                    icon: Icons.account_balance_wallet_outlined,
                    title: 'خریـد روزمـره',
                    subtitle: 'خوراکی و نوشیدنی',
                    value: '1.300.000',
                    badgeText: '5.9%',
                    badgePositive: true,
                    onTap: () {},
                  ),

                  DashboardStatCard(
                    backgroundColor: const Color(0xff0F172A).withValues(alpha: 0.5),
                    icon: Icons.account_balance_wallet_outlined,
                    title: 'خریـد روزمـره',
                    subtitle: 'خوراکی و نوشیدنی',
                    value: '1.300.000',
                    badgeText: '5.9%',
                    badgePositive: true,
                    onTap: () {},
                  ),

                  DashboardStatCard(
                    backgroundColor: const Color(0xff0F172A).withValues(alpha: 0.5),
                    icon: Icons.account_balance_wallet_outlined,
                    title: 'خریـد روزمـره',
                    subtitle: 'خوراکی و نوشیدنی',
                    value: '1.300.000',
                    badgeText: '5.9%',
                    badgePositive: true,
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}