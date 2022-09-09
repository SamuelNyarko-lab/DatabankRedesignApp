// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:auto_size_text/auto_size_text.dart';
import 'package:databankapp/screens/audioplayscreen.dart';
import 'package:databankapp/screens/resourcedetailscreen.dart';
import 'package:databankapp/screens/videoscreen.dart';
import 'package:flutter/material.dart';

class Briefcase extends StatefulWidget {
  const Briefcase({Key? key}) : super(key: key);

  @override
  State<Briefcase> createState() => _BriefcaseState();
}

class _BriefcaseState extends State<Briefcase> {
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
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
            color: Color.fromRGBO(187, 187, 187, 1),
          )
        ],
        title: AutoSizeText(
          'My briefcase',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SizedBox(
        width: deviceWidth,
        //  height: deviceHeight,
        child: Column(children: [
          Expanded(
            child: DefaultTabController(
              length: 2,
              initialIndex: 0,
              child: Column(
                children: [
                  TabBar(
                    indicatorWeight: 2,
                    isScrollable: true,
                    indicatorColor: Colors.lightGreen,
                    labelColor: Colors.black,
                    unselectedLabelStyle: TextStyle(
                        color: Colors.grey[500], fontWeight: FontWeight.normal),
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                    tabs: [
                      Tab(
                        text: 'Saved(15)',
                      ),
                      Tab(
                        text: 'Recently viewed',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: TabBarView(children: [
                        //Saved Tab
                        SingleChildScrollView(
                          child: SizedBox(
                            width: deviceWidth,
                            child: Column(
                              children: [
                                videoList(
                                    deviceWidth,
                                    'Databank time with CEO interactive session',
                                    "assets/images/a.jpg",
                                    '4'),
                                articleList(
                                    deviceWidth,
                                    "Want to start your own business?",
                                    "assets/images/a.jpg",
                                    '3'),
                                articleList(
                                    deviceWidth,
                                    'All you need to know about Mfund',
                                    "assets/images/b.jpg",
                                    '4'),
                                audioList(
                                  deviceWidth,
                                  context,
                                  'Time with the Databank CEO',
                                  '0:41',
                                  '2:00',
                                  0.45,
                                ),
                                videoList(
                                    deviceWidth,
                                    'How to know which investment fund is for you?',
                                    "assets/images/a.jpg",
                                    '4'),
                                audioList(
                                  deviceWidth,
                                  context,
                                  'Why business should invest with Databank?',
                                  '0:00',
                                  '2:43',
                                  0,
                                ),
                                articleList(
                                    deviceWidth,
                                    "Want to start your own business?",
                                    "assets/images/a.jpg",
                                    '3'),
                                SizedBox(
                                  height: 5,
                                ),
                              ],
                            ),
                          ),
                        ),

                        //Recently Viewed Tab
                        SingleChildScrollView(
                          child: SizedBox(
                            width: deviceWidth,
                            child: Column(
                              children: [
                                articleList(
                                    deviceWidth,
                                    "Want to start your own business?",
                                    "assets/images/a.jpg",
                                    '3'),
                                videoList(
                                    deviceWidth,
                                    'Databank time with CEO interactive session',
                                    "assets/images/a.jpg",
                                    '4'),
                                articleList(
                                    deviceWidth,
                                    'All you need to know about Mfund',
                                    "assets/images/b.jpg",
                                    '4'),
                                videoList(
                                    deviceWidth,
                                    'How to know which investment fund is for you?',
                                    "assets/images/a.jpg",
                                    '4'),
                                audioList(
                                  deviceWidth,
                                  context,
                                  'Time with the Databank CEO',
                                  '0:41',
                                  '2:00',
                                  0.45,
                                ),
                                audioList(
                                  deviceWidth,
                                  context,
                                  'Why business should invest with Databank?',
                                  '0:00',
                                  '2:43',
                                  0,
                                ),
                                articleList(
                                    deviceWidth,
                                    "Want to start your own business?",
                                    "assets/images/a.jpg",
                                    '3'),
                                SizedBox(
                                  height: 5,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ]),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }

  Padding audioList(double deviceWidth, BuildContext context, String maintext,
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 100,
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
                width: deviceWidth - 140,
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
    );
  }

  Padding articleList(
      double deviceWidth, String text, String imagelink, String time) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: SizedBox(
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
              child: SizedBox(
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
      child: SizedBox(
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
              child: SizedBox(
                width: deviceWidth - 70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        width: 100,
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
                          child: SizedBox(
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
                      width: deviceWidth - 180,
                      padding: const EdgeInsets.fromLTRB(10, 10, 0, 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AutoSizeText(
                            text,
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
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
