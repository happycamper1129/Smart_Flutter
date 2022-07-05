import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jewelery_marketplace/config/colors.dart';
import 'package:jewelery_marketplace/config/styles.dart';

class ReseatPasswordScreen extends StatefulWidget {
  const ReseatPasswordScreen({Key? key}) : super(key: key);

  @override
  _ReseatPasswordScreenState createState() => _ReseatPasswordScreenState();
}

class _ReseatPasswordScreenState extends State<ReseatPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Password'),
      ),
      body: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20, top: 20),
              child: TextFormField(
                textAlignVertical: TextAlignVertical.center,
                onSaved: (val) {},
                onChanged: (value) {
                  setState(() {
                    // username = value;
                  });
                },
                enableInteractiveSelection: true,
                style: kInputStyle,
                textInputAction: TextInputAction.done,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 15, vertical: 14),
                  helperStyle: kInputHintStyle,
                  errorStyle: GoogleFonts.mulish(
                    color: Colors.red,
                    fontSize: 13.5,
                    fontWeight: FontWeight.w500,
                  ),
                  hintStyle: kInputHintStyle,
                  labelText: 'Current password',
                  labelStyle: kInputHintStyle,
                  fillColor: Color(0xFFEFEFEF),
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: BorderSide(color: Colors.black87, width: 1),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: BorderSide(color: Colors.black87, width: 1),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20, top: 20),
              child: TextFormField(
                textAlignVertical: TextAlignVertical.center,
                onSaved: (val) {},
                onChanged: (value) {
                  setState(() {
                    // username = value;
                  });
                },
                enableInteractiveSelection: true,
                style: kInputStyle,
                textInputAction: TextInputAction.done,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 15, vertical: 14),
                  helperStyle: kInputHintStyle,
                  errorStyle: GoogleFonts.mulish(
                    color: Colors.red,
                    fontSize: 13.5,
                    fontWeight: FontWeight.w500,
                  ),
                  hintStyle: kInputHintStyle,
                  labelText: 'New password',
                  labelStyle: kInputHintStyle,
                  fillColor: Color(0xFFEFEFEF),
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: BorderSide(color: Colors.black87, width: 1),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: BorderSide(color: Colors.black87, width: 1),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20, top: 20),
              child: TextFormField(
                textAlignVertical: TextAlignVertical.center,
                onSaved: (val) {},
                onChanged: (value) {
                  setState(() {
                    // username = value;
                  });
                },
                enableInteractiveSelection: true,
                style: kInputStyle,
                textInputAction: TextInputAction.done,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 15, vertical: 14),
                  helperStyle: kInputHintStyle,
                  errorStyle: GoogleFonts.mulish(
                    color: Colors.red,
                    fontSize: 13.5,
                    fontWeight: FontWeight.w500,
                  ),
                  hintStyle: kInputHintStyle,
                  labelText: 'Confirm password',
                  labelStyle: kInputHintStyle,
                  fillColor: Color(0xFFEFEFEF),
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: BorderSide(color: Colors.black87, width: 1),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: BorderSide(color: Colors.black87, width: 1),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'Forgot your password?',
                style: TextStyle(color: kColorPrimary, fontSize: 16),
              ),
            )
          ],
        ),
      ),
    );
  }
}
