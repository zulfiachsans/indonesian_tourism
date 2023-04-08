// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:indonesian_tourism/custom/theme.dart';
import 'package:indonesian_tourism/models/preview.dart';

class ImagePreview extends StatelessWidget {
  final Preview preview;
  ImagePreview(this.preview);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      height: 90,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: whiteColor,
        // ignore: prefer_const_literals_to_create_immutables
        image: DecorationImage(
          image: AssetImage(
            preview.imageUrl,
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
