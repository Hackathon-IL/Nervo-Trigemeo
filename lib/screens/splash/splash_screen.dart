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
  int currentPage = 0;

  List<Map<String, String>> splashData = [
    {
      "text": "Bem Vindo ao Comunik! \nVamos começar!",
      "image": "assets/images/welcome.svg"
    },
    {
      "text":
          "We help people connect with store \naround United State of America",
      "image": "assets/images/confirmed.svg"
    },
    {
      "text": "We show the easy way to shop. \nJust stay at home with us",
      "image": "assets/images/chat.svg"
    },
  ];
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
                  decoration: BoxDecoration(
                      color: kSecondaryBackgroundColor,
                      borderRadius:
                          BorderRadius.only(bottomLeft: Radius.circular(200))),
                  child: PageView.builder(
                    onPageChanged: (value) {
                      setState(() {
                        currentPage = value;
                      });
                    },
                    itemCount: splashData.length,
                    itemBuilder: (context, index) => SplashContent(
                      text: splashData[index]['text'],
                      image: splashData[index]['image'],
                    ),
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                            splashData.length, (index) => buildDot(index)),
                      ),
                      Spacer(
                        flex: 2,
                      ),
                      SizedBox(
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
                              'Continuar',
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

  AnimatedContainer buildDot(int index) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
          color: currentPage == index ? kPrimaryColor : Color(0xFFD8D8D8),
          borderRadius: BorderRadius.circular(3)),
    );
  }
}
