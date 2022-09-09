// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, unused_local_variable, library_private_types_in_public_api, non_constant_identifier_names, avoid_unnecessary_containers

import 'package:auto_size_text/auto_size_text.dart';
import 'package:databankapp/screens/audioplayscreen.dart';
import 'package:databankapp/screens/briefcase.dart';
import 'package:databankapp/screens/resourcedetailscreen.dart';
import 'package:databankapp/screens/videoscreen.dart';
import 'package:flutter/material.dart';

class ResourceScreen extends StatefulWidget {
  const ResourceScreen({Key? key}) : super(key: key);

  @override
  _ResourceScreenState createState() => _ResourceScreenState();
}

class _ResourceScreenState extends State<ResourceScreen> {
  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;
    //  print(deviceWidth);
    LinearProgressIndicator linearProgressIndicator;
    linearProgressIndicator = LinearProgressIndicator(
      color: Color.fromRGBO(10, 153, 24, 1),
      value: 5,
    );
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
        // title: AutoSizeText('Services'),
      ),
      body: Container(
        width: deviceWidth,
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    width: 140,
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    Briefcase()));
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
                            'My briefcase',
                            style: TextStyle(
                              color: Color.fromRGBO(10, 153, 24, 1),
                            ),
                          ),
                          Icon(
                            Icons.shopping_bag,
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
            Expanded(
              child: DefaultTabController(
                length: 4,
                initialIndex: 0,
                child: Column(
                  children: [
                    TabBar(
                      indicatorWeight: 2,
                      isScrollable: true,
                      indicatorColor: Colors.lightGreen,
                      labelColor: Colors.black,
                      unselectedLabelStyle: TextStyle(
                          color: Colors.grey[500],
                          fontWeight: FontWeight.normal),
                      labelStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                      tabs: [
                        Tab(
                          text: 'Articles',
                        ),
                        Tab(
                          text: 'Fund Fact',
                        ),
                        Tab(
                          text: 'Audio',
                        ),
                        Tab(
                          text: 'Video',
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: TabBarView(children: [
                          //Articles Tab
                          SingleChildScrollView(
                            child: Container(
                              width: deviceWidth,
                              child: Column(
                                children: [
                                  articleList(
                                      deviceWidth,
                                      'Who'
                                          "'s watching your money in 2021?",
                                      "assets/images/c.jpg",
                                      '4'),
                                  articleList(
                                      deviceWidth,
                                      "What happens when you withdraw?",
                                      "assets/images/b.jpg",
                                      '5'),
                                  articleList(
                                      deviceWidth,
                                      "Want to start your own business?",
                                      "assets/images/a.jpg",
                                      '3'),
                                  articleList(
                                      deviceWidth,
                                      "Want to start your own business?",
                                      "assets/images/a.jpg",
                                      '3'),
                                  articleList(
                                      deviceWidth,
                                      "Want to start your own business?",
                                      "assets/images/a.jpg",
                                      '3'),
                                ],
                              ),
                            ),
                          ),

                          //Fundfact Tab
                          SingleChildScrollView(
                            child: Column(
                              children: [
                                Container(
                                  //   height: 250,
                                  //  width: deviceWidth - 130,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 250,
                                        width: deviceWidth - 20,
                                        child: ListView(
                                          scrollDirection: Axis.horizontal,
                                          // reverse: true,
                                          children: [
                                            SizedBox(
                                              width: deviceWidth - 100,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    child: Image(
                                                      image: AssetImage(
                                                        'assets/images/c.jpg',
                                                      ),
                                                      width: deviceWidth - 100,
                                                      height: 150,
                                                      fit: BoxFit.fill,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: deviceWidth - 100,
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Container(
                                                          width:
                                                              deviceWidth - 150,
                                                          child: AutoSizeText(
                                                            'Secure the future of your children',
                                                            style: TextStyle(
                                                              fontSize: 17,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                            ),
                                                            softWrap: true,
                                                          ),
                                                        ),
                                                        Container(
                                                          padding:
                                                              EdgeInsets.all(0),
                                                          child: IconButton(
                                                            padding:
                                                                EdgeInsets.zero,
                                                            onPressed: () {},
                                                            icon: Icon(
                                                              Icons
                                                                  .bookmark_border_outlined,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  AutoSizeText(
                                                    'Edifund fact sheet',
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                      color: Colors.grey,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              width: 15,
                                            ),
                                            SizedBox(
                                              width: deviceWidth - 100,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    child: Image(
                                                      image: AssetImage(
                                                        'assets/images/b.jpg',
                                                      ),
                                                      width: deviceWidth - 100,
                                                      height: 150,
                                                      fit: BoxFit.fill,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: deviceWidth - 100,
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Container(
                                                          width:
                                                              deviceWidth - 150,
                                                          child: AutoSizeText(
                                                            'All you need to know about Mfund',
                                                            style: TextStyle(
                                                              fontSize: 17,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                            ),
                                                            softWrap: true,
                                                          ),
                                                        ),
                                                        Container(
                                                          padding:
                                                              EdgeInsets.all(0),
                                                          child: IconButton(
                                                            padding:
                                                                EdgeInsets.zero,
                                                            onPressed: () {},
                                                            icon: Icon(
                                                              Icons
                                                                  .bookmark_border_outlined,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  AutoSizeText(
                                                    'Mfund fact sheet',
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                      color: Colors.grey,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    AutoSizeText(
                                      'Fund reads',
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
                                          color:
                                              Color.fromRGBO(159, 184, 88, 1),
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                articleList(
                                    deviceWidth,
                                    'All you need to know about Mfund',
                                    "assets/images/b.jpg",
                                    '4'),
                              ],
                            ),
                          ),

                          //Audio Tab
                          SingleChildScrollView(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                AudioList(
                                  deviceWidth,
                                  context,
                                  'How to spot investment fraud?',
                                  '1:54',
                                  '3:09',
                                  0.75,
                                ),
                                AudioList(
                                  deviceWidth,
                                  context,
                                  'Time with the Databank CEO',
                                  '0:41',
                                  '2:00',
                                  0.45,
                                ),
                                AudioList(
                                  deviceWidth,
                                  context,
                                  'Why business should invest with Databank?',
                                  '0:00',
                                  '2:43',
                                  0,
                                ),
                                AudioList(
                                  deviceWidth,
                                  context,
                                  'How to invest wise to save wise?',
                                  '1:54',
                                  '3:00',
                                  0.3,
                                ),
                                AudioList(
                                  deviceWidth,
                                  context,
                                  'Mutual funds - All you need to know',
                                  '0:00',
                                  '2:23',
                                  0,
                                ),
                              ],
                            ),
                          ),

                          //Video Tab
                          SingleChildScrollView(
                            child: Column(children: [
                              videoList(
                                  deviceWidth,
                                  'All you need to know about Mfund',
                                  "assets/images/b.jpg",
                                  '4'),
                              videoList(
                                  deviceWidth,
                                  'Why business should invest with Databank?',
                                  "assets/images/a.jpg",
                                  '4'),
                              videoList(
                                  deviceWidth,
                                  'What happens when you withdraw?',
                                  "assets/images/c.jpg",
                                  '4'),
                              videoList(
                                  deviceWidth,
                                  'I should have listened to Madam Kate',
                                  "assets/images/b.jpg",
                                  '4'),
                              videoList(
                                  deviceWidth,
                                  'Databank time with CEO interactive session',
                                  "assets/images/a.jpg",
                                  '4'),
                            ]),
                          )
                        ]),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding AudioList(double deviceWidth, BuildContext context, String maintext,
      String starttime, String endtime, double durationvalue) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Container(
        width: deviceWidth - 10,
        padding: const EdgeInsets.symmetric(horizontal: 5),
        // color: Colors.lightBlue,
        height: 100,
        child: MaterialButton(
          elevation: 50,
          padding: EdgeInsets.zero,
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext buildcontext) => AudioPlayScreen()));
          },
          child: Container(
            // width: deviceWidth - 10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 80,
                  height: 110,
                  padding: EdgeInsets.only(bottom: 10),
                  child: Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: MaterialButton(
                        height: 80,
                        minWidth: 80,
                        elevation: 50,
                        color: Colors.lightGreen[40],
                        onPressed: () {},
                        child: Icon(
                          Icons.play_arrow,
                          size: 60,
                          color: Color.fromRGBO(10, 153, 24, 1),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: deviceWidth - 120,
                  height: 120,
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: deviceWidth - 180,
                            height: 40,
                            child: AutoSizeText(
                              maintext,
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                          ),
                          Container(
                            width: 30,
                            height: 1,
                            padding: EdgeInsets.all(0),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.bookmark_border_outlined,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: deviceWidth - 125,
                        child: Column(
                          children: [
                            LinearProgressIndicator(
                              value: durationvalue,
                              minHeight: 4,
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                AutoSizeText(
                                  starttime,
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Color.fromRGBO(10, 153, 24, 1),
                                  ),
                                ),
                                AutoSizeText(
                                  endtime,
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Color.fromRGBO(10, 153, 24, 1),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Padding articleList(
      double deviceWidth, String text, String imagelink, String time) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Container(
        // width: deviceWidth,

        // color: Colors.lightBlue,
        height: 110,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            MaterialButton(
              elevation: 50,
              padding: EdgeInsets.zero,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext buildcontext) =>
                            ResourceDetailScreen()));
              },
              child: Container(
                width: deviceWidth - 70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image(
                        image: AssetImage(imagelink),
                        width: 100,
                        height: 125,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Container(
                      width: deviceWidth - 180,
                      padding: const EdgeInsets.fromLTRB(10, 10, 0, 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AutoSizeText(
                            text,
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                AutoSizeText(
                                  'General article',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(170, 201, 171, 1),
                                  ),
                                ),
                                AutoSizeText(
                                  '$time mins read',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(0),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.bookmark_border_outlined,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding videoList(
      double deviceWidth, String text, String imagelink, String time) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Container(
        height: 100,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            MaterialButton(
              elevation: 50,
              padding: EdgeInsets.zero,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext buildcontext) => VideoScreen()));
              },
              child: Container(
                width: deviceWidth - 70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        width: 90,
                        height: 90,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(imagelink),
                              fit: BoxFit.fill,
                              opacity: 0.6,
                              colorFilter: ColorFilter.mode(
                                Color.fromRGBO(10, 153, 24, 1),
                                BlendMode.color,
                              )),
                        ),
                        child: Center(
                          child: Container(
                            //  color: Colors.white,
                            width: 45,
                            height: 45,
                            child: MaterialButton(
                              padding: EdgeInsets.zero,
                              height: 45,
                              minWidth: 45,
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (BuildContext buildcontext) =>
                                            VideoScreen()));
                              },
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.play_arrow,
                                  size: 35,
                                  color: Color.fromRGBO(217, 227, 49, 1),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: deviceWidth - 160,
                      padding: const EdgeInsets.fromLTRB(10, 10, 0, 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          AutoSizeText(
                            text,
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: AutoSizeText(
                              '$time mins read',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(0),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.bookmark_border_outlined,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
