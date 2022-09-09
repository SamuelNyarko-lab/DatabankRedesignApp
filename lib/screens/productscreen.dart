// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, library_private_types_in_public_api

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  _ProductScreenState createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
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
        title: AutoSizeText('Services'),
      ),
      // backgroundColor: Colors.blueGrey,
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: (MediaQuery.of(context).size.width) - 10,
                height: (MediaQuery.of(context).size.height) / 4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                ),
                child: ListView(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                        child: Container(
                          width: (MediaQuery.of(context).size.width) - 10,
                          padding: EdgeInsets.only(right: 15),
                          child: Image(
                            image: AssetImage("assets/images/a.jpg"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                        child: Container(
                          width: (MediaQuery.of(context).size.width) - 10,
                          padding: EdgeInsets.only(right: 15),
                          child: Image(
                            image: AssetImage("assets/images/a.jpg"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ]),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: DefaultTabController(
                  length: 2,
                  initialIndex: 0,
                  child: Column(
                    children: [
                      TabBar(
                        indicatorWeight: 2,
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
                            text: 'Products',
                          ),
                          Tab(
                            text: 'Services',
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 700,
                        width: MediaQuery.of(context).size.width,
                        child: TabBarView(children: [
                          //Products Tab
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 200,
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          padding: const EdgeInsets.all(1.0),
                                          width: 130,
                                          height: 180,
                                          child: Image.asset(
                                            'assets/images/a.jpg',
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                        Container(
                                          width: (MediaQuery.of(context)
                                                  .size
                                                  .width) -
                                              200,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              AutoSizeText(
                                                'Mfund',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 20.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        0, 15, 0, 5),
                                                child: AutoSizeText(
                                                  'How to be financially prepared for an emergency?',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 15.0,
                                                  ),
                                                ),
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  MaterialButton(
                                                    onPressed: () {},
                                                    child: Row(
                                                      children: [
                                                        AutoSizeText(
                                                          'Learn more',
                                                          style: TextStyle(
                                                              color: Color
                                                                  .fromRGBO(
                                                                      53,
                                                                      108,
                                                                      126,
                                                                      1),
                                                              fontSize: 16.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
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
                              Container(
                                height: 200,
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          padding: const EdgeInsets.all(1.0),
                                          width: 130,
                                          height: 180,
                                          child: Image.asset(
                                            'assets/images/b.jpg',
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                        Container(
                                          width: (MediaQuery.of(context)
                                                  .size
                                                  .width) -
                                              200,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              AutoSizeText(
                                                'Epack',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 20.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        0, 15, 0, 5),
                                                child: AutoSizeText(
                                                  'Wanting to start your own business> Invest in epack now',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 15.0,
                                                  ),
                                                ),
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  MaterialButton(
                                                    onPressed: () {},
                                                    child: Row(
                                                      children: [
                                                        AutoSizeText(
                                                          'Learn more',
                                                          style: TextStyle(
                                                              color: Color
                                                                  .fromRGBO(
                                                                      53,
                                                                      108,
                                                                      126,
                                                                      1),
                                                              fontSize: 16.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
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
                              Container(
                                height: 200,
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          padding: const EdgeInsets.all(1.0),
                                          width: 130,
                                          height: 180,
                                          child: Image.asset(
                                            'assets/images/c.jpg',
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                        Container(
                                          width: (MediaQuery.of(context)
                                                  .size
                                                  .width) -
                                              200,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              AutoSizeText(
                                                'Arkfund',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 20.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        0, 10, 0, 5),
                                                child: AutoSizeText(
                                                  'Databank Ark Fund [ArkFund] is Ghana first and only ethical mutual fund',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 15.0,
                                                  ),
                                                ),
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  MaterialButton(
                                                    onPressed: () {},
                                                    child: Row(
                                                      children: [
                                                        AutoSizeText(
                                                          'Learn more',
                                                          style: TextStyle(
                                                              color: Color
                                                                  .fromRGBO(
                                                                      53,
                                                                      108,
                                                                      126,
                                                                      1),
                                                              fontSize: 16.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
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

                          //Services Tab
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 200,
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          padding: const EdgeInsets.all(1.0),
                                          width: 130,
                                          height: 180,
                                          child: Image.asset(
                                            'assets/images/a.jpg',
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                        Container(
                                          width: (MediaQuery.of(context)
                                                  .size
                                                  .width) -
                                              200,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              AutoSizeText(
                                                'Mfund',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 20.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        0, 15, 0, 5),
                                                child: AutoSizeText(
                                                  'How to be financially prepared for an emergency?',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 15.0,
                                                  ),
                                                ),
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  MaterialButton(
                                                    onPressed: () {},
                                                    child: Row(
                                                      children: [
                                                        AutoSizeText(
                                                          'Learn more',
                                                          style: TextStyle(
                                                              color: Color
                                                                  .fromRGBO(
                                                                      53,
                                                                      108,
                                                                      126,
                                                                      1),
                                                              fontSize: 16.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
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
                              Container(
                                height: 200,
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          padding: const EdgeInsets.all(1.0),
                                          width: 130,
                                          height: 180,
                                          child: Image.asset(
                                            'assets/images/b.jpg',
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                        Container(
                                          width: (MediaQuery.of(context)
                                                  .size
                                                  .width) -
                                              200,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              AutoSizeText(
                                                'Epack',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 20.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        0, 15, 0, 5),
                                                child: AutoSizeText(
                                                  'Wanting to start your own business> Invest in epack now',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 15.0,
                                                  ),
                                                ),
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  MaterialButton(
                                                    onPressed: () {},
                                                    child: Row(
                                                      children: [
                                                        AutoSizeText(
                                                          'Learn more',
                                                          style: TextStyle(
                                                              color: Color
                                                                  .fromRGBO(
                                                                      53,
                                                                      108,
                                                                      126,
                                                                      1),
                                                              fontSize: 16.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
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
                              Container(
                                height: 200,
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          padding: const EdgeInsets.all(1.0),
                                          width: 130,
                                          height: 180,
                                          child: Image.asset(
                                            'assets/images/c.jpg',
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                        Container(
                                          width: (MediaQuery.of(context)
                                                  .size
                                                  .width) -
                                              200,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              AutoSizeText(
                                                'Arkfund',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 20.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        0, 10, 0, 5),
                                                child: AutoSizeText(
                                                  'Databank Ark Fund [ArkFund] is Ghana first and only ethical mutual fund',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 15.0,
                                                  ),
                                                ),
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  MaterialButton(
                                                    onPressed: () {},
                                                    child: Row(
                                                      children: [
                                                        AutoSizeText(
                                                          'Learn more',
                                                          style: TextStyle(
                                                              color: Color
                                                                  .fromRGBO(
                                                                      53,
                                                                      108,
                                                                      126,
                                                                      1),
                                                              fontSize: 16.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
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
                        ]),
                      ),
                    ],
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
