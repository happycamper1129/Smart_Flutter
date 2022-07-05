import 'package:flutter/material.dart';

import 'package:jewelery_marketplace/config/colors.dart';

class UploadProductPohoto extends StatelessWidget {
  final String photo;
  const UploadProductPohoto({
    Key? key,
    required this.photo,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 400,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(7)),
          image: DecorationImage(
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(Colors.black38, BlendMode.lighten),
              image: AssetImage(
                photo,
              ))),
      child: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.add_a_photo,
            color: lightBtn,
            size: 60,
          )),
    );
  }
}
