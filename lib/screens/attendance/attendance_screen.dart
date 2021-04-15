import 'package:comunik_app/constants.dart';
import 'package:comunik_app/drawer/drawer.dart';
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

  String unidade = 'Unidade 1';
  String especialidade = 'Especialidade 1';
  bool isForYou = false;

  List<String> unidades = [
    'Unidade 1',
    'Unidade 2',
    'Unidade 3',
    'Unidade 4',
  ];

  List<String> especialidades = [
    'Especialidade 1',
    'Especialidade 2',
    'Especialidade 3',
    'Especialidade 4',
  ];

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
                  child: DropdownButton<String>(
                      value: unidade,
                      // isExpanded: true,
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
                  child: DropdownButton<String>(
                      value: especialidade,
                      dropdownColor: kPrimaryBackgroundColor,
                      // isExpanded: true,
                      onChanged: (String novoItemSelecionado) {
                        setState(() {
                          especialidade = novoItemSelecionado;
                        });
                      },
                      items: especialidades.map((String dropDownStringItem) {
                        return DropdownMenuItem<String>(
                          value: dropDownStringItem,
                          child: Text(dropDownStringItem),
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
                SizedBox(
                  height: _spacing,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('É para voce ou não?'),
                    Switch(
                        value: isForYou,
                        activeColor: kPrimaryColor,
                        onChanged: (value) {
                          setState(() {
                            isForYou = value;
                          });
                        })
                  ],
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
