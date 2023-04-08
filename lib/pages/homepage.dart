// ignore_for_file: unused_import, prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/zondicons.dart';
import 'package:indonesian_tourism/custom/theme.dart';
import 'package:indonesian_tourism/models/card_categories.dart';
import 'package:indonesian_tourism/models/categories.dart';
import 'package:indonesian_tourism/models/list_popular.dart';
import 'package:indonesian_tourism/pages/detail_page.dart';
import 'package:indonesian_tourism/widgets/card_category.dart';
import 'package:indonesian_tourism/widgets/card_destination.dart';

import '../widgets/bottom_navbar_item.dart';
import '../widgets/card_popular.dart';

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
            SizedBox(
              height: 22,
            ),
            Container(
              height: 143,
              child: ListView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics(),
                ),
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: edge),
                    child: Row(
                      children: [
                        CardDestination(
                          CardCategories(
                              imageUrl: 'assets/images/rinjani_mountain.png',
                              location: 'Lombok, Indonesia',
                              price: '\$48',
                              tittle: 'Rinjani Mountain'),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        CardDestination(
                          CardCategories(
                              imageUrl: 'assets/images/bromo_mountain.png',
                              location: 'Malang, Indonesia',
                              price: '\$80',
                              tittle: 'Bromo Mountain'),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        CardDestination(
                          CardCategories(
                              imageUrl: 'assets/images/toraja.png',
                              location: 'Sulawesi, Indonesia',
                              price: '\$30',
                              tittle: 'Toraja Land'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: edge,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Popular Destination',
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
            Padding(
              padding: EdgeInsets.only(
                top: 22,
                left: edge,
                right: edge,
              ),
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return DetailPage();
                          },
                        ),
                      );
                    },
                    child: CardPopular(
                      ListPopular(
                        imageUrl: 'assets/images/rinjani_mountain.png',
                        tittle: 'Rinjani Mountain',
                        location: 'Lombok, Indonesia',
                        price: '\$80',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  CardPopular(
                    ListPopular(
                      imageUrl: 'assets/images/pink_sand.png',
                      tittle: 'The Pink Beach',
                      location: 'Komodo Island,Indonesia',
                      price: '\$100',
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  CardPopular(
                    ListPopular(
                      imageUrl: 'assets/images/meru_tower.png',
                      tittle: 'Meru Tower',
                      location: 'Bali, Indonesia',
                      price: '\$90',
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  CardPopular(
                    ListPopular(
                      imageUrl: 'assets/images/toraja.png',
                      tittle: 'Toraja Land',
                      location: 'South Sulawesi, Indonesia',
                      price: '\$120',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      // floatingActionButton: Container(
      //   height: 100,
      //   width: 374,
      //   margin: EdgeInsets.symmetric(
      //     horizontal: edge,
      //   ),
      //   decoration: BoxDecoration(
      //     color: customColor,
      //     borderRadius: BorderRadius.circular(23),
      //   ),
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceAround,
      //     children: [
      //       BottomNavbarItem(
      //         imageUrl: 'assets/images/icon_home.png',
      //         isActive: true,
      //       ),
      //       BottomNavbarItem(
      //         imageUrl: 'assets/images/icon_love.png',
      //         isActive: false,
      //       ),
      //       BottomNavbarItem(
      //         imageUrl: 'assets/images/icon_cart.png',
      //         isActive: false,
      //       ),
      //       BottomNavbarItem(
      //         imageUrl: 'assets/images/icon_profilce.png',
      //         isActive: false,
      //       ),
      //     ],
      //   ),
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              PhosphorIcons.house_bold,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              PhosphorIcons.heart,
            ),
            label: 'Liked',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              PhosphorIcons.shopping_cart,
            ),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              PhosphorIcons.user,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
