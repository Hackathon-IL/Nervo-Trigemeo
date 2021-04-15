import 'package:comunik_app/constants.dart';
import 'package:comunik_app/screens/home/home_screen.dart';
import 'package:comunik_app/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OrientationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Orientações',
          style: TextStyle(color: kPrimaryColor),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: kSecondaryBackgroundColor,
      ),
      body: Stack(
        children: [
          Column(
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
                child: Container(),
              )
            ],
          ),
          SingleChildScrollView(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                        'Com o intuito de facilitar a circulação e localização do paciente no ambiente hospitalar, saiba que o balcão de informações está à esquerda logo após a entrada principal.\nPara melhor convivência e manutenção da limpeza do hospital ressaltamos que é PROIBIDO:\n\n1. Entrar e circular sem identificação;\n2. Entrar com alimentos sem autorização específica;\n3. Fumar nas dependências do hospital;\n4. Evite transtornos com barulhos e ruídos, certifique o volume do seu aparelho celular.'),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        padding: EdgeInsets.all(20),
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: kPrimaryBackgroundColor,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(40),
                                bottomRight: Radius.circular(40)),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 10,
                                  offset: Offset(0, 0),
                                  color: kPrimaryColor.withOpacity(0.3))
                            ]),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Covid-19",
                              style: TextStyle(
                                  fontSize: getProportionateScreenWidth(20),
                                  color: kPrimaryColor,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SvgPicture.asset(
                                  'assets/images/use_mask.svg',
                                  height: 60,
                                ),
                                Text(
                                  'Use Máscara',
                                  style: TextStyle(
                                      fontSize: getProportionateScreenWidth(15),
                                      color: kPrimaryColor),
                                )
                              ],
                            ),
                            SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'Lave as Mãos',
                                  style: TextStyle(
                                      fontSize: getProportionateScreenWidth(15),
                                      color: kPrimaryColor),
                                ),
                                SvgPicture.asset(
                                  'assets/images/hand_wash.svg',
                                  height: 60,
                                ),
                              ],
                            ),
                            SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SvgPicture.asset(
                                  'assets/images/Clean_Disinfect.svg',
                                  height: 60,
                                ),
                                Text(
                                  'Limpe e Desinfete',
                                  style: TextStyle(
                                      fontSize: getProportionateScreenWidth(15),
                                      color: kPrimaryColor),
                                ),
                              ],
                            )
                          ],
                        )),
                    SizedBox(
                      height: 40,
                    ),
                    SizedBox(
                      width: getProportionateScreenWidth(270),
                      height: getProportionateScreenHeight(50),
                      child: FlatButton(
                          color: kPrimaryColor,
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => HomeScreen(),
                                ));
                          },
                          child: Text(
                            'Continuar',
                            style: TextStyle(
                                fontSize: getProportionateScreenWidth(15),
                                color: Colors.white),
                          )),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
