import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/core/constants/colors/app_colors.dart';
import 'package:islami/core/constants/styles/app_styles.dart';
import 'package:islami/model/sura_model.dart';

class SuraDetailsScreen extends StatefulWidget {
  SuraDetailsScreen({super.key});
  static const String routeName = "suraDetailsScreen";

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var model = ModalRoute.of(context)?.settings.arguments as SuraModel;
    if (verses.isEmpty) {
      loadSuraFile(model.suraIndex);
    }
    return Scaffold(
      backgroundColor: Color(0xff202020),
      appBar: AppBar(
        iconTheme: IconThemeData(color: AppColors.primary),

        backgroundColor: Color(0xff202020),

        title: Text(model.nameEn, style: AppStyles.bodyStyle),
        centerTitle: true,
      ),
      body: Stack(
        alignment: AlignmentGeometry.topCenter,
        children: [
          Center(
            child: Image.asset(
              "assets/images/Soura Details Screen (1).png",
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Text(model.nameAr, style: AppStyles.bodyStyle),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 80.0, bottom: 50),
            child: ListView.builder(
              itemCount: verses.length,
              itemBuilder: (context, index) {
                return Center(
                  child: Text(
                    verses[index],
                    style: AppStyles.bodyStyle,
                    textAlign: TextAlign.center,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Future<void> loadSuraFile(int index) async {
    String suraFile = await rootBundle.loadString("assets/files/$index.txt");
    List<String> suraLines = suraFile.split("\n");
    verses = suraLines;
    print(verses);
    setState(() {});
  }
}
