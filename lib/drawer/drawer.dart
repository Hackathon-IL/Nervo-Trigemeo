import 'package:comunik_app/constants.dart';
import 'package:comunik_app/drawer/drawer_tile.dart';
import 'package:comunik_app/screens/attendance/attendance_screen.dart';
import 'package:comunik_app/screens/followup/follou_up_screen.dart';
import 'package:comunik_app/screens/home/home_screen.dart';
import 'package:comunik_app/screens/login/login_screen.dart';
import 'package:comunik_app/size_config.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: kPrimaryBackgroundColor,
        child: Stack(
          children: [
            Column(
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    decoration: BoxDecoration(
                        color: kSecondaryBackgroundColor,
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(200))),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                      // color: kPrimaryBackgroundColor,
                      ),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // physics: NeverScrollableScrollPhysics(),
                children: [
                  Spacer(),
                  Text(
                    "COMUNIK",
                    style: TextStyle(
                        fontSize: getProportionateScreenWidth(36),
                        color: kPrimaryColor,
                        fontWeight: FontWeight.bold),
                  ),
                  Divider(
                    color: kPrimaryColor,
                  ),
                  DrawerTile(
                      icon: Icons.home_outlined,
                      text: 'Início',
                      press: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomeScreen(),
                            ));
                      }),
                  DrawerTile(
                      icon: Icons.location_on_outlined,
                      text: 'Unidades Próximas',
                      press: () {}),
                  DrawerTile(
                      icon: Icons.chat_outlined,
                      text: 'Atendimento',
                      press: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AttendanceScreen(),
                            ));
                      }),
                  DrawerTile(
                      icon: Icons.assignment_ind_outlined,
                      text: 'Acompanhamento',
                      press: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => FollowUpScreen(),
                            ));
                      }),
                  DrawerTile(
                      icon: Icons.account_circle_outlined,
                      text: 'Perfil',
                      press: () {}),
                  DrawerTile(
                      icon: Icons.help_outline, text: 'Ajuda', press: () {}),
                  DrawerTile(
                      icon: Icons.exit_to_app,
                      text: 'Sair',
                      press: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginScreen(),
                            ));
                      }),
                  Spacer(
                    flex: 4,
                  ),
                  Text(
                    'Nervo Trigemeo',
                    style: TextStyle(color: Colors.black.withOpacity(0.4)),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
