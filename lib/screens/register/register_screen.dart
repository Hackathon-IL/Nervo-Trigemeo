import 'package:comunik_app/constants.dart';
import 'package:comunik_app/screens/register_successful/register_successful_screen.dart';
import 'package:comunik_app/size_config.dart';
import 'package:comunik_app/widgets/background.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  double _spacing = 20;
  var shadow = [
    BoxShadow(
        color: kPrimaryColor.withOpacity(0.4),
        blurRadius: 10,
        offset: Offset(2, 2)),
  ];
  bool deficiencia = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kPrimaryBackgroundColor,
        appBar: AppBar(
          title: Text(
            'Cadastro',
            style: TextStyle(color: kPrimaryColor),
          ),
          centerTitle: true,
          backgroundColor: kSecondaryBackgroundColor,
          elevation: 0,
        ),
        body: Stack(
          children: [
            Background(),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: _spacing,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: kPrimaryBackgroundColor,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: shadow),
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: TextFormField(
                        cursorColor: kPrimaryColor,
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          hintText: 'Nome',
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                        ),
                      ),
                    ),
                    SizedBox(height: _spacing),
                    Container(
                      decoration: BoxDecoration(
                          boxShadow: shadow,
                          color: kPrimaryBackgroundColor,
                          borderRadius: BorderRadius.circular(20)),
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: TextFormField(
                        cursorColor: kPrimaryColor,
                        keyboardType: TextInputType.datetime,
                        maxLength: 10,
                        decoration: InputDecoration(
                          hintText: 'Data de Nascimento',
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                        ),
                      ),
                    ),
                    SizedBox(height: _spacing),
                    Container(
                      decoration: BoxDecoration(
                          boxShadow: shadow,
                          color: kPrimaryBackgroundColor,
                          borderRadius: BorderRadius.circular(20)),
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: TextFormField(
                        cursorColor: kPrimaryColor,
                        keyboardType: TextInputType.number,
                        maxLength: 14,
                        decoration: InputDecoration(
                          hintText: 'CPF',
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                        ),
                      ),
                    ),
                    SizedBox(height: _spacing),
                    Container(
                      decoration: BoxDecoration(
                          boxShadow: shadow,
                          color: kPrimaryBackgroundColor,
                          borderRadius: BorderRadius.circular(20)),
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: TextFormField(
                        cursorColor: kPrimaryColor,
                        keyboardType: TextInputType.streetAddress,
                        decoration: InputDecoration(
                          hintText: 'Endereço',
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                        ),
                      ),
                    ),
                    SizedBox(height: _spacing),
                    Container(
                      decoration: BoxDecoration(
                          boxShadow: shadow,
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
                    SizedBox(height: _spacing),
                    Container(
                      decoration: BoxDecoration(
                          boxShadow: shadow,
                          color: kPrimaryBackgroundColor,
                          borderRadius: BorderRadius.circular(20)),
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: TextFormField(
                        obscureText: true,
                        cursorColor: kPrimaryColor,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          hintText: 'Senha',
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                        ),
                      ),
                    ),
                    SizedBox(height: _spacing),
                    Container(
                      decoration: BoxDecoration(
                          boxShadow: shadow,
                          color: kPrimaryBackgroundColor,
                          borderRadius: BorderRadius.circular(20)),
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: TextFormField(
                        obscureText: true,
                        cursorColor: kPrimaryColor,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          hintText: 'Confirmar Senha',
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                        ),
                      ),
                    ),
                    SizedBox(height: _spacing),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Possui alguma deficiência?'),
                        Switch(
                            activeColor: kPrimaryColor,
                            value: deficiencia,
                            onChanged: (value) {
                              setState(() {
                                deficiencia = value;
                              });
                            }),
                      ],
                    ),
                    // SizedBox(height: _spacing / 2),
                    if (deficiencia)
                      AnimatedContainer(
                        duration: Duration(milliseconds: 3000),
                        decoration: BoxDecoration(
                            boxShadow: shadow,
                            color: kPrimaryBackgroundColor,
                            borderRadius: BorderRadius.circular(20)),
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: TextFormField(
                          cursorColor: kPrimaryColor,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            hintText: 'Qual?',
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                          ),
                        ),
                      ),
                    SizedBox(
                      height: _spacing * 2,
                    ),
                    Center(
                      child: SizedBox(
                        width: double.infinity,
                        height: getProportionateScreenHeight(50),
                        child: FlatButton(
                            color: kPrimaryColor,
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        RegisterSuccessfulScreen(),
                                  ));
                            },
                            child: Text(
                              'Cadastrar',
                              style: TextStyle(
                                  fontSize: getProportionateScreenWidth(15),
                                  color: Colors.white),
                            )),
                      ),
                    ),
                    SizedBox(
                      height: _spacing * 2,
                    ),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
