import 'package:comunik_app/constants.dart';
import 'package:comunik_app/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Comunik',
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: [
          const Locale('pt', 'BR'),
          const Locale('en', 'US'),
          const Locale('es', 'VE'),
        ],
        debugShowCheckedModeBanner: false,
        theme: theme(context),
        home: SplashScreen());
  }
}
