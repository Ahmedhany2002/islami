import 'package:flutter/material.dart';
import 'package:islami/screens/home/home_screen.dart';
import 'package:islami/screens/home/sura_details/sura_details_screen.dart';
import 'package:islami/screens/introduction_screen.dart';

void main() {
  runApp(Islami());
}

// comment
class Islami extends StatelessWidget {
  const Islami({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: IntroductionScreens.routeName,
      routes: {
        IntroductionScreens.routeName: (context) => IntroductionScreens(),
        HomeScreen.routeName: (context) => HomeScreen(),
        SuraDetailsScreen.routeName: (context) => SuraDetailsScreen(),
      },
    );
  }
}
