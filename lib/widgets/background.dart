import 'package:comunik_app/constants.dart';
import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 3,
          child: Container(
            decoration: BoxDecoration(
                color: kSecondaryBackgroundColor,
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(200))),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
              // color: kPrimaryBackgroundColor,
              ),
        )
      ],
    );
  }
}
