// ignore_for_file: unused_import, prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/zondicons.dart';
import 'package:indonesian_tourism/custom/theme.dart';
import 'package:indonesian_tourism/models/categories.dart';
import 'package:indonesian_tourism/widgets/card_category.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            SizedBox(
              height: 44,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: edge),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: whiteColor,
                      // ignore: prefer_const_literals_to_create_immutables
                      boxShadow: [
                        BoxShadow(
                          color: greyColor,
                          offset: Offset(0.0, 1.0),
                          blurRadius: 1.0,
                        ),
                      ],
                    ),
                    child: Icon(
                      PhosphorIcons.text_align_left,
                      size: 32,
                      color: blackColor.withOpacity(0.3),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Current Location',
                        style: regularTextStyle.copyWith(
                          fontSize: 14,
                          color: greyColor,
                        ),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Row(
                        children: [
                          Iconify(
                            Zondicons.location,
                            color: primaryColor,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            'Denpasar, Bali',
                            style: mediumTextStyle.copyWith(
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: primaryColor.withOpacity(0.3),
                    ),
                    child: Image.asset(
                      'assets/images/profile.png',
                      width: 24,
                      height: 24,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 36,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: edge,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Category',
                    style: boldTextStyle.copyWith(
                      fontSize: 18,
                      color: blackColor,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        'View All',
                        style: regularTextStyle.copyWith(
                          fontSize: 14,
                          color: primaryColor,
                        ),
                      ),
                      Icon(
                        PhosphorIcons.arrow_right,
                        size: 16,
                        color: primaryColor,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 22,
            ),
            Container(
              height: 55,
              child: ListView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics()),
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: edge),
                    child: Row(
                      children: [
                        CardCategory(
                          Categories(
                            name: 'Mountain',
                            imageUrl: 'assets/images/icon_one.png',
                          ),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        CardCategory(
                          Categories(
                            name: 'Waterfall',
                            imageUrl: 'assets/images/icon_two.png',
                          ),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        CardCategory(
                          Categories(
                            name: 'River',
                            imageUrl: 'assets/images/icon_three.png',
                          ),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        CardCategory(
                          Categories(
                            name: 'Foresst',
                            imageUrl: 'assets/images/icon_four.png',
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
