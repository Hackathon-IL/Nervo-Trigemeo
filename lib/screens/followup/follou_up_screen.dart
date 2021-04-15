import 'package:comunik_app/constants.dart';
import 'package:comunik_app/drawer/drawer.dart';
import 'package:comunik_app/widgets/background.dart';
import 'package:flutter/material.dart';

class FollowUpScreen extends StatefulWidget {
  @override
  _FollowUpScreenState createState() => _FollowUpScreenState();
}

class _FollowUpScreenState extends State<FollowUpScreen> {
  double height = 50;
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
                buildAcompanhamento(9, 'N° 942378952', false, '05/04/2021'),
                buildAcompanhamento(8, 'N° 523489252', false, '01/04/2021'),
                buildAcompanhamento(7, 'N° 482348902', true, '26/03/2021'),
                buildAcompanhamento(6, 'N° 145782378', true, '20/03/2021'),
                buildAcompanhamento(5, 'N° 217842384', true, '18/03/2021'),
                buildAcompanhamento(4, 'N° 312839423', true, '12/03/2021'),
                buildAcompanhamento(3, 'N° 891672381', true, '12/03/2021'),
                buildAcompanhamento(0, 'N° 782927362', true, '05/03/2021'),
                buildAcompanhamento(1, 'N° 679812349', true, '07/03/2021'),
                buildAcompanhamento(2, 'N° 012367234', true, '10/03/2021'),
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
          height == 50 ? height = 290 : height = 50;
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
          child: Row(
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
          )),
    );
  }
}
