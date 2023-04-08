// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, duplicate_ignore, dead_code, sized_box_for_whitespace, sort_child_properties_last, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/zondicons.dart';
import 'package:indonesian_tourism/models/preview.dart';
import 'package:indonesian_tourism/widgets/image_preview.dart';

import '../custom/theme.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  bool isClicked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Image.asset(
              'assets/images/rinjani_mountain.png',
              width: MediaQuery.of(context).size.width,
              height: 350,
              fit: BoxFit.cover,
            ),
            ListView(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                SizedBox(
                  height: 328,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                    color: whiteColor,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 21,
                      left: edge,
                      right: edge,
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Text(
                                  'Rinjani Mountain',
                                  style: boldTextStyle.copyWith(
                                    fontSize: 18,
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
                                    ),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Text(
                                      'Lombok, Indonesia',
                                      style: mediumTextStyle.copyWith(
                                        fontSize: 14,
                                        color: primaryColor,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Text(
                                  '\$48',
                                  style: semiBoldTextStyle.copyWith(
                                    fontSize: 24,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  '/Person',
                                  style: mediumTextStyle.copyWith(
                                    fontSize: 14,
                                    color: greyColor,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        Text(
                          'The mighty Rinjani mountain of Gunung Rinjani is a massive volcano which towers over the island of Lombok. A climb to the top is one of the most exhilarating experiences you can have in Indonesia. At 3,726 meters tall, Gunung Rinjani is the second highest mountain in Indonesia...',
                          style: regularTextStyle.copyWith(
                            fontSize: 14,
                            color: greyColor,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Preview',
                              style: boldTextStyle.copyWith(
                                fontSize: 18,
                              ),
                            ),
                            Container(
                              width: 55,
                              height: 30,
                              padding: EdgeInsets.all(7),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
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
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/images/stars.png',
                                    width: 14,
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Text(
                                    '4,8',
                                    style: mediumTextStyle.copyWith(
                                        fontSize: 14, color: greyColor),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 90,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: edge),
                            child: ImagePreview(
                              Preview(
                                imageUrl: 'assets/images/preview_one.png',
                              ),
                            ),
                          ),
                          ImagePreview(
                            Preview(
                              imageUrl: 'assets/images/preview_two.png',
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          ImagePreview(
                            Preview(
                              imageUrl: 'assets/images/preview_three.png',
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          ImagePreview(
                            Preview(
                              imageUrl: 'assets/images/preview_four.png',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: edge),
                  height: 50,
                  width: MediaQuery.of(context).size.width - (2 * edge),
                  child: ElevatedButton(
                    onPressed: () {
                      print('Pesanan berhasil di buat');
                    },
                    child: Text(
                      'Book Now',
                      style: semiBoldTextStyle.copyWith(
                        fontSize: 18,
                        color: whiteColor,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: primaryColor,
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: edge,
                vertical: 30,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: 42,
                      height: 42,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
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
                        PhosphorIcons.arrow_left,
                        size: 24,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        isClicked = !isClicked;
                      });
                    },
                    child: Image.asset(
                      isClicked
                          ? 'assets/images/btn_wishlist_filed.png'
                          : 'assets/images/btn_wishlist.png',
                      width: 42,
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
