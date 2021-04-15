import 'package:comunik_app/constants.dart';
import 'package:comunik_app/screens/login/login_screen.dart';
import 'package:comunik_app/screens/splash/components/splash_content.dart';
import 'package:comunik_app/size_config.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Container(
          color: kPrimaryBackgroundColor,
          height: double.infinity,
          width: double.infinity,
          child: SafeArea(
              child: Column(
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: kSecondaryBackgroundColor,
                      borderRadius:
                          BorderRadius.only(bottomLeft: Radius.circular(200))),
                  child: SplashContent(
                    slogan:
                        'Bem Vindo ao Comunik!\nPromovendo a inclusão através da comunicação!',
                    text: 'Vamos começar?',
                    image: 'assets/images/welcome.svg',
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(20)),
                  child: Column(
                    children: [
                      Spacer(),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.center,
                      //   children: List.generate(
                      //       splashData.length, (index) => buildDot(index)),
                      // ),
                      // Spacer(
                      //   flex: 2,
                      // ),
                      SizedBox(
                        width: getProportionateScreenWidth(250),
                        height: getProportionateScreenHeight(50),
                        child: FlatButton(
                            color: kPrimaryColor,
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => LoginScreen(),
                                  ));
                            },
                            child: Text(
                              'Começar!',
                              style: TextStyle(
                                  fontSize: getProportionateScreenWidth(15),
                                  color: Colors.white),
                            )),
                      ),
                      Spacer(
                        flex: 1,
                      )
                    ],
                  ),
                ),
              )
            ],
          ))),
    );
  }
}
