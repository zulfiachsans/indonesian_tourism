// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/zondicons.dart';
import 'package:indonesian_tourism/models/list_popular.dart';
import 'package:indonesian_tourism/widgets/card_destination.dart';

import '../custom/theme.dart';

class CardPopular extends StatelessWidget {
  final ListPopular listPopular;
  CardPopular(this.listPopular);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      padding: EdgeInsets.only(
        left: 10,
        right: 10,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: whiteColor,
        boxShadow: [
          BoxShadow(
            color: greyColor,
            offset: Offset(0.0, 1.0),
            blurRadius: 1.0,
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 95,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: whiteColor,
              // ignore: prefer_const_literals_to_create_immutables
              image: DecorationImage(
                image: AssetImage(
                  listPopular.imageUrl,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            width: 13,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  listPopular.tittle,
                  style: boldTextStyle.copyWith(
                    fontSize: 14,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Iconify(
                      Zondicons.location,
                      color: primaryColor,
                      size: 12,
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      listPopular.location,
                      style: mediumTextStyle.copyWith(
                        fontSize: 12,
                        color: primaryColor,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'This exceptional beach gets its striking \n color from microscopic animals called...',
                  style: mediumTextStyle.copyWith(
                    fontSize: 9,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Text(
                      listPopular.price,
                      style: boldTextStyle.copyWith(
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      '/Person',
                      style: mediumTextStyle.copyWith(
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
