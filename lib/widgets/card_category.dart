// ignore_for_file: prefer_const_constructors_in_immutables, use_key_in_widget_constructors

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:indonesian_tourism/models/categories.dart';

import '../custom/theme.dart';

class CardCategory extends StatelessWidget {
  final Categories cardCategory;
  CardCategory(this.cardCategory);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: customColor,
      ),
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          Image.asset(
            cardCategory.imageUrl,
            width: 26,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            cardCategory.name,
            style: mediumTextStyle.copyWith(
              fontSize: 14,
              color: blackColor,
            ),
          ),
        ],
      ),
    );
  }
}
