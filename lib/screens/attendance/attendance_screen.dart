import 'package:comunik_app/constants.dart';
import 'package:comunik_app/drawer/drawer.dart';
import 'package:comunik_app/models/setor.dart';
import 'package:comunik_app/models/unidade.dart';
import 'package:comunik_app/screens/chat/chat_screen.dart';
import 'package:comunik_app/size_config.dart';
import 'package:comunik_app/widgets/background.dart';
import 'package:flutter/material.dart';

class AttendanceScreen extends StatefulWidget {
  @override
  _AttendanceScreenState createState() => _AttendanceScreenState();
}

class _AttendanceScreenState extends State<AttendanceScreen> {
  double _spacing = 20;

  var unidade = unidades.first;
  var especialidade = setores.first;
  bool isForYou = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Página de Atendimento',
          style: TextStyle(color: kPrimaryColor),
        ),
        elevation: 0,
        backgroundColor: kSecondaryBackgroundColor,
      ),
      drawer: CustomDrawer(),
      body: Stack(
        children: [
          Background(),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: _spacing,
                ),
                Text('Localização / Unidade'),
                Container(
                  child: DropdownButton<Unidade>(
                      value: unidade,
                      // isExpanded: true,
                      onChanged: (Unidade novoItemSelecionado) {
                        setState(() {
                          unidade = novoItemSelecionado;
                        });
                      },
                      items: unidades.map((Unidade dropDownStringItem) {
                        return DropdownMenuItem<Unidade>(
                          value: dropDownStringItem,
                          child: Text(dropDownStringItem.unidade),
                        );
                      }).toList()),
                ),
                SizedBox(
                  height: _spacing,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: kPrimaryBackgroundColor,
                      borderRadius: BorderRadius.circular(20)),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: TextFormField(
                    cursorColor: kPrimaryColor,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: 'Sintomas',
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(
                  height: _spacing + 10,
                ),
                Text('Especialidade Desejada'),
                Container(
                  child: DropdownButton<Setor>(
                      value: especialidade,
                      dropdownColor: kPrimaryBackgroundColor,
                      // isExpanded: true,
                      onChanged: (Setor novoItemSelecionado) {
                        setState(() {
                          especialidade = novoItemSelecionado;
                        });
                      },
                      items: setores.map((Setor dropDownStringItem) {
                        return DropdownMenuItem<Setor>(
                          value: dropDownStringItem,
                          child: Text(dropDownStringItem.setor),
                        );
                      }).toList()),
                ),
                SizedBox(
                  height: _spacing,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: kPrimaryBackgroundColor,
                      borderRadius: BorderRadius.circular(20)),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: TextFormField(
                    cursorColor: kPrimaryColor,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: 'Observação',
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                    ),
                  ),
                ),
                Spacer(
                    // flex: 6,
                    ),
                Center(
                  child: SizedBox(
                    width: double.infinity,
                    height: getProportionateScreenHeight(50),
                    child: FlatButton(
                        color: kPrimaryColor,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ChatScreen(),
                              ));
                        },
                        child: Text(
                          'Começar Chat',
                          style: TextStyle(
                              fontSize: getProportionateScreenWidth(15),
                              color: Colors.white),
                        )),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
