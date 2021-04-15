import 'package:comunik_app/constants.dart';
import 'package:comunik_app/drawer/drawer.dart';
import 'package:comunik_app/widgets/background.dart';
import 'package:flutter/material.dart';

class FollowUpScreen extends StatefulWidget {
  @override
  _FollowUpScreenState createState() => _FollowUpScreenState();
}

class _FollowUpScreenState extends State<FollowUpScreen> {
  double height = 200;
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Acompanhamentos',
          style: TextStyle(color: kPrimaryColor),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: kSecondaryBackgroundColor,
      ),
      drawer: CustomDrawer(),
      body: Stack(
        children: [
          Background(),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                buildAcompanhamento(0, 'N° 782927362', true, '05/04/2000'),
                buildAcompanhamento(1, 'N° 782927362', true, '05/04/2000'),
                buildAcompanhamento(2, 'N° 782927362', false, '05/04/2000'),
                buildAcompanhamento(3, 'N° 782927362', false, '05/04/2000'),
                buildAcompanhamento(4, 'N° 782927362', false, '05/04/2000'),
                buildAcompanhamento(5, 'N° 782927362', false, '05/04/2000'),
                buildAcompanhamento(6, 'N° 782927362', false, '05/04/2000'),
                buildAcompanhamento(7, 'N° 782927362', false, '05/04/2000'),
                buildAcompanhamento(8, 'N° 782927362', false, '05/04/2000'),
                buildAcompanhamento(9, 'N° 782927362', false, '05/04/2000'),
              ],
            ),
          )
        ],
      ),
    );
  }

  InkWell buildAcompanhamento(index, text, resolvido, data) {
    return InkWell(
      onTap: () {
        currentIndex = index;
        setState(() {
          height == 200 ? height = 50 : height = 200;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 1000),
        margin: EdgeInsets.only(left: 20, bottom: 20, right: 20),
        height: currentIndex == index ? height : 50,
        padding: EdgeInsets.all(10),
        width: double.infinity,
        decoration: BoxDecoration(
          color: kPrimaryBackgroundColor,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
                color: kPrimaryColor.withOpacity(0.4),
                offset: Offset(5, 5),
                blurRadius: 5)
          ],
        ),
        child: currentIndex != index
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 12,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: resolvido
                            ? Colors.green[700].withOpacity(0.6)
                            : Colors.orange[700].withOpacity(.6)),
                  ),
                  Text(
                    text,
                    style: TextStyle(color: kPrimaryColor),
                  ),
                  Text('-'),
                  Text(data),
                  Icon(
                    Icons.arrow_drop_down,
                    color: kPrimaryColor,
                  )
                ],
              )
            : SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: 12,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: resolvido
                                  ? Colors.green[700].withOpacity(0.6)
                                  : Colors.orange[700].withOpacity(.6)),
                        ),
                        Text(
                          text,
                          style: TextStyle(color: kPrimaryColor),
                        ),
                        Text('-'),
                        Text(data),
                        Icon(
                          Icons.arrow_drop_down,
                          color: kPrimaryColor,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          resolvido
                              ? Icons.check_circle_outline
                              : Icons.radio_button_unchecked_outlined,
                          color: resolvido
                              ? Colors.green[700].withOpacity(0.6)
                              : Colors.orange[700].withOpacity(.6),
                          size: 16,
                        ),
                        SizedBox(
                          width: 10,
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
                    )
                  ],
                ),
              ),
      ),
    );
  }
}
