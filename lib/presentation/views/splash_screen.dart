import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:jibme/app/consts/colors.dart';
import 'package:jibme/app/consts/dimens.dart';
import 'package:jibme/gen/assets.gen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          spacing: AppDimens.mediumSpacing,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset(
                Assets.img.logo.path,
                width: 200,
                height: 200,
              ),
            ),

            Text(
              'جیـــبــ مــی',
              style: textTheme.headlineMedium,
            ),

            Text(
              'مـدیــریـت امـور مــالی شمــا',
              style: textTheme.bodyMedium,
            ),

            SizedBox(
              height: AppDimens.largeSpacing,
            ),
            
            SpinKitThreeBounce(
              color: AppColors.blue,
              size: 32.0,
            ),
          ],
        ),
      ),
    );
  }
}