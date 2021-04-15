import 'package:comunik_app/constants.dart';
import 'package:flutter/material.dart';

class DrawerTile extends StatelessWidget {
  final IconData icon;
  final String text;
  final Function press;

  const DrawerTile({Key key, this.icon, this.text, this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        height: 60,
        child: Row(
          children: [
            Icon(
              icon,
              size: 32,
              color: kPrimaryColor,
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              text,
              style: TextStyle(
                fontSize: 16,
                color: kPrimaryColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
