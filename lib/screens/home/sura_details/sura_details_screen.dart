import 'package:flutter/material.dart';
import 'package:islami/core/constants/colors/app_colors.dart';
import 'package:islami/core/constants/styles/app_styles.dart';
import 'package:islami/model/sura_model.dart';

class SuraDetailsScreen extends StatelessWidget {
  SuraDetailsScreen({super.key});
  static const String routeName = "suraDetailsScreen";

  @override
  Widget build(BuildContext context) {
    var model = ModalRoute.of(context)?.settings.arguments as SuraModel;
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
              itemCount: 100,
              itemBuilder: (context, index) {
                return Center(
                  child: Text(model.nameAr, style: AppStyles.bodyStyle),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
