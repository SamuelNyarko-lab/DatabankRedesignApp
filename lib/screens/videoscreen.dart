// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class VideoScreen extends StatefulWidget {
  const VideoScreen({Key? key}) : super(key: key);

  @override
  State<VideoScreen> createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: AutoSizeText(''),
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.reply),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: deviceWidth,
          child: Column(children: [
            Container(
              width: deviceWidth,
              height: deviceHeight - 200,
              decoration: BoxDecoration(
                  color: Colors.black,
                  image: DecorationImage(
                    image: AssetImage('assets/images/a.jpg'),
                    fit: BoxFit.fill,
                  )),
              child: Center(
                child: SizedBox(
                  //  color: Colors.white,
                  width: 60,
                  height: 60,
                  child: MaterialButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext buildcontext) =>
                                  VideoScreen()));
                    },
                    color: Color.fromRGBO(58, 59, 60, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.play_arrow,
                        size: 45,
                        color: Colors.green[600],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              width: deviceWidth,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '0:41',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.green[600],
                    ),
                  ),
                  Expanded(
                    child: Slider(
                      value: 1.5,
                      max: 5,
                      min: 0,
                      onChanged: (value) async {},
                      inactiveColor: Colors.white,
                    ),
                  ),
                  Text(
                    '2:00',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.green[600],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              width: deviceWidth,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.favorite,
                      size: 20,
                      color: Color.fromRGBO(212, 223, 185, 1),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.fast_rewind_sharp,
                      size: 35,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.fast_forward_sharp,
                      size: 35,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.share,
                      size: 20,
                      color: Color.fromRGBO(212, 223, 185, 1),
                    ),
                  )
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
