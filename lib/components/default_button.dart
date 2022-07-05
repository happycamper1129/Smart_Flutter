import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jewelery_marketplace/config/colors.dart';

class DefaultButton extends StatelessWidget {
  final String title;
  final VoidCallback press;
  const DefaultButton({required this.title, required this.press});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Padding(
        padding:
            const EdgeInsets.only(left: 20.0, right: 20.0, top: 25, bottom: 15),
        // ignore: deprecated_member_use
        child: FlatButton(
          height: 50,
          onPressed: press,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
          color: kColorPrimary,
          child: Text(
            title,
            style: GoogleFonts.mulish(
              color: Colors.white,
              fontSize: 14.0,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}
