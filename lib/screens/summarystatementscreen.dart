// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:auto_size_text/auto_size_text.dart';
import 'package:databankapp/screens/topupscreen.dart';
import 'package:flutter/material.dart';

class SummaryStatementScreen extends StatefulWidget {
  const SummaryStatementScreen({Key? key}) : super(key: key);

  @override
  State<SummaryStatementScreen> createState() => _SummaryStatementScreenState();
}

class _SummaryStatementScreenState extends State<SummaryStatementScreen> {
  bool visibleNotif = true;

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    setState(() {
      visibleNotif = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    // double deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
            color: Color.fromRGBO(187, 187, 187, 1),
          )
        ],
        title: AutoSizeText('Summary'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: deviceWidth,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: 100,
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      TopUpScreen()));
                        },
                        height: 35,
                        minWidth: 45,
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)),
                        color: Colors.white,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AutoSizeText(
                              'Top Up',
                              style: TextStyle(
                                color: Color.fromRGBO(10, 153, 24, 1),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Icon(
                              Icons.add,
                              size: 20,
                              color: Color.fromRGBO(10, 153, 24, 1),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              AutoSizeText(
                'Summary Statement',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Visibility(
                visible: visibleNotif,
                child: SizedBox(
                  width: deviceWidth,
                  height: 100,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Card(
                      color: Color.fromRGBO(154, 236, 138, 1),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(children: [
                          SizedBox(
                            height: 40,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(Icons.security),
                                SizedBox(
                                  width: 10,
                                ),
                                SizedBox(
                                  width: deviceWidth - 110,
                                  child: AutoSizeText(
                                    'Do not share your account details with anyone, keep it secure',
                                    style: TextStyle(
                                      fontSize: 19,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 30,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                GestureDetector(
                                  onTap: (() {
                                    setState(() {
                                      visibleNotif = false;
                                    });
                                  }),
                                  child: Container(
                                    alignment: Alignment.centerRight,
                                    width: deviceWidth - 90,
                                    height: 50,
                                    child: AutoSizeText(
                                      'Got it!',
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ]),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: SizedBox(
                  width: deviceWidth - 40,
                  height: 130,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Card(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 40,
                                width: deviceWidth - 80,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    AutoSizeText(
                                      'My balance',
                                      style: TextStyle(
                                        fontSize: 19,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Row(
                                      children: [
                                        AutoSizeText(
                                          'This week',
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 19,
                                          ),
                                        ),
                                        DropdownMenuItem(
                                          child: Icon(
                                            Icons.keyboard_arrow_down,
                                            size: 28,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              SizedBox(
                                height: 40,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: deviceWidth - 100,
                                      child: AutoSizeText(
                                        '₵ 7,0512.19',
                                        style: TextStyle(
                                          color: Color.fromRGBO(9, 154, 25, 1),
                                          fontSize: 30.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ]),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              AutoSizeText(
                'Balance',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 140,
                    width: (deviceWidth - 45) / 2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Card(
                      elevation: 3,
                      color: Color.fromRGBO(9, 154, 25, 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(17),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              alignment: Alignment.center,
                              width: 40,
                              height: 20,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: AutoSizeText(
                                'GHC',
                                style: TextStyle(
                                  color: Color.fromRGBO(129, 120, 176, 1),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            AutoSizeText(
                              'Account balance',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            AutoSizeText(
                              '₵ 7,012.19',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 27.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 140,
                    width: (deviceWidth - 45) / 2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Card(
                      elevation: 3,
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(17),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  width: 40,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(242, 235, 255, 1),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: AutoSizeText(
                                    'GHC',
                                    style: TextStyle(
                                      color: Color.fromRGBO(129, 120, 176, 1),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            AutoSizeText(
                              'Unit balance',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 17.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            AutoSizeText(
                              '₵ 6,432.12',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 27.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 140,
                    width: (deviceWidth - 45) / 2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Card(
                      elevation: 3,
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(17),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  width: 40,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(242, 235, 255, 1),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: AutoSizeText(
                                    'GHC',
                                    style: TextStyle(
                                      color: Color.fromRGBO(129, 120, 176, 1),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            AutoSizeText(
                              'Total purchase',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 17.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            AutoSizeText(
                              '₵ 5,640.00',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 27.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 140,
                    width: (deviceWidth - 45) / 2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Card(
                      elevation: 3,
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(17),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  width: 40,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(242, 235, 255, 1),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: AutoSizeText(
                                    'GHC',
                                    style: TextStyle(
                                      color: Color.fromRGBO(129, 120, 176, 1),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            AutoSizeText(
                              'Total sales',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 17.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            AutoSizeText(
                              '₵ 0.00',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 27.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              AutoSizeText(
                'Account',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: SizedBox(
                  width: deviceWidth - 40,
                  height: 130,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Card(
                      elevation: 3,
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 30,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: deviceWidth - 100,
                                      child: AutoSizeText(
                                        'Fund Type',
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 17.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 40,
                                width: deviceWidth - 80,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    AutoSizeText(
                                      'Mutual fund',
                                      style: TextStyle(
                                        fontSize: 19,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    SizedBox(
                                      width: 50,
                                      height: 10,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image(
                                          image:
                                              AssetImage('assets/images/a.jpg'),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                            ]),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
