import 'package:comunik_app/constants.dart';
import 'package:comunik_app/screens/orientation/orientation_screen.dart';
import 'package:comunik_app/screens/register/register_attendance_screen.dart';
import 'package:comunik_app/screens/register/register_screen.dart';
import 'package:comunik_app/size_config.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  List<String> linguas = [
    'Português Brasileiro',
    'Espanhol',
    'Haitiano',
    'Guarani Kaiowá',
    'Inglês',
    'Libras',
  ];

  String lingua = 'Português Brasileiro';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: kPrimaryBackgroundColor,
      child: Form(
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: kSecondaryBackgroundColor,
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(100))),
                child: SafeArea(
                    child: Column(
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
                    Text("Escolha sua língua:"),
                    Container(
                      child: DropdownButton<String>(
                          value: lingua,
                          onChanged: (String novoItemSelecionado) {
                            setState(() {
                              lingua = novoItemSelecionado;
                            });
                          },
                          items: linguas.map((String dropDownStringItem) {
                            return DropdownMenuItem<String>(
                              value: dropDownStringItem,
                              child: Text(dropDownStringItem),
                            );
                          }).toList()),
                    ),
                    Spacer(),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                          color: kPrimaryBackgroundColor,
                          borderRadius: BorderRadius.circular(20)),
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: TextFormField(
                        cursorColor: kPrimaryColor,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          hintText: 'E-mail',
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                          color: kPrimaryBackgroundColor,
                          borderRadius: BorderRadius.circular(20)),
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: TextFormField(
                        cursorColor: kPrimaryColor,
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: 'Senha',
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                        ),
                      ),
                    ),
                    Spacer(
                      flex: 2,
                    ),
                  ],
                )),
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  Spacer(),
                  SizedBox(
                    width: getProportionateScreenWidth(200),
                    height: getProportionateScreenHeight(50),
                    child: FlatButton(
                        color: kPrimaryColor,
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => OrientationScreen(),
                              ));
                        },
                        child: Text(
                          'Login',
                          style: TextStyle(
                              fontSize: getProportionateScreenWidth(15),
                              color: Colors.white),
                        )),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  FlatButton(
                    child: Text(
                      'Cadastre-se',
                      style: TextStyle(color: kPrimaryColor),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RegisterScreen(),
                          ));
                    },
                  ),
                  FlatButton(
                    child: Text(
                      'Cadastre-se como Atendente',
                      style: TextStyle(color: kPrimaryColor),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RegisterAttendanceScreen(),
                          ));
                    },
                  ),
                  Spacer(
                    flex: 2,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
