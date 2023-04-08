// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:indonesian_tourism/models/card_categories.dart';

import '../custom/theme.dart';

class CardDestination extends StatelessWidget {
  final CardCategories cardCategories;
  CardDestination(this.cardCategories);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 222,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
              image: AssetImage(
                cardCategories.imageUrl,
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 85),
          child: Container(
            height: 49,
            width: 222,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  const Color(0xFF4A0F0F).withOpacity(0.2),
                  const Color(0xFF000000).withOpacity(0.2),
                ],
                begin: const FractionalOffset(0.0, 0.8),
                end: const FractionalOffset(0.0, 0.1),
                stops: [1.0, 1.0],
                tileMode: TileMode.mirror,
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.only(
                left: 14,
                right: 14,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        cardCategories.tittle,
                        style: boldTextStyle.copyWith(
                          fontSize: 14,
                          color: whiteColor,
                        ),
                      ),
                      Text(
                        cardCategories.price,
                        style: boldTextStyle.copyWith(
                          fontSize: 14,
                          color: whiteColor,
                        ),
                      ),
                    ],
                  ),
                  // ignore: prefer_const_constructors
                  SizedBox(
                    height: 3,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            PhosphorIcons.map_pin,
                            size: 12,
                            color: whiteColor,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            cardCategories.location,
                            style: mediumTextStyle.copyWith(
                              fontSize: 12,
                              color: whiteColor,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        '/person',
                        style: mediumTextStyle.copyWith(
                          fontSize: 12,
                          color: whiteColor,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
