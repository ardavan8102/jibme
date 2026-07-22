import 'package:flutter/material.dart';
import 'package:jibme/app/consts/colors.dart';
import 'package:jibme/app/consts/dimens.dart';
import 'package:jibme/presentation/widgets/button/icon_text_button.dart';
import 'package:jibme/presentation/widgets/card/money_box_card.dart';
import 'package:jibme/presentation/widgets/card/total_blanace.dart';
import 'package:jibme/presentation/widgets/main/home_appbar.dart';
import 'package:jibme/presentation/widgets/rows/section_header.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(AppDimens.screenContentPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Main AppBar
              const MainAppBar(),

              SizedBox(height: AppDimens.xLargeSpacing),

              // Total Balance Card
              TotalBalanceCard(),

              SizedBox(height: AppDimens.largeSpacing),

              // Buttons
              Row(
                spacing: AppDimens.mediumSpacing,
                children: [

                  Flexible(
                    child: IconTextButton(
                      bgColor: AppColors.blue,
                      fgColor: AppColors.iceWhite,
                      text: 'Top Up',
                      icon: Icons.add,
                    ),
                  ),

                  Flexible(
                    child: IconTextButton(
                      bgColor: AppColors.darkBackground.withValues(alpha: .4),
                      fgColor: AppColors.iceWhite,
                      text: 'Withdraw',
                      icon: Icons.remove,
                    ),
                  ),

                  Flexible(
                    child: IconTextButton(
                      bgColor: AppColors.darkBackground.withValues(alpha: .4),
                      fgColor: AppColors.iceWhite,
                      text: 'Transfer',
                      icon: Icons.wallet_outlined,
                    ),
                  ),

                  Flexible(
                    child: IconTextButton(
                      bgColor: AppColors.darkBackground.withValues(alpha: .4),
                      fgColor: AppColors.iceWhite,
                      text: 'More',
                      icon: Icons.more_vert_outlined,
                    ),
                  ),

                ],
              ),
            
              // Money Boxes

              // Section Header

              SizedBox(height: AppDimens.xLargeSpacing),

              SectionHeaderWithButton(
                buttonText: 'See All',
                title: 'Your Boxes',
                onPress: () {
                  
                },
              ),

              SizedBox(height: AppDimens.largeSpacing),

              // Box Cards
              SizedBox(
                height: size.height * .16,
                width: size.width,
                child: ListView(
                  scrollDirection: .horizontal,
                  children: [
                    // Card 1
                    MoneyBoxListViewCard(
                      balancePrice: '\$ 9,865.00',
                      boxName: 'Savings',
                      boxNameColor: AppColors.emeraldGreen,
                    ),

                    // Card 2
                    MoneyBoxListViewCard(
                      balancePrice: '\$ 560.89',
                      boxName: 'Transport',
                      boxNameColor: AppColors.indigo,
                    ),

                    // Card 3
                    MoneyBoxListViewCard(
                      balancePrice: '\$ 1,899.20',
                      boxName: 'Forex',
                      boxNameColor: AppColors.yellow,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}