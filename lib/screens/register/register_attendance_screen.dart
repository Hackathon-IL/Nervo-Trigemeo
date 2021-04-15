import 'package:comunik_app/constants.dart';
import 'package:comunik_app/screens/register_successful/register_successful_screen.dart';
import 'package:comunik_app/size_config.dart';
import 'package:comunik_app/widgets/background.dart';
import 'package:flutter/material.dart';

class RegisterAttendanceScreen extends StatefulWidget {
  @override
  _RegisterAttendanceScreenState createState() =>
      _RegisterAttendanceScreenState();
}

class _RegisterAttendanceScreenState extends State<RegisterAttendanceScreen> {
  double _spacing = 20.0;

  var shadow = [
    BoxShadow(
        color: kPrimaryColor.withOpacity(0.4),
        blurRadius: 10,
        offset: Offset(2, 2)),
  ];

  String unidade = 'Unidade 1';
  List<String> unidades = [
    'Unidade 1',
    'Unidade 2',
    'Unidade 3',
    'Unidade 4',
  ];

  String setor = 'Setor 1';
  List<String> setores = [
    'Setor 1',
    'Setor 2',
    'Setor 3',
    'Setor 4',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kPrimaryBackgroundColor,
        appBar: AppBar(
          title: Text(
            'Cadastro Atendente',
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
                    Text("Unidade de Atendimento:"),
                    Container(
                      child: DropdownButton<String>(
                          value: unidade,
                          isExpanded: true,
                          onChanged: (String novoItemSelecionado) {
                            setState(() {
                              unidade = novoItemSelecionado;
                            });
                          },
                          items: unidades.map((String dropDownStringItem) {
                            return DropdownMenuItem<String>(
                              value: dropDownStringItem,
                              child: Text(dropDownStringItem),
                            );
                          }).toList()),
                    ),
                    SizedBox(height: _spacing),
                    Text("Setor em que trabalha:"),
                    Container(
                      child: DropdownButton<String>(
                          value: setor,
                          isExpanded: true,
                          onChanged: (String novoItemSelecionado) {
                            setState(() {
                              setor = novoItemSelecionado;
                            });
                          },
                          items: setores.map((String dropDownStringItem) {
                            return DropdownMenuItem<String>(
                              value: dropDownStringItem,
                              child: Text(dropDownStringItem),
                            );
                          }).toList()),
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
