import 'package:comunik_app/constants.dart';
import 'package:comunik_app/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Comunik',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primaryIconTheme: IconThemeData(color: kPrimaryColor),
            fontFamily: "Muli",
            scaffoldBackgroundColor: kPrimaryBackgroundColor,
            accentColorBrightness: Brightness.light,
            buttonTheme: ButtonTheme.of(context).copyWith(
                buttonColor: kPrimaryColor,
                textTheme: ButtonTextTheme.primary,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)))),
        home: SplashScreen());
  }
}
