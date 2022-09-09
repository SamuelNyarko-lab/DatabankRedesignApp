// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, library_private_types_in_public_api

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
          color: Color.fromRGBO(187, 187, 187, 1),
        ),
        actions: [
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.search),
                color: Color.fromRGBO(187, 187, 187, 1),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.notifications),
                color: Color.fromRGBO(255, 209, 133, 1),
              ),
            ],
          )
        ],
        title: AutoSizeText('Home'),
      ),
      // backgroundColor: Colors.white,
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 7,
            ),
            Container(
              height: 140,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
              ),
              child: Card(
                color: Color.fromRGBO(9, 154, 25, 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      AutoSizeText(
                        'Your balance',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AutoSizeText(
                            '₵ 7,0512.19',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          MaterialButton(
                            color: Colors.white,
                            height: 50,
                            minWidth: 50,
                            shape: const CircleBorder(),
                            onPressed: () {},
                            child: Icon(Icons.add),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 7,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AutoSizeText(
                      'Fund prices',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: AutoSizeText(
                        'View all',
                        style: TextStyle(
                          fontSize: 17.0,
                          color: Color.fromRGBO(159, 184, 88, 1),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 7,
                ),
                DefaultTabController(
                  initialIndex: 0,
                  length: 3,
                  child: Column(
                    children: [
                      TabBar(
                        indicatorWeight: 1,
                        indicatorColor: Colors.white,
                        labelColor: Colors.black,
                        unselectedLabelStyle: TextStyle(
                            color: Colors.grey[500],
                            fontWeight: FontWeight.normal),
                        labelStyle: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                        tabs: [
                          Tab(
                            text: 'Mutual fund',
                          ),
                          Tab(
                            text: 'Balance fund',
                          ),
                          Tab(
                            text: 'Epack',
                          ),
                        ],
                      ),
                      Container(
                        height: 340, //height of TabBarView
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            border: Border(
                                top: BorderSide(
                                    color: Colors.grey, width: 0.5))),
                        child: TabBarView(children: [
                          Column(
                            children: [
                              SizedBox(
                                height: 30,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    height: 140,
                                    width: MediaQuery.of(context).size.width /
                                        2.35,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: Card(
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(17),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Container(
                                              height: 30,
                                              width: 30,
                                              decoration: BoxDecoration(
                                                color: Colors.grey[400],
                                                shape: BoxShape.circle,
                                              ),
                                              child: Icon(
                                                Icons.messenger_sharp,
                                                color: Colors.white,
                                                size: 17,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 15,
                                            ),
                                            AutoSizeText(
                                              'Bid price',
                                              style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 15.0,
                                                fontWeight: FontWeight.normal,
                                              ),
                                            ),
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                AutoSizeText(
                                                  '1.6448',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                TextButton(
                                                  onPressed: () {},
                                                  style: TextButton.styleFrom(
                                                    primary: Color.fromRGBO(
                                                        242, 240, 251, 1),
                                                  ),
                                                  child: AutoSizeText(
                                                    'GHC',
                                                    style: TextStyle(
                                                      color: Color.fromRGBO(
                                                          129, 120, 176, 1),
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 140,
                                    width: MediaQuery.of(context).size.width /
                                        2.35,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: Card(
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(17),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Container(
                                              height: 30,
                                              width: 30,
                                              decoration: BoxDecoration(
                                                color: Colors.grey[400],
                                                shape: BoxShape.circle,
                                              ),
                                              child: Icon(
                                                Icons.messenger_sharp,
                                                color: Colors.white,
                                                size: 17,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 15,
                                            ),
                                            AutoSizeText(
                                              'Offer price',
                                              style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 15.0,
                                                fontWeight: FontWeight.normal,
                                              ),
                                            ),
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                AutoSizeText(
                                                  '1.6612',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                TextButton(
                                                  onPressed: () {},
                                                  style: TextButton.styleFrom(
                                                    primary: Color.fromRGBO(
                                                        242, 240, 251, 1),
                                                  ),
                                                  child: AutoSizeText(
                                                    'GHC',
                                                    style: TextStyle(
                                                      color: Color.fromRGBO(
                                                          129, 120, 176, 1),
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                )
                                              ],
                                            )
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    height: 140,
                                    width: MediaQuery.of(context).size.width /
                                        2.35,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: Card(
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(17),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Container(
                                              height: 30,
                                              width: 30,
                                              decoration: BoxDecoration(
                                                color: Colors.grey[400],
                                                shape: BoxShape.circle,
                                              ),
                                              child: Icon(
                                                Icons.messenger_sharp,
                                                color: Colors.white,
                                                size: 17,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 15,
                                            ),
                                            AutoSizeText(
                                              'YTD',
                                              style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 15.0,
                                                fontWeight: FontWeight.normal,
                                              ),
                                            ),
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                AutoSizeText(
                                                  '18.00',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                TextButton(
                                                  onPressed: () {},
                                                  style: TextButton.styleFrom(
                                                    primary: Color.fromRGBO(
                                                        242, 240, 251, 1),
                                                  ),
                                                  child: AutoSizeText(
                                                    'GHC',
                                                    style: TextStyle(
                                                      color: Color.fromRGBO(
                                                          129, 120, 176, 1),
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 140,
                                    width: MediaQuery.of(context).size.width /
                                        2.35,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: Card(
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(17),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Container(
                                              height: 30,
                                              width: 30,
                                              decoration: BoxDecoration(
                                                color: Colors.grey[400],
                                                shape: BoxShape.circle,
                                              ),
                                              child: Icon(
                                                Icons.messenger_sharp,
                                                color: Colors.white,
                                                size: 17,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 15,
                                            ),
                                            AutoSizeText(
                                              'Year-on-Year',
                                              style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 15.0,
                                                fontWeight: FontWeight.normal,
                                              ),
                                            ),
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                AutoSizeText(
                                                  '18.12',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                TextButton(
                                                  onPressed: () {},
                                                  style: TextButton.styleFrom(
                                                    primary: Color.fromRGBO(
                                                        242, 240, 251, 1),
                                                  ),
                                                  child: AutoSizeText(
                                                    'GHC',
                                                    style: TextStyle(
                                                      color: Color.fromRGBO(
                                                          129, 120, 176, 1),
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Center(
                            child: Text('Display Tab 2',
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.bold)),
                          ),
                          Center(
                            child: Text('Display Tab 3',
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.bold)),
                          ),
                        ]),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AutoSizeText(
                  'Products / Services',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: AutoSizeText(
                    'View all',
                    style: TextStyle(
                      fontSize: 17.0,
                      color: Color.fromRGBO(159, 184, 88, 1),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            // Column(
            //   crossAxisAlignment: CrossAxisAlignment.start,
            //   children: [
            //     Container(
            //       height: 200,
            //       width: MediaQuery.of(context).size.width,
            //       child: Card(
            //         elevation: 100,
            //         shape: RoundedRectangleBorder(
            //           borderRadius: BorderRadius.circular(20),
            //         ),
            //         color: Colors.white,
            //         child: Padding(
            //           padding: const EdgeInsets.all(15.0),
            //           child: Row(
            //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //             children: [
            //               Container(
            //                 padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
            //                 width: 130,
            //                 height: 160,
            //                 child: Image.asset(
            //                   'assets/images/a.jpg',
            //                   fit: BoxFit.fill,
            //                 ),
            //               ),
            //               Container(
            //                 width: (MediaQuery.of(context).size.width) - 130,
            //                 child: Column(
            //                   crossAxisAlignment: CrossAxisAlignment.start,
            //                   children: [
            //                     Row(
            //                       mainAxisAlignment: MainAxisAlignment.end,
            //                       children: [
            //                         Container(
            //                           padding: EdgeInsets.zero,
            //                           alignment: Alignment.center,
            //                           height: 20,
            //                           width: 75,
            //                           decoration: BoxDecoration(
            //                               color: Colors.pink[50],
            //                               borderRadius:
            //                                   BorderRadius.circular(10)),
            //                           child: AutoSizeText(
            //                             'Product',
            //                             style: TextStyle(
            //                               color: Colors.purple,
            //                               fontSize: 12.0,
            //                               //fontWeight: FontWeight.bold,
            //                             ),
            //                           ),
            //                         ),
            //                       ],
            //                     ),
            //                     Container(
            //                       width:
            //                           (MediaQuery.of(context).size.width) / 3,
            //                       child: Column(
            //                         children: [
            //                           AutoSizeText(
            //                             'Mfund',
            //                             style: TextStyle(
            //                               color: Colors.black,
            //                               fontSize: 20.0,
            //                               fontWeight: FontWeight.bold,
            //                             ),
            //                           ),
            //                           SizedBox(
            //                             height: 10,
            //                           ),
            //                           AutoSizeText(
            //                             'How to be financially prepared for an emergency?',
            //                             style: TextStyle(
            //                               color: Colors.black,
            //                               fontSize: 15.0,
            //                             ),
            //                           ),
            //                         ],
            //                       ),
            //                     ),
            //                     Row(
            //                       mainAxisAlignment: MainAxisAlignment.end,
            //                       children: [
            //                         MaterialButton(
            //                           onPressed: () {},
            //                           child: Row(
            //                             children: [
            //                               AutoSizeText(
            //                                 'Learn more',
            //                                 style: TextStyle(
            //                                     color: Color.fromRGBO(
            //                                         53, 108, 126, 1),
            //                                     fontSize: 16.0,
            //                                     fontWeight: FontWeight.bold),
            //                               ),
            //                               Icon(
            //                                 Icons.chevron_right,
            //                                 color: Color.fromRGBO(
            //                                     120, 175, 122, 1),
            //                               )
            //                             ],
            //                           ),
            //                         ),
            //                       ],
            //                     )
            //                   ],
            //                 ),
            //               ),
            //             ],
            //           ),
            //         ),
            //       ),
            //     ),
            //   ],
            // ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 230,
                  width: MediaQuery.of(context).size.width,
                  child: Card(
                    elevation: 100,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                            width: 130,
                            height: 140,
                            child: Image.asset(
                              'assets/images/a.jpg',
                              fit: BoxFit.fill,
                            ),
                          ),
                          Container(
                            width: (MediaQuery.of(context).size.width) - 200,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.zero,
                                      alignment: Alignment.center,
                                      height: 20,
                                      width: 75,
                                      decoration: BoxDecoration(
                                          color: Colors.pink[50],
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: AutoSizeText(
                                        'Service',
                                        style: TextStyle(
                                          color: Colors.purple,
                                          fontSize: 12.0,
                                          //fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                                AutoSizeText(
                                  'Mfund',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                AutoSizeText(
                                  'How to be financially prepared for an emergency?',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15.5,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    MaterialButton(
                                      onPressed: () {},
                                      child: Row(
                                        children: [
                                          AutoSizeText(
                                            'Learn more',
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    53, 108, 126, 1),
                                                fontSize: 16.0,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Icon(
                                            Icons.chevron_right,
                                            color: Color.fromRGBO(
                                                120, 175, 122, 1),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 230,
                  width: MediaQuery.of(context).size.width,
                  child: Card(
                    elevation: 100,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                            width: 130,
                            height: 140,
                            child: Image.asset(
                              'assets/images/b.jpg',
                              fit: BoxFit.fill,
                            ),
                          ),
                          Container(
                            width: (MediaQuery.of(context).size.width) - 200,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.zero,
                                      alignment: Alignment.center,
                                      height: 20,
                                      width: 75,
                                      decoration: BoxDecoration(
                                          color: Colors.pink[50],
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: AutoSizeText(
                                        'Service',
                                        style: TextStyle(
                                          color: Colors.purple,
                                          fontSize: 12.0,
                                          //fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                AutoSizeText(
                                  'Institutional fund management',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                                AutoSizeText(
                                  'How to be financially prepared for an emergency?',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15.5,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    MaterialButton(
                                      onPressed: () {},
                                      child: Row(
                                        children: [
                                          AutoSizeText(
                                            'Learn more',
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    53, 108, 126, 1),
                                                fontSize: 16.0,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Icon(
                                            Icons.chevron_right,
                                            color: Color.fromRGBO(
                                                120, 175, 122, 1),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 210,
                  width: MediaQuery.of(context).size.width,
                  child: Card(
                    elevation: 100,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                            width: 130,
                            height: 140,
                            child: Image.asset(
                              'assets/images/c.jpg',
                              fit: BoxFit.fill,
                            ),
                          ),
                          Container(
                            width: (MediaQuery.of(context).size.width) - 200,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.zero,
                                      alignment: Alignment.center,
                                      height: 20,
                                      width: 75,
                                      decoration: BoxDecoration(
                                          color: Colors.pink[50],
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: AutoSizeText(
                                        'Product',
                                        style: TextStyle(
                                          color: Colors.purple,
                                          fontSize: 12.0,
                                          //fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                AutoSizeText(
                                  'Epack',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                                AutoSizeText(
                                  'Wanting to start your own business? Invest in Epack now',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15.5,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    MaterialButton(
                                      onPressed: () {},
                                      child: Row(
                                        children: [
                                          AutoSizeText(
                                            'Learn more',
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    53, 108, 126, 1),
                                                fontSize: 16.0,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Icon(
                                            Icons.chevron_right,
                                            color: Color.fromRGBO(
                                                120, 175, 122, 1),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      )),
    );
  }
}
