import 'package:comunik_app/constants.dart';
import 'package:comunik_app/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key key,
    this.slogan,
    this.text,
    this.image,
  }) : super(key: key);

  final String slogan, text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Text(
          "COMUNIK",
          style: TextStyle(
              fontSize: getProportionateScreenWidth(36),
              color: kPrimaryColor,
              fontWeight: FontWeight.bold),
        ),
        Spacer(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            slogan,
            textAlign: TextAlign.center,
          ),
        ),
        Spacer(
            // flex: 2,
            ),
        SvgPicture.asset(
          image,
          height: getProportionateScreenHeight(265),
          // width: getProportionateScreenWidth(235),
        ),
        SizedBox(
          height: 50,
        )
      ],
    );
  }
}
