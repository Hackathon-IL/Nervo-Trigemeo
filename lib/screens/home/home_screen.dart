import 'package:comunik_app/constants.dart';
import 'package:comunik_app/drawer/drawer.dart';
import 'package:comunik_app/widgets/background.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Início',
          style: TextStyle(color: kPrimaryColor),
        ),
        backgroundColor: kSecondaryBackgroundColor,
        elevation: 0,
      ),
      drawer: CustomDrawer(),
      body: Stack(
        children: [
          Background(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text('Históricos Últimos Atendimentos'),
                ),
                SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      buildCardHistorico('N° 782927362',
                          'Unidade Atendimento 1', 'Escpecialidade', true),
                      buildCardHistorico('N° 782927362',
                          'Unidade Atendimento 2', 'Escpecialidade', false),
                      buildCardHistorico('N° 782927362',
                          'Unidade Atendimento 3', 'Escpecialidade', true),
                      buildCardHistorico('N° 782927362',
                          'Unidade Atendimento 4', 'Escpecialidade', true),
                      SizedBox(
                        width: 10,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      buildAtendimentos('Atendimentos Realizados', '12', true),
                      buildAtendimentos(
                          'Atendimentos em Andamento', '8', false),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container buildAtendimentos(text, value, resolvido) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(40)),
      height: 150,
      width: 150,
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  color: kPrimaryColor),
              child: Text(
                text,
                textAlign: TextAlign.center,
                style: TextStyle(color: kPrimaryBackgroundColor),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                  color: kPrimaryBackgroundColor),
              child: Column(
                children: [
                  Text(
                    value,
                    style: TextStyle(fontSize: 30),
                  ),
                  Text(
                    resolvido ? 'Resolvidos' : 'Em Andamento',
                    style: TextStyle(
                        fontSize: 16,
                        color: resolvido
                            ? Colors.green[700].withOpacity(.6)
                            : Colors.orange[700].withOpacity(.6)),
                  ),
                  Spacer(),
                  Text(
                    'Mais Informações',
                  ),
                  Spacer(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container buildCardHistorico(protocolo, unidade, especialidade, resolvido) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: kPrimaryBackgroundColor,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20), bottomLeft: Radius.circular(20))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                Icons.chat_outlined,
                color: kPrimaryColor,
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                protocolo,
                style: TextStyle(color: kPrimaryColor),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Icon(
                Icons.location_on_outlined,
                color: kPrimaryColor.withOpacity(0.6),
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                unidade,
                style: TextStyle(color: kPrimaryColor.withOpacity(0.6)),
              )
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.person_outline,
                color: kPrimaryColor.withOpacity(0.6),
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                especialidade,
                style: TextStyle(color: kPrimaryColor.withOpacity(0.6)),
              )
            ],
          ),
          Row(
            children: [
              Icon(
                resolvido
                    ? Icons.check_circle_outline
                    : Icons.radio_button_unchecked_outlined,
                color: resolvido
                    ? Colors.green[700].withOpacity(0.6)
                    : Colors.orange[700].withOpacity(.6),
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                resolvido ? 'Resolvido' : "Em Progresso",
                style: TextStyle(
                  color: resolvido
                      ? Colors.green[700].withOpacity(0.6)
                      : Colors.orange[700].withOpacity(.6),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
