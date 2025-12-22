import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:islami/core/constants/colors/app_colors.dart';
import 'package:islami/core/constants/styles/app_styles.dart';
import 'package:islami/screens/home/home_screen.dart';

class IntroductionScreens extends StatelessWidget {
  IntroductionScreens({super.key});
  static const String routeName = "IntroScreen";
  var listPagesViewModel = [
    PageViewModel(
      titleWidget: Text("Welcome To Islmi App", style: AppStyles.titleStyle),
      body: "",
      image: Image.asset("assets/images/intro_1.png"),
    ),

    PageViewModel(
      titleWidget: Text("Welcome To Islmi App", style: AppStyles.titleStyle),

      bodyWidget: Text(
        textAlign: TextAlign.center,
        "We Are Very Excited To Have You In Our Community",
        style: AppStyles.bodyStyle,
      ),
      image: Image.asset("assets/images/intro_2.png"),
    ),
    PageViewModel(
      titleWidget: Text("Reading the Quran", style: AppStyles.titleStyle),

      bodyWidget: Text(
        textAlign: TextAlign.center,
        "Read, and your Lord is the Most Generous",
        style: AppStyles.bodyStyle,
      ),
      image: Image.asset("assets/images/intro_3.png"),
    ),
    PageViewModel(
      titleWidget: Text("Bearish", style: AppStyles.titleStyle),

      bodyWidget: Text(
        textAlign: TextAlign.center,
        "Praise the name of your Lord, the Most High",
        style: AppStyles.bodyStyle,
      ),
      image: Image.asset("assets/images/intro_4.png"),
    ),
    PageViewModel(
      titleWidget: Text("Holy Quran Radio", style: AppStyles.titleStyle),

      bodyWidget: Text(
        textAlign: TextAlign.center,
        "You can listen to the Holy Quran Radio through the application for free and easily",
        style: AppStyles.bodyStyle,
      ),
      image: Image.asset("assets/images/intro_5.png"),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      globalBackgroundColor: Color(0xff202020),
      bodyPadding: EdgeInsets.only(top: 220),
      globalHeader: Image.asset("assets/images/islami_top.png"),
      pages: listPagesViewModel,
      showNextButton: true,
      next: Icon(Icons.arrow_forward, color: AppColors.primary),
      showBackButton: true,
      dotsDecorator: DotsDecorator(
        color: AppColors.grey,
        activeColor: AppColors.primary,
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(12),
        ),
        activeSize: Size(18, 7),
      ),
      back: Icon(Icons.arrow_back, color: AppColors.primary),
      done: Text("Done", style: AppStyles.bodyStyle),
      onDone: () {
        Navigator.pushNamed(context, HomeScreen.routeName);
      },
      showSkipButton: true,
      skip: Text("Skip", style: AppStyles.bodyStyle),
      onSkip: () {
        Navigator.pushNamed(context, HomeScreen.routeName);
      },
    );
  }
}
