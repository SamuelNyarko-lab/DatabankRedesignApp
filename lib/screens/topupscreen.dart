// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class TopUpScreen extends StatefulWidget {
  const TopUpScreen({Key? key}) : super(key: key);

  @override
  State<TopUpScreen> createState() => _TopUpScreenState();
}

class _TopUpScreenState extends State<TopUpScreen> {
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
        // actions: [
        //   IconButton(
        //     onPressed: () {},
        //     icon: Icon(Icons.search),
        //     color: Color.fromRGBO(187, 187, 187, 1),
        //   )
        // ],
        title: AutoSizeText('Summary'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AutoSizeText(
                'Top Up',
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
              SizedBox(
                height: 15,
              ),
              AutoSizeText(
                'Choose fund',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
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
                  height: 90,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Card(
                      elevation: 3,
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: SizedBox(
                          height: 40,
                          width: deviceWidth - 80,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: 40,
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
                                  SizedBox(
                                    width: 10,
                                  ),
                                  AutoSizeText(
                                    'Mfund',
                                    style: TextStyle(
                                      fontSize: 19,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.keyboard_arrow_down,
                                  size: 30,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              AutoSizeText(
                'Client ref',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
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
                  height: 90,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Card(
                      elevation: 3,
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: SizedBox(
                          height: 40,
                          width: deviceWidth - 80,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AutoSizeText(
                                'Select ref',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.keyboard_arrow_down,
                                  size: 30,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              // Container(
              //   padding: EdgeInsets.only(bottom: 16.0),
              //   child: Container(
              //     // padding: EdgeInsets.only(top: 10.0),
              //     width: deviceWidth - 20,
              //     child: DropdownButtonFormField<String>(
              //         decoration: InputDecoration(),
              //         validator: (value) =>
              //             value == null ? 'Select Course' : null,
              //         // value: shopId,
              //         isDense: true,
              //         elevation: 0,
              //         onChanged: (newValue) {
              //           setState(() {});
              //         },
              //         icon: const Icon(
              //           Icons.arrow_downward,
              //           color: Color.fromRGBO(75, 65, 185, 1),
              //         ),
              //         iconSize: 25,
              //         style: TextStyle(
              //           color: Colors.black,
              //           fontWeight: FontWeight.bold,
              //           fontSize: 16,
              //         ),
              //         hint: AutoSizeText('Select Course'),
              //         items: []),
              //   ),
              // )

              SizedBox(
                height: 15,
              ),
              AutoSizeText(
                'Topup amount',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
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
                  height: 90,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Card(
                      elevation: 3,
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: SizedBox(
                          height: 40,
                          width: deviceWidth - 80,
                          child: TextField(
                              decoration: InputDecoration(
                            hintText: 'Select ref',
                            enabledBorder: OutlineInputBorder(
                              //borderRadius: BorderRadius.circular(25.0),
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                //width: 3.0,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              //borderRadius: BorderRadius.circular(25.0),
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                //width: 3.0,
                              ),
                            ),
                          )),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              AutoSizeText(
                'Payment method',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),

              Column(
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 70,
                    width: deviceWidth,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                      ),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Icon(Icons.circle_outlined),
                        ),
                        Container(
                          width: 70,
                          height: 60,
                          padding: const EdgeInsets.all(5),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image(
                              image: AssetImage('assets/images/gtbank.jpg'),
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5.0),
                          child: Column(children: [
                            AutoSizeText(
                              'GTBank Account',
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            AutoSizeText(
                              '**********7650012',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                              ),
                            ),
                          ]),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 70,
                    width: deviceWidth,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.blue,
                      ),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Icon(
                            Icons.check_circle,
                            color: Colors.blue,
                          ),
                        ),
                        Container(
                          width: 70,
                          height: 60,
                          padding: const EdgeInsets.all(5),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image(
                              image: AssetImage('assets/images/momo.jpg'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5.0),
                          child: Column(children: [
                            AutoSizeText(
                              'Mobile Money',
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            AutoSizeText(
                              '0548550553',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                              ),
                            ),
                          ]),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 70,
                    width: deviceWidth,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                      ),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Icon(Icons.circle_outlined),
                        ),
                        Container(
                          width: 70,
                          height: 30,
                          padding: const EdgeInsets.all(5),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image(
                              image: AssetImage('assets/images/mastercard.png'),
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5.0),
                          child: Column(children: [
                            AutoSizeText(
                              'Visa / Mastercard',
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            AutoSizeText(
                              '**********7650012',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                              ),
                            ),
                          ]),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Container(
                  width: 180,
                  alignment: Alignment.center,
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  TopUpScreen()));
                    },
                    height: 50,
                    minWidth: 45,
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    color: Color.fromRGBO(3, 157, 27, 1),
                    child: AutoSizeText(
                      'Confirm Payment',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
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
