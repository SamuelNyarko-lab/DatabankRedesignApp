// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, library_private_types_in_public_api, unused_local_variable

import 'package:auto_size_text/auto_size_text.dart';
import 'package:databankapp/screens/summarystatementscreen.dart';
import 'package:databankapp/screens/topupscreen.dart';
import 'package:flutter/material.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({Key? key}) : super(key: key);

  @override
  _UserScreenState createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Container(
            padding: const EdgeInsets.all(8.0),
            height: 50,
            width: 60,
            child: MaterialButton(
              padding: EdgeInsets.all(5),
              minWidth: 50,
              height: 50,
              elevation: 40,
              onPressed: () {},
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              child: Icon(
                Icons.settings,
                color: Colors.blueGrey,
              ),
            ),
          )
        ],
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.filter_list_sharp,
            color: Colors.blueGrey,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: deviceWidth / 4,
                  height: deviceWidth / 4,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image(
                      image: AssetImage('assets/images/sam.jpg'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  alignment: Alignment.center,
                  width: deviceWidth,
                  child: AutoSizeText(
                    'Samuel Kwabena Nyarko',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  alignment: Alignment.center,
                  width: deviceWidth,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        // width: deviceWidth / 2,
                        child: AutoSizeText(
                          'Member since, ',
                          softWrap: true,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      SizedBox(
                        child: AutoSizeText(
                          '2009',
                          softWrap: true,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 100,
                  width: deviceWidth / 1.5,
                  child: Card(
                    color: Color.fromARGB(255, 242, 254, 242),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          AutoSizeText(
                            'Current Balance',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          AutoSizeText(
                            "\$" '2,499,563',
                            style: TextStyle(
                              letterSpacing: 1,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => TopUpScreen()));
                  },
                  child: userProfileCard(
                    deviceWidth,
                    Icons.add,
                    'Top up',
                    Colors.blue,
                    Color.fromRGBO(225, 236, 255, 1),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                SummaryStatementScreen()));
                  },
                  child: userProfileCard(
                    deviceWidth,
                    Icons.bar_chart,
                    'Summary Statement',
                    Color.fromRGBO(236, 225, 128, 1),
                    Color.fromRGBO(253, 252, 229, 1),
                  ),
                ),
                userProfileCard(
                  deviceWidth,
                  Icons.lock_sharp,
                  'Manage account',
                  Color.fromRGBO(207, 141, 194, 1),
                  Color.fromRGBO(247, 224, 240, 1),
                ),
                userProfileCard(
                  deviceWidth,
                  Icons.location_on,
                  'Contact us',
                  Color.fromRGBO(6, 141, 19, 1),
                  Color.fromRGBO(202, 223, 204, 1),
                ),
                userProfileCard(
                  deviceWidth,
                  Icons.contact_page_rounded,
                  'Terms & Conditions',
                  Color.fromRGBO(208, 185, 152, 1),
                  Color.fromRGBO(249, 242, 230, 1),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  SizedBox userProfileCard(double deviceWidth, IconData icon, String text,
      Color iconcolor, Color containercolor) {
    return SizedBox(
      height: 80,
      width: deviceWidth,
      child: Card(
        //color: Color.fromARGB(255, 242, 254, 242),
        child: GestureDetector(
          onTap: () {
            // Navigator.push(
            //     context,
            //     MaterialPageRoute(
            //         builder: (BuildContext context) =>
            //             SummaryStatementScreen()));
          },
          child: Center(
            child: Padding(
              padding: EdgeInsets.only(left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                        height: 50,
                        width: 50,
                        color: containercolor,
                        child: Icon(
                          icon,
                          color: iconcolor,
                        )),
                  ),
                  SizedBox(
                    width: deviceWidth - 120,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: AutoSizeText(
                            text,
                            style: TextStyle(
                              letterSpacing: 1,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            size: 15,
                            Icons.arrow_forward_ios_outlined,
                            color: Colors.grey,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
