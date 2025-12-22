import 'package:flutter/material.dart';
import 'package:islami/model/sura_model.dart';

class SuraItem extends StatelessWidget {
  SuraItem({super.key, required this.suraModel});
  SuraModel suraModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Image.asset("assets/images/sura_number.png", width: 52, height: 52),
            Text(
              "${suraModel.suraIndex}",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
        SizedBox(width: 20),
        Column(
          children: [
            Text(
              suraModel.nameEn,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Text(
              "${suraModel.verses} verses",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
        Spacer(),
        Text(
          suraModel.nameAr,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
