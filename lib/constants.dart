import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFF8252CC);
const kSecondaryColor = Color(0xFFD4B9EC);
const kPrimaryBackgroundColor = Color(0xFFFFF3FF);
const kSecondaryBackgroundColor = Color(0xFFF6E2FD);

ThemeData theme(context) {
  return ThemeData(
      primaryIconTheme: IconThemeData(color: kPrimaryColor),
      fontFamily: "Muli",
      scaffoldBackgroundColor: kPrimaryBackgroundColor,
      accentColorBrightness: Brightness.light,
      buttonTheme: ButtonTheme.of(context).copyWith(
          buttonColor: kPrimaryColor,
          textTheme: ButtonTextTheme.primary,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))));
}
