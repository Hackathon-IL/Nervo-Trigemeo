import 'package:comunik_app/constants.dart';
import 'package:comunik_app/screens/login/login_screen.dart';
import 'package:comunik_app/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RegisterSuccessfulScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryBackgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 2,
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: kSecondaryBackgroundColor,
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(200))),
              child: Column(
                children: [
                  Spacer(),
                  Text(
                    "SUCESSO!",
                    style: TextStyle(
                        fontSize: getProportionateScreenWidth(36),
                        color: kPrimaryColor,
                        fontWeight: FontWeight.bold),
                  ),
                  Text('Sua conta foi criada!'),
                  Spacer(),
                  Expanded(
                      flex: 4,
                      child: SvgPicture.asset('assets/images/welcome.svg')),
                  Spacer()
                ],
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(60),
                child: SizedBox(
                  width: double.infinity,
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
              ),
            ),
          ),
        ],
      ),
    );
  }
}
