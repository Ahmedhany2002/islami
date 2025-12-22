import 'package:flutter/material.dart';
import 'package:islami/core/constants/colors/app_colors.dart';
import 'package:islami/screens/home/tabs/hadith_tab.dart';
import 'package:islami/screens/home/tabs/quran_tab.dart';
import 'package:islami/screens/home/tabs/radio_tab.dart';
import 'package:islami/screens/home/tabs/sebha_tab.dart';
import 'package:islami/screens/home/tabs/time_tab.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});
  static const String routeName = "Home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedtap = 0;
  List<Widget> tabs = [
    QuranTab(),
    HadithTab(),
    SebhaTab(),
    RadioTab(),
    TimeTab(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          tabs[selectedtap],
          Image.asset("assets/images/islami_top.png"),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.primary,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black,
        currentIndex: selectedtap,
        onTap: (value) {
          selectedtap = value;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(
            // backgroundColor: AppColors.primary,
            icon: selectedtap == 0
                ? Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: ImageIcon(AssetImage("assets/images/ic_quran.png")),
                  )
                : ImageIcon(AssetImage("assets/images/ic_quran.png")),
            label: "Quran",
          ),
          BottomNavigationBarItem(
            icon: selectedtap == 1
                ? Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: ImageIcon(AssetImage("assets/images/ic_hadith.png")),
                  )
                : ImageIcon(AssetImage("assets/images/ic_hadith.png")),
            label: "Hadith",
          ),
          BottomNavigationBarItem(
            icon: selectedtap == 2
                ? Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: ImageIcon(AssetImage("assets/images/ic_sebha.png")),
                  )
                : ImageIcon(AssetImage("assets/images/ic_sebha.png")),
            label: "Sebhs",
          ),
          BottomNavigationBarItem(
            icon: selectedtap == 3
                ? Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: ImageIcon(AssetImage("assets/images/ic_radio.png")),
                  )
                : ImageIcon(AssetImage("assets/images/ic_radio.png")),
            label: "Radio",
          ),
          BottomNavigationBarItem(
            icon: selectedtap == 4
                ? Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: ImageIcon(AssetImage("assets/images/ic_time.png")),
                  )
                : ImageIcon(AssetImage("assets/images/ic_time.png")),
            label: "Time",
          ),
        ],
      ),
    );
  }
}
